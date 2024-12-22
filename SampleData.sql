USE SubjectAndClassManagement;
GO


-- Thêm dữ liệu mẫu cho bảng Rooms
INSERT INTO Rooms (room_id, room_capacity, building_name) VALUES
(N'A101', 60, N'Nhà A'),
(N'A102', 50, N'Nhà A'),
(N'A201', 70, N'Nhà A'),
(N'A202', 45, N'Nhà A'),
(N'B101', 80, N'Nhà B'),
(N'B102', 55, N'Nhà B'),
(N'B201', 65, N'Nhà B'),
(N'C101', 75, N'Nhà C'),
(N'C102', 50, N'Nhà C'),
(N'C201', 60, N'Nhà C');
GO

-- Thêm dữ liệu mẫu cho bảng Subjects
INSERT INTO Subjects (subject_id, subject_name, subject_description, credit) VALUES
(N'IT001', N'Nhập môn lập trình', N'Giới thiệu các khái niệm lập trình cơ bản, cấu trúc điều khiển, hàm, mảng, con trỏ, kiểu dữ liệu', 3),
(N'IT002', N'Cơ sở dữ liệu', N'Giới thiệu mô hình quan hệ, đại số quan hệ, SQL, thiết kế cơ sở dữ liệu, ràng buộc toàn vẹn', 3),
(N'IT003', N'Lập trình web', N'Thiết kế và phát triển website với HTML, CSS, JavaScript, PHP, và MySQL', 4),
(N'MA001', N'Giải tích 1', N'Giới hạn, đạo hàm, tích phân, ứng dụng của đạo hàm và tích phân', 4),
(N'PH001', N'Vật lý đại cương 1', N'Cơ học chất điểm, cơ học vật rắn, dao động, sóng cơ', 4),
(N'IT004', N'Cấu trúc dữ liệu và giải thuật', N'Các cấu trúc dữ liệu cơ bản, phân tích và thiết kế giải thuật', 4),
(N'IT005', N'Lập trình hướng đối tượng', N'Lập trình hướng đối tượng với Java, kế thừa, đa hình, trừu tượng', 3),
(N'IT006', N'Mạng máy tính', N'Mô hình OSI, TCP/IP, các giao thức mạng, định tuyến, an ninh mạng', 3),
(N'MA002', N'Đại số tuyến tính', N'Ma trận, định thức, hệ phương trình tuyến tính, không gian vector, ánh xạ tuyến tính', 4),
(N'PH002', N'Vật lý đại cương 2', N'Điện trường, từ trường, cảm ứng điện từ, quang học', 4);
GO

-- Thêm dữ liệu mẫu cho bảng Teachers
INSERT INTO Teachers (teacher_id, teacher_name, email, phone_number) VALUES
(N'GV001', N'Nguyễn Hữu Anh', N'anhnh@uit.edu.vn', N'0912345670'),
(N'GV002', N'Trần Thị Mai Hương', N'huongttm@uit.edu.vn', N'0903456781'),
(N'GV003', N'Lê Văn Khoa', N'khoalv@uit.edu.vn', N'0987654320'),
(N'GV004', N'Phạm Thị Lan Anh', N'anhptl@uit.edu.vn', N'0976543219'),
(N'GV005', N'Hoàng Văn Nam', N'namhv@uit.edu.vn', N'0965432108'),
(N'GV006', N'Võ Thị Thu Hà', N'havtt@uit.edu.vn', N'0934567897'),
(N'GV007', N'Đỗ Văn Đức', N'ducdv@uit.edu.vn', N'0945678906'),
(N'GV008', N'Trần Văn Thành', N'thanhtv@uit.edu.vn', N'0923456785'),
(N'GV009', N'Nguyễn Thị Bích Ngọc', N'ngocntb@uit.edu.vn', N'0914567894'),
(N'GV010', N'Lê Thị Kim Ngân', N'nganltk@uit.edu.vn', N'0986754323');
GO

-- Thêm dữ liệu mẫu cho bảng Students
INSERT INTO Students (student_id, student_name, email, academic_year, phone_number) VALUES
(N'SV001', N'Nguyễn Văn An', N'21520001@gm.uit.edu.vn', 2021, N'0812345670'),
(N'SV002', N'Trần Thị Bình', N'21520002@gm.uit.edu.vn', 2021, N'0823456781'),
(N'SV003', N'Lê Văn Chung', N'22520003@gm.uit.edu.vn', 2022, N'0834567892'),
(N'SV004', N'Phạm Thị Dung', N'22520004@gm.uit.edu.vn', 2022, N'0845678903'),
(N'SV005', N'Hoàng Văn Duy', N'22520005@gm.uit.edu.vn', 2022, N'0856789014'),
(N'SV006', N'Võ Thị Giang', N'23520006@gm.uit.edu.vn', 2023, N'0867890125'),
(N'SV007', N'Đỗ Văn Hải', N'23520007@gm.uit.edu.vn', 2023, N'0878901236'),
(N'SV008', N'Trần Văn Hoàng', N'23520008@gm.uit.edu.vn', 2023, N'0889012347'),
(N'SV009', N'Nguyễn Thị Huệ', N'23520009@gm.uit.edu.vn', 2023, N'0890123458'),
(N'SV010', N'Lê Thị Khánh', N'23520010@gm.uit.edu.vn', 2023, N'0801234569');
GO

-- Thêm dữ liệu mẫu cho admin
INSERT INTO Users VALUES('admin', 'admin', 'admin', NULL, NULL, 'active');
GO

-- Thêm dữ liệu mẫu cho bảng Classes
INSERT INTO Classes (class_id, subject_id, room_id, teacher_id, number_of_members, max_number_of_members, days_of_week, first_period, class_period, start_date, end_date, semester) VALUES
(N'IT001-PM1', N'IT001', N'A101', N'GV001', 0, 60, N'Mon', 1, 3, N'2024-02-19', N'2024-06-09', 1),
(N'IT001-PM2', N'IT001', N'A102', N'GV002', 0, 50, N'Tue', 4, 3, N'2024-02-20', N'2024-06-04', 1),
(N'IT002-CD1', N'IT002', N'B101', N'GV003', 0, 70, N'Wed', 7, 4, N'2024-02-21', N'2024-06-05', 1),
(N'MA001-GT1', N'MA001', N'A201', N'GV004', 0, 45, N'Thu', 1, 4, N'2023-09-07', N'2023-12-21', 2),
(N'PH001-VL1', N'PH001', N'B102', N'GV005', 0, 70, N'Fri', 5, 4, N'2023-09-08', N'2023-12-22', 2),
(N'IT004-CD1', N'IT004', N'C101', N'GV006', 0, 50, N'Mon', 2, 3, N'2024-02-19', N'2024-06-03', 1),
(N'IT005-OP1', N'IT005', N'C102', N'GV007', 0, 60, N'Tue', 6, 3, N'2024-02-20', N'2024-06-04', 1),
(N'IT006-MT1', N'IT006', N'C201', N'GV008', 0, 55, N'Wed', 9, 2, N'2024-02-21', N'2024-05-29', 1),
(N'MA002-ĐS1', N'MA002', N'A202', N'GV009', 0, 45, N'Thu', 2, 4, N'2023-09-07', N'2023-12-21', 2),
(N'PH002-VL2', N'PH002', N'B201', N'GV010', 0, 70, N'Fri', 6, 4, N'2023-09-08', N'2023-12-22', 2);
GO

-- Thêm dữ liệu mẫu cho bảng RegistrationSessions
INSERT INTO RegistrationSessions (session_id, start_date, end_date, semester, academic_year, status) VALUES
(N'RegistrationSessions001', N'2023-08-01 08:00:00', N'2023-08-15 17:00:00', 2, N'2023 - 2024', N'closed'),
(N'RegistrationSessions002', N'2024-01-01 08:00:00', N'2024-01-15 17:00:00', 1, N'2023 - 2024', N'closed'),
(N'RegistrationSessions003', N'2024-07-25 08:00:00', N'2024-08-10 17:00:00', 2, N'2024 - 2025', N'open');
GO

-- Thêm dữ liệu mẫu cho bảng StudentRegistrations
INSERT INTO StudentRegistrations (registration_id, student_id, class_id, registration_date, status, reason) VALUES
(NEWID(), N'SV001', N'IT001-PM1', N'2024-01-02', N'accepted', NULL),
(NEWID(), N'SV002', N'IT001-PM1', N'2024-01-02', N'accepted', NULL),
(NEWID(), N'SV003', N'IT001-PM2', N'2024-01-03', N'accepted', NULL),
(NEWID(), N'SV004', N'MA001-GT1', N'2023-08-02', N'accepted', NULL),
(NEWID(), N'SV005', N'PH001-VL1', N'2023-08-03', N'accepted', NULL),
(NEWID(), N'SV006', N'IT002-CD1', N'2024-01-04', N'accepted', NULL),
(NEWID(), N'SV007', N'IT004-CD1', N'2024-01-05', N'accepted', NULL),
(NEWID(), N'SV008', N'IT005-OP1', N'2024-01-06', N'accepted', NULL),
(NEWID(), N'SV009', N'MA002-ĐS1', N'2023-08-04', N'accepted', NULL),
(NEWID(), N'SV010', N'PH002-VL2', N'2023-08-05', N'accepted', NULL);
GO

-- Thêm dữ liệu mẫu cho bảng StudentResults (dữ liệu sẽ được trigger tự động thêm)
-- (Không cần thêm dữ liệu thủ công vì đã có trigger)
-- SELECT * FROM StudentResults;

-- Thêm dữ liệu mẫu cho bảng ResultColumns
-- Điểm SV001 - Lớp IT001-PM1
INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
SELECT sr.student_results_id, N'Bài tập 1', 8.0, 0.1
FROM StudentResults sr
INNER JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
WHERE srg.student_id = N'SV001' AND srg.class_id = N'IT001-PM1';

INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
SELECT sr.student_results_id, N'Bài tập 2', 8.5, 0.1
FROM StudentResults sr
INNER JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
WHERE srg.student_id = N'SV001' AND srg.class_id = N'IT001-PM1';

INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
SELECT sr.student_results_id, N'Giữa kỳ', 7.5, 0.3
FROM StudentResults sr
INNER JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
WHERE srg.student_id = N'SV001' AND srg.class_id = N'IT001-PM1';

INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
SELECT sr.student_results_id, N'Cuối kỳ', 7.0, 0.5
FROM StudentResults sr
INNER JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
WHERE srg.student_id = N'SV001' AND srg.class_id = N'IT001-PM1';

-- Điểm SV002 - Lớp IT001-PM1
INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
SELECT sr.student_results_id, N'Bài tập 1', 6.0, 0.1
FROM StudentResults sr
INNER JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
WHERE srg.student_id = N'SV002' AND srg.class_id = N'IT001-PM1';

INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
SELECT sr.student_results_id, N'Bài tập 2', 7.0, 0.1
FROM StudentResults sr
INNER JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
WHERE srg.student_id = N'SV002' AND srg.class_id = N'IT001-PM1';

INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
SELECT sr.student_results_id, N'Giữa kỳ', 6.5, 0.3
FROM StudentResults sr
INNER JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
WHERE srg.student_id = N'SV002' AND srg.class_id = N'IT001-PM1';

INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
SELECT sr.student_results_id, N'Cuối kỳ', 8.0, 0.5
FROM StudentResults sr
INNER JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
WHERE srg.student_id = N'SV002' AND srg.class_id = N'IT001-PM1';

-- Điểm SV003 - Lớp IT001-PM2
INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
SELECT sr.student_results_id, N'Bài tập 1', 9.0, 0.1
FROM StudentResults sr
INNER JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
WHERE srg.student_id = N'SV003' AND srg.class_id = N'IT001-PM2';

INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
SELECT sr.student_results_id, N'Bài tập 2', 9.5, 0.1
FROM StudentResults sr
INNER JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
WHERE srg.student_id = N'SV003' AND srg.class_id = N'IT001-PM2';

INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
SELECT sr.student_results_id, N'Giữa kỳ', 8.5, 0.3
FROM StudentResults sr
INNER JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
WHERE srg.student_id = N'SV003' AND srg.class_id = N'IT001-PM2';

INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
SELECT sr.student_results_id, N'Cuối kỳ', 9.0, 0.5
FROM StudentResults sr
INNER JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
WHERE srg.student_id = N'SV003' AND srg.class_id = N'IT001-PM2';
GO

-- Thêm dữ liệu mẫu cho bảng TuitionPayments
INSERT INTO TuitionPayments (payment_id, student_id, total_credits, tuition_fee, amount_to_pay, amount_paid, payment_time, excess_money, debt) VALUES
(N'TP001', N'SV001', 3, 12000000, 12000000, 12000000, N'2024-01-10', 0, 0),
(N'TP002', N'SV002', 3, 12000000, 12000000, 5000000, N'2024-01-11', 0, 7000000),
(N'TP003', N'SV003', 3, 12000000, 12000000, 12000000, N'2024-01-12', 0, 0),
(N'TP004', N'SV004', 4, 16000000, 16000000, 16000000, N'2023-08-10', 0, 0),
(N'TP005', N'SV005', 4, 16000000, 16000000, 16000000, N'2023-08-11', 0, 0),
(N'TP006', N'SV006', 3, 12000000, 12000000, 12000000, N'2024-01-13', 0, 0),
(N'TP007', N'SV007', 4, 16000000, 16000000, 10000000, N'2024-01-14', 0, 6000000),
(N'TP008', N'SV008', 3, 12000000, 12000000, 12000000, N'2024-01-15', 0, 0),
(N'TP009', N'SV009', 4, 16000000, 16000000, 16000000, N'2023-08-12', 0, 0),
(N'TP010', N'SV010', 4, 16000000, 16000000, 16000000, N'2023-08-13', 0, 0);
GO

-- Thêm dữ liệu mẫu cho bảng Fee_Subjects
INSERT INTO Fee_Subjects (payment_id, subject_id) VALUES
(N'TP001', N'IT001'),
(N'TP002', N'IT001'),
(N'TP003', N'IT001'),
(N'TP004', N'MA001'),
(N'TP005', N'PH001'),
(N'TP006', N'IT002'),
(N'TP007', N'IT004'),
(N'TP008', N'IT005'),
(N'TP009', N'MA002'),
(N'TP010', N'PH002');
GO

-- Thêm dữ liệu mẫu cho bảng Users (dữ liệu cho student và teacher sẽ được trigger tự động thêm)
-- (Không cần thêm dữ liệu thủ công cho student và teacher vì đã có trigger)
-- SELECT * FROM Users;

-- Thêm dữ liệu mẫu cho bảng Profiles (dữ liệu cho student và teacher sẽ được trigger tự động thêm)
-- (Không cần thêm dữ liệu thủ công cho student và teacher vì đã có trigger)
-- SELECT * FROM Profiles;
UPDATE Profiles
SET date_of_birth = N'2003-03-10', gender = N'Nam', address = N'123 Nguyễn Văn Cừ, Quận 5, TP.HCM', citizen_id_card = N'079003001234'
WHERE username = N'SV001';

UPDATE Profiles
SET date_of_birth = N'2003-05-15', gender = N'Nữ', address = N'456 Lê Lợi, Quận 1, TP.HCM', citizen_id_card = N'079003002345'
WHERE username = N'SV002';

UPDATE Profiles
SET date_of_birth = N'2004-07-20', gender = N'Nam', address = N'789 Trần Hưng Đạo, Quận 3, TP.HCM', citizen_id_card = N'079004003456'
WHERE username = N'SV003';

UPDATE Profiles
SET date_of_birth = N'2004-09-25', gender = N'Nữ', address = N'101 Nguyễn Thị Minh Khai, Quận 1, TP.HCM', citizen_id_card = N'079004004567'
WHERE username = N'SV004';

UPDATE Profiles
SET date_of_birth = N'2004-11-30', gender = N'Nam', address = N'202 Lý Thường Kiệt, Quận 10, TP.HCM', citizen_id_card = N'079004005678'
WHERE username = N'SV005';

UPDATE Profiles
SET date_of_birth = N'2005-01-05', gender = N'Nữ', address = N'303 Cách Mạng Tháng 8, Quận 10, TP.HCM', citizen_id_card = N'079005006789'
WHERE username = N'SV006';

UPDATE Profiles
SET date_of_birth = N'2005-04-12', gender = N'Nam', address = N'404 Nguyễn Tri Phương, Quận 5, TP.HCM', citizen_id_card = N'079005007890'
WHERE username = N'SV007';

UPDATE Profiles
SET date_of_birth = N'2005-06-18', gender = N'Nam', address = N'505 Võ Văn Tần, Quận 3, TP.HCM', citizen_id_card = N'079005008901'
WHERE username = N'SV008';

UPDATE Profiles
SET date_of_birth = N'2005-08-24', gender = N'Nữ', address = N'606 Điện Biên Phủ, Bình Thạnh, TP.HCM', citizen_id_card = N'079005009012'
WHERE username = N'SV009';

UPDATE Profiles
SET date_of_birth = N'2005-10-30', gender = N'Nữ', address = N'707 Xô Viết Nghệ Tĩnh, Bình Thạnh, TP.HCM', citizen_id_card = N'079005010123'
WHERE username = N'SV010';

UPDATE Profiles
SET date_of_birth = N'1980-12-01', gender = N'Nam', address = N'808 Lê Hồng Phong, Quận 10, TP.HCM', citizen_id_card = N'025980001122'
WHERE username = N'GV001';

UPDATE Profiles
SET date_of_birth = N'1982-04-15', gender = N'Nữ', address = N'909 Nguyễn Trãi, Quận 5, TP.HCM', citizen_id_card = N'025982002233'
WHERE username = N'GV002';

UPDATE Profiles
SET date_of_birth = N'1978-06-22', gender = N'Nam', address = N'111 Hai Bà Trưng, Quận 1, TP.HCM', citizen_id_card = N'025978003344'
WHERE username = N'GV003';

UPDATE Profiles
SET date_of_birth = N'1985-09-10', gender = N'Nữ', address = N'222 Pasteur, Quận 3, TP.HCM', citizen_id_card = N'025985004455'
WHERE username = N'GV004';

UPDATE Profiles
SET date_of_birth = N'1983-03-05', gender = N'Nam', address = N'333 Nam Kỳ Khởi Nghĩa, Quận 3, TP.HCM', citizen_id_card = N'025983005566'
WHERE username = N'GV005';

UPDATE Profiles
SET date_of_birth = N'1988-11-18', gender = N'Nữ', address = N'444 Đồng Khởi, Quận 1, TP.HCM', citizen_id_card = N'025988006677'
WHERE username = N'GV006';

UPDATE Profiles
SET date_of_birth = N'1981-07-25', gender = N'Nam', address = N'555 Nguyễn Đình Chiểu, Quận 3, TP.HCM', citizen_id_card = N'025981007788'
WHERE username = N'GV007';

UPDATE Profiles
SET date_of_birth = N'1986-02-12', gender = N'Nam', address = N'666 Lý Thái Tổ, Quận 10, TP.HCM', citizen_id_card = N'025986008899'
WHERE username = N'GV008';

UPDATE Profiles
SET date_of_birth = N'1984-05-08', gender = N'Nữ', address = N'777 Hoàng Sa, Tân Bình, TP.HCM', citizen_id_card = N'025984009900'
WHERE username = N'GV009';

UPDATE Profiles
SET date_of_birth = N'1989-01-20', gender = N'Nữ', address = N'888 Trường Sa, Tân Bình, TP.HCM', citizen_id_card = N'025989010011'
WHERE username = N'GV010';

UPDATE Profiles
SET date_of_birth = N'1990-11-11', gender = N'Nam', address = N'Khu phố 6, Phường Linh Trung, TP. Thủ Đức, TP.HCM', citizen_id_card = N'012345678901'
WHERE username = N'admin';
GO

-- Thêm dữ liệu mẫu cho bảng Notifications
INSERT INTO Notifications (notify_header, notify_day, notify_description) VALUES
(N'Thông báo: Lịch nghỉ lễ 30/4 và 1/5', N'2024-04-15', N'UIT sẽ nghỉ lễ 30/4 và 1/5. Sinh viên sẽ trở lại học tập vào ngày 2/5.'),
(N'Đăng ký học kỳ 2, 2024-2025', N'2024-07-25', N'Cổng đăng ký môn học trực tuyến sẽ mở từ ngày 25/07/2024 đến hết ngày 10/08/2024.'),
(N'Hội thảo ATTT trong kỷ nguyên số', N'2024-05-10', N'Khoa CNTT tổ chức hội thảo "An toàn thông tin trong kỷ nguyên số" vào 8h00 ngày 15/05/2024 tại Hội trường A.'),
(N'Lịch thi học kỳ 1, 2023-2024', N'2023-12-01', N'Phòng Đào tạo thông báo lịch thi học kỳ 1 năm học 2023 - 2024. Sinh viên xem chi tiết tại website của Phòng Đào tạo.'),
(N'Thông báo đóng học phí kỳ 1, 2024-2025', N'2024-01-05', N'Sinh viên lưu ý hoàn thành đóng học phí học kỳ 1 năm học 2023 - 2024 trước ngày 20/01/2024. Các trường hợp đóng trễ sẽ bị xử lý theo quy định.');
GO