-- Tạo cơ sở dữ liệu
CREATE DATABASE SubjectAndClassManagement;
GO

USE SubjectAndClassManagement;
GO

-- Tạo bảng Rooms
CREATE TABLE Rooms (
    room_id NVARCHAR(10) PRIMARY KEY,
    room_capacity INT CHECK (room_capacity >= 40),
    building_name NVARCHAR(255)
);

-- Tạo bảng Subjects
CREATE TABLE Subjects (
    subject_id NVARCHAR(10) PRIMARY KEY,
    subject_name NVARCHAR(255) NOT NULL,
    subject_description NTEXT,
    credit INT
);

-- Tạo bảng Teachers
CREATE TABLE Teachers (
    teacher_id NVARCHAR(10) PRIMARY KEY,
    teacher_name NVARCHAR(255) NOT NULL,
    email NVARCHAR(255),
    phone_number NVARCHAR(20)
);

-- Tạo bảng Students
CREATE TABLE Students (
    student_id NVARCHAR(10) PRIMARY KEY,
    student_name NVARCHAR(255) NOT NULL,
    email NVARCHAR(255),
    academic_year INT,
    phone_number NVARCHAR(20)
);

-- Tạo bảng Classes
CREATE TABLE Classes (
    class_id NVARCHAR(10) PRIMARY KEY,
    subject_id NVARCHAR(10) FOREIGN KEY REFERENCES Subjects(subject_id),
    room_id NVARCHAR(10) FOREIGN KEY REFERENCES Rooms(room_id),
    teacher_id NVARCHAR(10) FOREIGN KEY REFERENCES Teachers(teacher_id),
    number_of_members INT,
    max_number_of_members INT,
    days_of_week NVARCHAR(10),
    first_period INT CHECK (first_period >= 1 AND first_period <= 10),
    class_period INT CHECK (class_period >= 1 AND class_period <= 10),
    start_date DATE,
    end_date DATE,
    semester INT CHECK (semester >= 1 AND semester <= 2),
    academic_year NVARCHAR(20),
    CONSTRAINT CK_StartEndDate CHECK (start_date < end_date),
    CONSTRAINT CK_Members CHECK (max_number_of_members > 40 AND max_number_of_members < 200 AND number_of_members <= max_number_of_members)
);

-- Tạo Trigger tự động cập nhật academic_year cho Classes
GO
CREATE TRIGGER trg_AutoGenerateAcademicYear
ON Classes
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Classes
    SET academic_year = 
        CASE 
            WHEN inserted.semester = 1 THEN 
                CAST(YEAR(inserted.start_date) AS NVARCHAR(4)) + ' - ' + CAST(YEAR(inserted.start_date) + 1 AS NVARCHAR(4))
            WHEN inserted.semester = 2 THEN 
                CAST(YEAR(inserted.start_date) - 1 AS NVARCHAR(4)) + ' - ' + CAST(YEAR(inserted.start_date) AS NVARCHAR(4))
        END
    FROM Classes
    INNER JOIN inserted ON Classes.class_id = inserted.class_id;
END;

-- Tạo bảng RegistrationSessions
GO
CREATE TABLE RegistrationSessions (
    session_id NVARCHAR(40) PRIMARY KEY,
    start_date DATETIME,
    end_date DATETIME,
    semester INT,
    academic_year NVARCHAR(20),
    status NVARCHAR(20) CHECK (status IN ('open', 'closed')),
    CONSTRAINT CK_SessionStartEndDate CHECK (start_date <= end_date)
);

-- Tạo hàm kiểm tra số lượng phiên đăng ký đang mở
GO
CREATE FUNCTION dbo.CheckOpenSessionCount()
RETURNS INT
AS
BEGIN
    DECLARE @OpenSessionCount INT;
    SELECT @OpenSessionCount = COUNT(*)
    FROM RegistrationSessions
    WHERE status = 'open';

    RETURN @OpenSessionCount;
END;

-- Thêm ràng buộc chỉ cho phép tối đa một phiên đăng ký mở
GO
ALTER TABLE RegistrationSessions
ADD CONSTRAINT CK_MaxOneOpenSession
CHECK (dbo.CheckOpenSessionCount() <= 1);

-- Tạo bảng StudentRegistrations
GO
CREATE TABLE StudentRegistrations (
    registration_id NVARCHAR(40) PRIMARY KEY,
    student_id NVARCHAR(10) FOREIGN KEY REFERENCES Students(student_id),
    class_id NVARCHAR(10) FOREIGN KEY REFERENCES Classes(class_id),
    registration_date DATE,
    status NVARCHAR(20),
    reason NTEXT
);

-- Tạo Trigger tự động cập nhật số lượng thành viên trong Classes
GO
CREATE TRIGGER trg_UpdateNumberOfMembers
ON StudentRegistrations
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE Classes
    SET number_of_members = (SELECT COUNT(*) FROM StudentRegistrations WHERE class_id = Classes.class_id)
    WHERE class_id IN (SELECT class_id FROM inserted UNION SELECT class_id FROM deleted);
END;

-- Tạo bảng StudentResults
GO
CREATE TABLE StudentResults (
    student_results_id NVARCHAR(40) PRIMARY KEY,
    registration_id NVARCHAR(40) FOREIGN KEY REFERENCES StudentRegistrations(registration_id),
    grade FLOAT
);

-- Tạo bảng ResultColumns
GO
CREATE TABLE ResultColumns (
    resultcolumn_id INT IDENTITY(1,1) PRIMARY KEY,
    student_results_id NVARCHAR(40) FOREIGN KEY REFERENCES StudentResults(student_results_id),
    column_name NVARCHAR(30),
    grade FLOAT,
    weight FLOAT,
    CONSTRAINT CK_Grade CHECK (grade >= 0 AND grade <= 10),
    CONSTRAINT CK_Weight CHECK (weight > 0 AND weight <= 1)
);

-- Trigger tạo StudentResults khi StudentRegistration được thêm mới
GO
CREATE TRIGGER trg_CreateStudentResult
ON StudentRegistrations
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO StudentResults (student_results_id, registration_id, grade)
    SELECT NEWID(), inserted.registration_id, NULL
    FROM inserted;
END;

-- Trigger xóa StudentResults khi StudentRegistration bị xóa
GO
CREATE TRIGGER trg_DeleteStudentResult
ON StudentRegistrations
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM StudentResults
    WHERE registration_id IN (SELECT deleted.registration_id FROM deleted);
END;

-- Trigger tự động cập nhật điểm tổng kết trong StudentResults
GO
CREATE TRIGGER trg_AutoSetStudentResultGrade
ON ResultColumns
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE StudentResults
    SET grade = (
        SELECT SUM(rc.grade * rc.weight)
        FROM ResultColumns rc
        WHERE rc.student_results_id = StudentResults.student_results_id
    )
    FROM StudentResults
    INNER JOIN inserted ON StudentResults.student_results_id = inserted.student_results_id;
END;

-- Tạo bảng TuitionPayments
GO
CREATE TABLE TuitionPayments (
    payment_id NVARCHAR(10) PRIMARY KEY,
    student_id NVARCHAR(10) FOREIGN KEY REFERENCES Students(student_id),
    total_credits INT,
    tuition_fee MONEY,
    amount_to_pay MONEY,
    amount_paid MONEY,
    payment_time DATETIME,
    excess_money MONEY,
    debt MONEY
);

-- Tạo bảng Fee_Subjects
GO
CREATE TABLE Fee_Subjects (
    payment_id NVARCHAR(10) FOREIGN KEY REFERENCES TuitionPayments(payment_id),
    subject_id NVARCHAR(10) FOREIGN KEY REFERENCES Subjects(subject_id)
);

-- Tạo bảng Users
GO
CREATE TABLE Users (
    username NVARCHAR(255) NOT NULL PRIMARY KEY,
    password NVARCHAR(255) NOT NULL,
    user_type NVARCHAR(20) CHECK (user_type IN ('admin', 'student', 'teacher')),
    student_id NVARCHAR(10) NULL FOREIGN KEY REFERENCES Students(student_id),
    teacher_id NVARCHAR(10) NULL FOREIGN KEY REFERENCES Teachers(teacher_id),
    status NVARCHAR(10) CHECK (status IN ('active', 'locked'))
);

-- Tạo bảng Profiles
GO
CREATE TABLE Profiles (
    profile_id INT IDENTITY(1,1) PRIMARY KEY,
    username NVARCHAR(255) FOREIGN KEY REFERENCES Users(username),
    date_of_birth DATE,
    gender NVARCHAR(10),
    address NVARCHAR(255),
    citizen_id_card NVARCHAR(12)
);

-- Trigger tạo User và Profile cho Student
GO
CREATE TRIGGER trg_CreateUserAndProfile_Student
ON Students
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @userId NVARCHAR(10);
    DECLARE @password NVARCHAR(255);

    SELECT @userId = student_id
    FROM inserted;

    SET @password = CAST(FLOOR(RAND() * 1000000) AS NVARCHAR(255));

    INSERT INTO Users (username, password, user_type, student_id, status)
    VALUES (@userId, @password, 'student', @userId, 'active');

    INSERT INTO Profiles (username)
    VALUES (@userId);
END;

-- Trigger tạo User và Profile cho Teacher
GO
CREATE TRIGGER trg_CreateUserAndProfile_Teacher
ON Teachers
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @userId NVARCHAR(10);
    DECLARE @password NVARCHAR(255);

    SELECT @userId = teacher_id
    FROM inserted;

    SET @password = CAST(FLOOR(RAND() * 1000000) AS NVARCHAR(255));

    INSERT INTO Users (username, password, user_type, teacher_id, status)
    VALUES (@userId, @password, 'teacher', @userId, 'active');

    INSERT INTO Profiles (username)
    VALUES (@userId);
END;

-- Tạo bảng Notifications
GO
CREATE TABLE Notifications (
    notify_id INT IDENTITY(1,1) PRIMARY KEY,
    notify_header NVARCHAR(50),
    notify_day DATE,
    notify_description NTEXT
);