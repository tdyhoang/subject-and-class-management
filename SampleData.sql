USE SubjectAndClassManagement;
GO

-- Xoá dữ liệu
DELETE FROM ResultColumns;
DELETE FROM StudentResults;
DELETE FROM Fee_Subjects;
DELETE FROM TuitionPayments;
DELETE FROM StudentRegistrations;
DELETE FROM Classes;
DELETE FROM RegistrationSessions;
DELETE FROM Profiles;
DELETE FROM Users;
DELETE FROM Students;
DELETE FROM Teachers;
DELETE FROM Subjects;
DELETE FROM Rooms;
DELETE FROM Notifications;
GO

-- Thêm dữ liệu cho bảng Rooms
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
(N'C201', 60, N'Nhà C'),
(N'D101', 60, N'Nhà D'),
(N'D102', 50, N'Nhà D'),
(N'D201', 70, N'Nhà D'),
(N'E101', 80, N'Nhà E'),
(N'E102', 55, N'Nhà E'),
(N'E201', 65, N'Nhà E');
GO

-- Thêm dữ liệu cho bảng Subjects
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
(N'PH002', N'Vật lý đại cương 2', N'Điện trường, từ trường, cảm ứng điện từ, quang học', 4),
(N'IT007', N'Hệ điều hành', N'Giới thiệu về hệ điều hành, quản lý tiến trình, quản lý bộ nhớ, hệ thống tập tin', 3),
(N'IT008', N'Trí tuệ nhân tạo', N'Các khái niệm cơ bản về trí tuệ nhân tạo, các phương pháp tìm kiếm, học máy', 3),
(N'IT009', N'Phát triển ứng dụng di động', N'Lập trình ứng dụng di động trên nền tảng Android và iOS', 4),
(N'MA003', N'Xác suất thống kê', N'Biến cố, xác suất, biến ngẫu nhiên, phân phối xác suất, ước lượng, kiểm định giả thuyết', 3),
(N'GE001', N'Kỹ năng mềm', N'Kỹ năng giao tiếp, thuyết trình, làm việc nhóm, quản lý thời gian', 2),
(N'GE002', N'Đạo đức nghề nghiệp', N'Các chuẩn mực đạo đức trong nghề nghiệp, trách nhiệm xã hội', 2);
GO

-- Thêm dữ liệu cho bảng Teachers
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
(N'GV010', N'Lê Thị Kim Ngân', N'nganltk@uit.edu.vn', N'0986754323'),
(N'GV011', N'Nguyễn Văn Tùng', N'tungnv@uit.edu.vn', N'0911223344'),
(N'GV012', N'Trần Thị Thu Cúc', N'cucctt@uit.edu.vn', N'0902334455'),
(N'GV013', N'Lê Hoàng Long', N'longlh@uit.edu.vn', N'0988776655'),
(N'GV014', N'Phạm Thị Minh Nguyệt', N'nguyetptm@uit.edu.vn', N'0977665544'),
(N'GV015', N'Hoàng Văn Tiến', N'tienhv@uit.edu.vn', N'0966554433'),
(N'GV016', N'Võ Thị Hồng Nhung', N'nhungvth@uit.edu.vn', N'0933445566'),
(N'GV017', N'Đỗ Văn Mạnh', N'manhdv@uit.edu.vn', N'0944556677'),
(N'GV018', N'Trần Văn Trung', N'trungtv@uit.edu.vn', N'0922334455'),
(N'GV019', N'Nguyễn Thị Bích Thảo', N'thaontb@uit.edu.vn', N'0911445566'),
(N'GV020', N'Lê Thị Kim Oanh', N'oanhltk@uit.edu.vn', N'0988665544');
GO

-- Thêm dữ liệu cho bảng Students
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
(N'SV010', N'Lê Thị Khánh', N'23520010@gm.uit.edu.vn', 2023, N'0801234569'),
(N'SV011', N'Phạm Văn Em', N'21520011@gm.uit.edu.vn', 2021, N'0811122233'),
(N'SV012', N'Nguyễn Thị Phương', N'21520012@gm.uit.edu.vn', 2021, N'0822233344'),
(N'SV013', N'Trần Văn Quốc', N'22520013@gm.uit.edu.vn', 2022, N'0833344455'),
(N'SV014', N'Lê Thị Thu', N'22520014@gm.uit.edu.vn', 2022, N'0844455566'),
(N'SV015', N'Hoàng Văn Toàn', N'22520015@gm.uit.edu.vn', 2022, N'0855566677'),
(N'SV016', N'Võ Thị Uyên', N'23520016@gm.uit.edu.vn', 2023, N'0866677788'),
(N'SV017', N'Đỗ Văn Vương', N'23520017@gm.uit.edu.vn', 2023, N'0877788899'),
(N'SV018', N'Trần Thị Xuân', N'23520018@gm.uit.edu.vn', 2023, N'0888899900'),
(N'SV019', N'Nguyễn Văn Ý', N'23520019@gm.uit.edu.vn', 2023, N'0899900011'),
(N'SV020', N'Lê Thị Quỳnh', N'23520020@gm.uit.edu.vn', 2023, N'0800011122'),
(N'SV021', N'Phan Văn Tân', N'21520021@gm.uit.edu.vn', 2021, N'0812345001'),
(N'SV022', N'Nguyễn Thị Ngọc', N'21520022@gm.uit.edu.vn', 2021, N'0812345002'),
(N'SV023', N'Trần Văn Đạt', N'22520023@gm.uit.edu.vn', 2022, N'0812345003'),
(N'SV024', N'Lê Thị Hồng', N'22520024@gm.uit.edu.vn', 2022, N'0812345004'),
(N'SV025', N'Hoàng Văn Nam', N'22520025@gm.uit.edu.vn', 2022, N'0812345005'),
(N'SV026', N'Võ Thị Mai', N'23520026@gm.uit.edu.vn', 2023, N'0812345006'),
(N'SV027', N'Đỗ Văn Tuấn', N'23520027@gm.uit.edu.vn', 2023, N'0812345007'),
(N'SV028', N'Trần Thị Phương', N'23520028@gm.uit.edu.vn', 2023, N'0812345008'),
(N'SV029', N'Nguyễn Văn Thành', N'23520029@gm.uit.edu.vn', 2023, N'0812345009'),
(N'SV030', N'Lê Thị Ly', N'23520030@gm.uit.edu.vn', 2023, N'0812345010'),
(N'SV031', N'Phạm Văn Đức', N'21520031@gm.uit.edu.vn', 2021, N'0812345011'),
(N'SV032', N'Nguyễn Thị Hoa', N'21520032@gm.uit.edu.vn', 2021, N'0812345012'),
(N'SV033', N'Trần Văn Minh', N'22520033@gm.uit.edu.vn', 2022, N'0812345013'),
(N'SV034', N'Lê Thị Lan', N'22520034@gm.uit.edu.vn', 2022, N'0812345014'),
(N'SV035', N'Hoàng Văn Hải', N'22520035@gm.uit.edu.vn', 2022, N'0812345015'),
(N'SV036', N'Võ Thị Dung', N'23520036@gm.uit.edu.vn', 2023, N'0812345016'),
(N'SV037', N'Đỗ Văn Quang', N'23520037@gm.uit.edu.vn', 2023, N'0812345017'),
(N'SV038', N'Trần Thị Thảo', N'23520038@gm.uit.edu.vn', 2023, N'0812345018'),
(N'SV039', N'Nguyễn Văn Long', N'23520039@gm.uit.edu.vn', 2023, N'0812345019'),
(N'SV040', N'Lê Thị Ngọc', N'23520040@gm.uit.edu.vn', 2023, N'0812345020'),
(N'SV041', N'Phạm Thị Thu', N'21520041@gm.uit.edu.vn', 2021, N'0812345021'),
(N'SV042', N'Nguyễn Văn Tuấn', N'21520042@gm.uit.edu.vn', 2021, N'0812345022'),
(N'SV043', N'Trần Thị Mỹ', N'22520043@gm.uit.edu.vn', 2022, N'0812345023'),
(N'SV044', N'Lê Văn Hoàng', N'22520044@gm.uit.edu.vn', 2022, N'0812345024'),
(N'SV045', N'Hoàng Thị Yến', N'22520045@gm.uit.edu.vn', 2022, N'0812345025'),
(N'SV046', N'Võ Văn Đức', N'23520046@gm.uit.edu.vn', 2023, N'0812345026'),
(N'SV047', N'Đỗ Thị Hà', N'23520047@gm.uit.edu.vn', 2023, N'0812345027'),
(N'SV048', N'Trần Văn Nam', N'23520048@gm.uit.edu.vn', 2023, N'0812345028'),
(N'SV049', N'Nguyễn Thị Lan', N'23520049@gm.uit.edu.vn', 2023, N'0812345029'),
(N'SV050', N'Lê Văn Minh', N'23520050@gm.uit.edu.vn', 2023, N'0812345030');
GO

-- Thêm dữ liệu cho bảng Classes
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
(N'PH002-VL2', N'PH002', N'B201', N'GV010', 0, 70, N'Fri', 6, 4, N'2023-09-08', N'2023-12-22', 2),
(N'IT001-PM3', N'IT001', N'A201', N'GV002', 0, 60, N'Thu', 7, 3, N'2024-02-22', N'2024-06-06', 1),
(N'IT002-CD2', N'IT002', N'B102', N'GV003', 0, 50, N'Fri', 1, 3, N'2024-02-23', N'2024-06-07', 1),
(N'IT003-WEB1', N'IT003', N'C101', N'GV004', 0, 70, N'Mon', 4, 4, N'2024-02-19', N'2024-06-03', 1),
(N'IT004-CD2', N'IT004', N'D101', N'GV005', 0, 60, N'Tue', 8, 3, N'2024-02-20', N'2024-06-04', 1),
(N'IT005-OP2', N'IT005', N'E101', N'GV006', 0, 50, N'Wed', 2, 3, N'2024-02-21', N'2024-06-05', 1),
(N'IT006-MT2', N'IT006', N'A101', N'GV007', 0, 70, N'Thu', 5, 4, N'2024-02-22', N'2024-06-06', 1),
(N'IT007-HDH1', N'IT007', N'B101', N'GV008', 0, 60, N'Fri', 9, 3, N'2024-02-23', N'2024-06-07', 1),
(N'IT008-AI1', N'IT008', N'C102', N'GV009', 0, 50, N'Mon', 1, 3, N'2024-02-19', N'2024-06-03', 1),
(N'IT009-DD1', N'IT009', N'D102', N'GV010', 0, 70, N'Tue', 4, 4, N'2024-02-20', N'2024-06-04', 1),
(N'MA003-XS1', N'MA003', N'E102', N'GV011', 0, 60, N'Wed', 7, 3, N'2024-02-21', N'2024-06-05', 1),
(N'GE001-KN1', N'GE001', N'A202', N'GV012', 0, 50, N'Thu', 1, 2, N'2024-02-22', N'2024-06-06', 1),
(N'GE002-ĐĐ1', N'GE002', N'B201', N'GV013', 0, 70, N'Fri', 3, 2, N'2024-02-23', N'2024-06-07', 1),
(N'MA001-GT2', N'MA001', N'C201', N'GV014', 0, 60, N'Mon', 5, 4, N'2023-09-04', N'2023-12-18', 2),
(N'PH001-VL2', N'PH001', N'D201', N'GV002', 0, 50, N'Tue', 9, 4, N'2023-09-05', N'2023-12-19', 2),
(N'IT002-CD3', N'IT002', N'E201', N'GV016', 0, 70, N'Wed', 2, 3, N'2023-09-06', N'2023-12-20', 2),
(N'IT004-CD3', N'IT004', N'A102', N'GV001', 0, 60, N'Thu', 6, 3, N'2023-09-07', N'2023-12-21', 2),
(N'IT005-OP3', N'IT005', N'B102', N'GV003', 0, 50, N'Fri', 10, 3, N'2023-09-08', N'2023-12-22', 2),
(N'IT006-MT3', N'IT006', N'C101', N'GV005', 0, 70, N'Mon', 3, 4, N'2023-09-04', N'2023-12-18', 2),
(N'IT007-HDH2', N'IT007', N'D101', N'GV014', 0, 60, N'Tue', 7, 3, N'2023-09-05', N'2023-12-19', 2),
(N'IT008-AI2', N'IT008', N'E101', N'GV005', 0, 50, N'Wed', 1, 3, N'2023-09-06', N'2023-12-20', 2),
(N'IT009-DD2', N'IT009', N'A201', N'GV006', 0, 70, N'Thu', 4, 4, N'2023-09-07', N'2023-12-21', 2),
(N'MA003-XS2', N'MA003', N'B201', N'GV001', 0, 60, N'Fri', 8, 3, N'2023-09-08', N'2023-12-22', 2),
(N'GE001-KN2', N'GE001', N'C201', N'GV002', 0, 50, N'Mon', 2, 2, N'2023-09-04', N'2023-12-18', 2),
(N'GE002-ĐĐ2', N'GE002', N'D201', N'GV005', 0, 70, N'Tue', 5, 2, N'2023-09-05', N'2023-12-19', 2),
(N'IT003-WEB2', N'IT003', N'E201', N'GV004', 0, 60, N'Wed', 9, 4, N'2023-09-06', N'2023-12-20', 2);
GO

-- Thêm dữ liệu cho bảng RegistrationSessions
INSERT INTO RegistrationSessions (session_id, start_date, end_date, semester, academic_year, status) VALUES
(N'RegistrationSessions001', N'2023-08-01 08:00:00', N'2023-08-15 17:00:00', 2, N'2023 - 2024', N'closed'),
(N'RegistrationSessions002', N'2024-01-01 08:00:00', N'2024-01-15 17:00:00', 1, N'2023 - 2024', N'closed'),
(N'RegistrationSessions003', N'2024-07-25 08:00:00', N'2024-08-10 17:00:00', 2, N'2024 - 2025', N'open');
GO

-- Thêm dữ liệu cho bảng StudentRegistrations
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
(NEWID(), N'SV010', N'PH002-VL2', N'2023-08-05', N'accepted', NULL),
(NEWID(), N'SV011', N'IT001-PM3', N'2024-01-06', N'accepted', NULL),
(NEWID(), N'SV012', N'IT001-PM3', N'2024-01-06', N'accepted', NULL),
(NEWID(), N'SV013', N'IT002-CD2', N'2024-01-07', N'accepted', NULL),
(NEWID(), N'SV014', N'IT002-CD2', N'2024-01-07', N'accepted', NULL),
(NEWID(), N'SV015', N'IT003-WEB1', N'2024-01-08', N'accepted', NULL),
(NEWID(), N'SV016', N'IT004-CD2', N'2024-01-09', N'accepted', NULL),
(NEWID(), N'SV017', N'IT005-OP2', N'2024-01-10', N'accepted', NULL),
(NEWID(), N'SV018', N'IT006-MT2', N'2024-01-11', N'accepted', NULL),
(NEWID(), N'SV019', N'IT007-HDH1', N'2024-01-12', N'accepted', NULL),
(NEWID(), N'SV020', N'IT008-AI1', N'2024-01-13', N'accepted', NULL),
(NEWID(), N'SV021', N'MA001-GT2', N'2023-08-06', N'accepted', NULL),
(NEWID(), N'SV022', N'PH001-VL2', N'2023-08-07', N'accepted', NULL),
(NEWID(), N'SV023', N'IT002-CD3', N'2023-08-08', N'accepted', NULL),
(NEWID(), N'SV024', N'IT004-CD3', N'2023-08-09', N'accepted', NULL),
(NEWID(), N'SV025', N'IT005-OP3', N'2023-08-10', N'accepted', NULL),
(NEWID(), N'SV026', N'IT006-MT3', N'2023-08-11', N'accepted', NULL),
(NEWID(), N'SV027', N'IT007-HDH2', N'2023-08-12', N'accepted', NULL),
(NEWID(), N'SV028', N'IT008-AI2', N'2023-08-13', N'accepted', NULL),
(NEWID(), N'SV029', N'IT009-DD2', N'2023-08-14', N'accepted', NULL),
(NEWID(), N'SV030', N'MA003-XS2', N'2023-08-15', N'accepted', NULL),
(NEWID(), N'SV031', N'IT001-PM1', N'2024-01-02', N'accepted', NULL),
(NEWID(), N'SV032', N'IT001-PM2', N'2024-01-03', N'accepted', NULL),
(NEWID(), N'SV033', N'MA001-GT1', N'2023-08-02', N'accepted', NULL),
(NEWID(), N'SV034', N'PH001-VL1', N'2023-08-03', N'accepted', NULL),
(NEWID(), N'SV035', N'IT002-CD1', N'2024-01-04', N'accepted', NULL),
(NEWID(), N'SV036', N'IT004-CD1', N'2024-01-05', N'accepted', NULL),
(NEWID(), N'SV037', N'IT005-OP1', N'2024-01-06', N'accepted', NULL),
(NEWID(), N'SV038', N'MA002-ĐS1', N'2023-08-04', N'accepted', NULL),
(NEWID(), N'SV039', N'PH002-VL2', N'2023-08-05', N'accepted', NULL),
(NEWID(), N'SV040', N'IT003-WEB1', N'2024-01-08', N'accepted', NULL),
(NEWID(), N'SV041', N'GE001-KN2', N'2023-08-10', N'accepted', NULL),
(NEWID(), N'SV042', N'GE002-ĐĐ2', N'2023-08-12', N'accepted', NULL),
(NEWID(), N'SV043', N'IT003-WEB2', N'2023-08-15', N'accepted', NULL),
(NEWID(), N'SV044', N'IT009-DD1', N'2024-01-12', N'accepted', NULL),
(NEWID(), N'SV045', N'MA003-XS1', N'2024-01-14', N'accepted', NULL),
(NEWID(), N'SV046', N'GE001-KN1', N'2024-01-15', N'accepted', NULL),
(NEWID(), N'SV047', N'IT007-HDH1', N'2024-01-13', N'accepted', NULL),
(NEWID(), N'SV048', N'IT008-AI1', N'2024-01-14', N'accepted', NULL),
(NEWID(), N'SV049', N'IT006-MT2', N'2024-01-15', N'accepted', NULL),
(NEWID(), N'SV050', N'IT005-OP2', N'2024-01-15', N'accepted', NULL),
-- Bổ sung sinh viên vào các lớp học kỳ 1, 2024-2025
-- IT001-PM3
(NEWID(), N'SV021', N'IT001-PM3', N'2024-01-08', N'accepted', NULL),
(NEWID(), N'SV022', N'IT001-PM3', N'2024-01-09', N'accepted', NULL),
(NEWID(), N'SV023', N'IT001-PM3', N'2024-01-09', N'accepted', NULL),
(NEWID(), N'SV024', N'IT001-PM3', N'2024-01-10', N'accepted', NULL),
-- IT002-CD2
(NEWID(), N'SV025', N'IT002-CD2', N'2024-01-08', N'accepted', NULL),
(NEWID(), N'SV026', N'IT002-CD2', N'2024-01-09', N'accepted', NULL),
(NEWID(), N'SV027', N'IT002-CD2', N'2024-01-11', N'accepted', NULL),
(NEWID(), N'SV028', N'IT002-CD2', N'2024-01-12', N'accepted', NULL),
-- IT003-WEB1
(NEWID(), N'SV029', N'IT003-WEB1', N'2024-01-10', N'accepted', NULL),
(NEWID(), N'SV030', N'IT003-WEB1', N'2024-01-11', N'accepted', NULL),
(NEWID(), N'SV031', N'IT003-WEB1', N'2024-01-12', N'accepted', NULL),
(NEWID(), N'SV032', N'IT003-WEB1', N'2024-01-13', N'accepted', NULL),
-- IT004-CD2
(NEWID(), N'SV033', N'IT004-CD2', N'2024-01-10', N'accepted', NULL),
(NEWID(), N'SV034', N'IT004-CD2', N'2024-01-11', N'accepted', NULL),
(NEWID(), N'SV035', N'IT004-CD2', N'2024-01-12', N'accepted', NULL),
(NEWID(), N'SV036', N'IT004-CD2', N'2024-01-13', N'accepted', NULL),
-- IT005-OP2
(NEWID(), N'SV037', N'IT005-OP2', N'2024-01-11', N'accepted', NULL),
(NEWID(), N'SV038', N'IT005-OP2', N'2024-01-12', N'accepted', NULL),
(NEWID(), N'SV039', N'IT005-OP2', N'2024-01-13', N'accepted', NULL),
(NEWID(), N'SV040', N'IT005-OP2', N'2024-01-14', N'accepted', NULL),
-- IT006-MT2
(NEWID(), N'SV041', N'IT006-MT2', N'2024-01-12', N'accepted', NULL),
(NEWID(), N'SV042', N'IT006-MT2', N'2024-01-13', N'accepted', NULL),
(NEWID(), N'SV043', N'IT006-MT2', N'2024-01-14', N'accepted', NULL),
(NEWID(), N'SV044', N'IT006-MT2', N'2024-01-15', N'accepted', NULL),
-- IT007-HDH1
(NEWID(), N'SV045', N'IT007-HDH1', N'2024-01-13', N'accepted', NULL),
(NEWID(), N'SV046', N'IT007-HDH1', N'2024-01-14', N'accepted', NULL),
(NEWID(), N'SV047', N'IT007-HDH1', N'2024-01-15', N'accepted', NULL),
(NEWID(), N'SV048', N'IT007-HDH1', N'2024-01-16', N'accepted', NULL),
-- IT008-AI1
(NEWID(), N'SV010', N'IT008-AI1', N'2024-01-14', N'accepted', NULL),
(NEWID(), N'SV020', N'IT008-AI1', N'2024-01-14', N'accepted', NULL),
(NEWID(), N'SV030', N'IT008-AI1', N'2024-01-15', N'accepted', NULL),
(NEWID(), N'SV040', N'IT008-AI1', N'2024-01-15', N'accepted', NULL),
(NEWID(), N'SV050', N'IT008-AI1', N'2024-01-16', N'accepted', NULL),
-- IT009-DD1
(NEWID(), N'SV019', N'IT009-DD1', N'2024-01-14', N'accepted', NULL),
(NEWID(), N'SV029', N'IT009-DD1', N'2024-01-15', N'accepted', NULL),
(NEWID(), N'SV039', N'IT009-DD1', N'2024-01-15', N'accepted', NULL),
(NEWID(), N'SV049', N'IT009-DD1', N'2024-01-16', N'accepted', NULL),
-- MA003-XS1
(NEWID(), N'SV018', N'MA003-XS1', N'2024-01-15', N'accepted', NULL),
(NEWID(), N'SV028', N'MA003-XS1', N'2024-01-15', N'accepted', NULL),
(NEWID(), N'SV038', N'MA003-XS1', N'2024-01-16', N'accepted', NULL),
-- GE001-KN1
(NEWID(), N'SV017', N'GE001-KN1', N'2024-01-16', N'accepted', NULL),
(NEWID(), N'SV027', N'GE001-KN1', N'2024-01-16', N'accepted', NULL),
(NEWID(), N'SV037', N'GE001-KN1', N'2024-01-16', N'accepted', NULL),
-- Thêm sinh viên vào các lớp học kỳ 2, 2023-2024
-- MA001-GT2
(NEWID(), N'SV015', N'MA001-GT2', N'2023-08-07', N'accepted', NULL),
(NEWID(), N'SV016', N'MA001-GT2', N'2023-08-08', N'accepted', NULL),
(NEWID(), N'SV017', N'MA001-GT2', N'2023-08-08', N'accepted', NULL),
(NEWID(), N'SV018', N'MA001-GT2', N'2023-08-09', N'accepted', NULL),
-- PH001-VL2
(NEWID(), N'SV019', N'PH001-VL2', N'2023-08-09', N'accepted', NULL),
(NEWID(), N'SV020', N'PH001-VL2', N'2023-08-10', N'accepted', NULL),
(NEWID(), N'SV021', N'PH001-VL2', N'2023-08-10', N'accepted', NULL),
(NEWID(), N'SV022', N'PH001-VL2', N'2023-08-11', N'accepted', NULL),
-- IT002-CD3
(NEWID(), N'SV023', N'IT002-CD3', N'2023-08-09', N'accepted', NULL),
(NEWID(), N'SV024', N'IT002-CD3', N'2023-08-10', N'accepted', NULL),
(NEWID(), N'SV025', N'IT002-CD3', N'2023-08-11', N'accepted', NULL),
(NEWID(), N'SV026', N'IT002-CD3', N'2023-08-12', N'accepted', NULL),
-- IT004-CD3
(NEWID(), N'SV027', N'IT004-CD3', N'2023-08-11', N'accepted', NULL),
(NEWID(), N'SV028', N'IT004-CD3', N'2023-08-12', N'accepted', NULL),
(NEWID(), N'SV029', N'IT004-CD3', N'2023-08-13', N'accepted', NULL),
(NEWID(), N'SV030', N'IT004-CD3', N'2023-08-13', N'accepted', NULL),
-- IT005-OP3
(NEWID(), N'SV031', N'IT005-OP3', N'2023-08-11', N'accepted', NULL),
(NEWID(), N'SV032', N'IT005-OP3', N'2023-08-12', N'accepted', NULL),
(NEWID(), N'SV033', N'IT005-OP3', N'2023-08-13', N'accepted', NULL),
(NEWID(), N'SV034', N'IT005-OP3', N'2023-08-14', N'accepted', NULL),
-- IT006-MT3
(NEWID(), N'SV035', N'IT006-MT3', N'2023-08-12', N'accepted', NULL),
(NEWID(), N'SV036', N'IT006-MT3', N'2023-08-13', N'accepted', NULL),
(NEWID(), N'SV037', N'IT006-MT3', N'2023-08-14', N'accepted', NULL),
(NEWID(), N'SV038', N'IT006-MT3', N'2023-08-14', N'accepted', NULL),
-- IT007-HDH2
(NEWID(), N'SV039', N'IT007-HDH2', N'2023-08-13', N'accepted', NULL),
(NEWID(), N'SV040', N'IT007-HDH2', N'2023-08-14', N'accepted', NULL),
(NEWID(), N'SV041', N'IT007-HDH2', N'2023-08-14', N'accepted', NULL),
(NEWID(), N'SV042', N'IT007-HDH2', N'2023-08-15', N'accepted', NULL),
-- IT008-AI2
(NEWID(), N'SV043', N'IT008-AI2', N'2023-08-14', N'accepted', NULL),
(NEWID(), N'SV044', N'IT008-AI2', N'2023-08-15', N'accepted', NULL),
(NEWID(), N'SV045', N'IT008-AI2', N'2023-08-15', N'accepted', NULL),
(NEWID(), N'SV046', N'IT008-AI2', N'2023-08-16', N'accepted', NULL),
-- IT009-DD2
(NEWID(), N'SV047', N'IT009-DD2', N'2023-08-15', N'accepted', NULL),
(NEWID(), N'SV048', N'IT009-DD2', N'2023-08-16', N'accepted', NULL),
(NEWID(), N'SV049', N'IT009-DD2', N'2023-08-16', N'accepted', NULL),
(NEWID(), N'SV050', N'IT009-DD2', N'2023-08-17', N'accepted', NULL),
-- MA003-XS2
(NEWID(), N'SV007', N'MA003-XS2', N'2023-08-14', N'accepted', NULL),
(NEWID(), N'SV008', N'MA003-XS2', N'2023-08-15', N'accepted', NULL),
(NEWID(), N'SV009', N'MA003-XS2', N'2023-08-15', N'accepted', NULL),
-- GE001-KN2
(NEWID(), N'SV010', N'GE001-KN2', N'2023-08-13', N'accepted', NULL),
(NEWID(), N'SV020', N'GE001-KN2', N'2023-08-14', N'accepted', NULL),
(NEWID(), N'SV030', N'GE001-KN2', N'2023-08-15', N'accepted', NULL),
(NEWID(), N'SV040', N'GE001-KN2', N'2023-08-16', N'accepted', NULL),
(NEWID(), N'SV050', N'GE001-KN2', N'2023-08-16', N'accepted', NULL),
-- GE002-ĐĐ2
(NEWID(), N'SV001', N'GE002-ĐĐ2', N'2023-08-12', N'accepted', NULL),
(NEWID(), N'SV002', N'GE002-ĐĐ2', N'2023-08-13', N'accepted', NULL),
(NEWID(), N'SV003', N'GE002-ĐĐ2', N'2023-08-14', N'accepted', NULL),
(NEWID(), N'SV004', N'GE002-ĐĐ2', N'2023-08-14', N'accepted', NULL),
(NEWID(), N'SV005', N'GE002-ĐĐ2', N'2023-08-15', N'accepted', NULL),
-- IT003-WEB2
(NEWID(), N'SV006', N'IT003-WEB2', N'2023-08-15', N'accepted', NULL),
(NEWID(), N'SV007', N'IT003-WEB2', N'2023-08-15', N'accepted', NULL),
(NEWID(), N'SV008', N'IT003-WEB2', N'2023-08-16', N'accepted', NULL),
(NEWID(), N'SV009', N'IT003-WEB2', N'2023-08-16', N'accepted', NULL),
-- 3.2. Quan hệ n-n (Sinh viên - Lớp học): Một sinh viên học nhiều lớp, một lớp có nhiều sinh viên
-- Bổ sung thêm một số sinh viên vào các lớp đã có
-- SV001 học thêm lớp: IT004-CD3, MA003-XS2
(NEWID(), N'SV001', N'IT004-CD3', N'2023-08-10', N'accepted', NULL),
(NEWID(), N'SV001', N'MA003-XS2', N'2023-08-15', N'accepted', NULL),
-- SV002 học thêm lớp: PH001-VL2, GE001-KN2
(NEWID(), N'SV002', N'PH001-VL2', N'2023-08-08', N'accepted', NULL),
(NEWID(), N'SV002', N'GE001-KN2', N'2023-08-12', N'accepted', NULL),
-- SV003 học thêm lớp: IT005-OP3, IT004-CD3
(NEWID(), N'SV003', N'IT005-OP3', N'2023-08-12', N'accepted', NULL),
(NEWID(), N'SV003', N'IT004-CD3', N'2023-08-11', N'accepted', NULL),
-- SV004 học thêm lớp: IT003-WEB2, MA003-XS2
(NEWID(), N'SV004', N'IT003-WEB2', N'2023-08-16', N'accepted', NULL),
(NEWID(), N'SV004', N'MA003-XS2', N'2023-08-14', N'accepted', NULL),
-- SV005 học thêm lớp: IT006-MT3, IT008-AI2
(NEWID(), N'SV005', N'IT006-MT3', N'2023-08-13', N'accepted', NULL),
(NEWID(), N'SV005', N'IT008-AI2', N'2023-08-15', N'accepted', NULL),
-- SV006 học thêm lớp: IT009-DD2, IT007-HDH2
(NEWID(), N'SV006', N'IT009-DD2', N'2023-08-14', N'accepted', NULL),
(NEWID(), N'SV006', N'IT007-HDH2', N'2023-08-13', N'accepted', NULL),
-- SV011 học thêm lớp: IT005-OP3, GE001-KN2
(NEWID(), N'SV011', N'IT005-OP3', N'2024-01-12', N'accepted', NULL),
(NEWID(), N'SV011', N'GE001-KN2', N'2024-01-16', N'accepted', NULL),
-- SV012 học thêm lớp: IT009-DD1, MA003-XS2
(NEWID(), N'SV012', N'IT009-DD1', N'2024-01-13', N'accepted', NULL),
(NEWID(), N'SV012', N'MA003-XS2', N'2024-01-15', N'accepted', NULL),
-- SV013 học thêm lớp: IT003-WEB1, GE002-ĐĐ2
(NEWID(), N'SV013', N'IT003-WEB1', N'2024-01-09', N'accepted', NULL),
(NEWID(), N'SV013', N'GE002-ĐĐ2', N'2023-08-14', N'accepted', NULL),
-- SV014 học thêm lớp: MA001-GT2, PH002-VL2
(NEWID(), N'SV014', N'MA001-GT2', N'2023-08-07', N'accepted', NULL),
(NEWID(), N'SV014', N'PH002-VL2', N'2023-08-06', N'accepted', NULL),
-- SV015 học thêm lớp: IT007-HDH1, IT006-MT3
(NEWID(), N'SV015', N'IT007-HDH1', N'2024-01-14', N'accepted', NULL),
(NEWID(), N'SV015', N'IT006-MT3', N'2024-01-12', N'accepted', NULL);
GO

-- Thêm dữ liệu cho bảng TuitionPayments
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
(N'TP010', N'SV010', 4, 16000000, 16000000, 16000000, N'2023-08-13', 0, 0),
(N'TP011', N'SV011', 3, 12000000, 12000000, 12000000, N'2024-01-16', 0, 0),
(N'TP012', N'SV012', 3, 12000000, 12000000, 6000000, N'2024-01-17', 0, 6000000),
(N'TP013', N'SV013', 3, 12000000, 12000000, 12000000, N'2024-01-18', 0, 0),
(N'TP014', N'SV014', 3, 12000000, 12000000, 12000000, N'2024-01-19', 0, 0),
(N'TP015', N'SV015', 4, 16000000, 16000000, 16000000, N'2024-01-20', 0, 0),
(N'TP016', N'SV016', 4, 16000000, 16000000, 16000000, N'2024-01-21', 0, 0),
(N'TP017', N'SV017', 3, 12000000, 12000000, 12000000, N'2024-01-22', 0, 0),
(N'TP018', N'SV018', 4, 16000000, 16000000, 16000000, N'2024-01-23', 0, 0),
(N'TP019', N'SV019', 3, 12000000, 12000000, 12000000, N'2024-01-24', 0, 0),
(N'TP020', N'SV020', 3, 12000000, 12000000, 12000000, N'2024-01-25', 0, 0),
(N'TP021', N'SV021', 4, 16000000, 16000000, 16000000, N'2023-08-16', 0, 0),
(N'TP022', N'SV022', 4, 16000000, 16000000, 16000000, N'2023-08-17', 0, 0),
(N'TP023', N'SV023', 3, 12000000, 12000000, 12000000, N'2023-08-18', 0, 0),
(N'TP024', N'SV024', 4, 16000000, 16000000, 8000000, N'2023-08-19', 0, 8000000),
(N'TP025', N'SV025', 3, 12000000, 12000000, 12000000, N'2023-08-20', 0, 0),
(N'TP026', N'SV026', 4, 16000000, 16000000, 16000000, N'2023-08-21', 0, 0),
(N'TP027', N'SV027', 3, 12000000, 12000000, 12000000, N'2023-08-22', 0, 0),
(N'TP028', N'SV028', 3, 12000000, 12000000, 12000000, N'2023-08-23', 0, 0),
(N'TP029', N'SV029', 4, 16000000, 16000000, 16000000, N'2023-08-24', 0, 0),
(N'TP030', N'SV030', 4, 16000000, 16000000, 16000000, N'2023-08-25', 0, 0),
(N'TP031', N'SV031', 3, 12000000, 12000000, 6000000, N'2024-01-10', 0, 6000000),
(N'TP032', N'SV032', 3, 12000000, 12000000, 12000000, N'2024-01-11', 0, 0),
(N'TP033', N'SV033', 4, 16000000, 16000000, 16000000, N'2023-08-02', 0, 0),
(N'TP034', N'SV034', 4, 16000000, 16000000, 16000000, N'2023-08-03', 0, 0),
(N'TP035', N'SV035', 3, 12000000, 12000000, 12000000, N'2024-01-04', 0, 0),
(N'TP036', N'SV036', 4, 16000000, 16000000, 16000000, N'2024-01-05', 0, 0),
(N'TP037', N'SV037', 3, 12000000, 12000000, 12000000, N'2024-01-06', 0, 0),
(N'TP038', N'SV038', 4, 16000000, 16000000, 16000000, N'2023-08-04', 0, 0),
(N'TP039', N'SV039', 4, 16000000, 16000000, 16000000, N'2023-08-05', 0, 0),
(N'TP040', N'SV040', 4, 16000000, 16000000, 16000000, N'2024-01-08', 0, 0),
(N'TP041', N'SV041', 2, 8000000, 8000000, 8000000, N'2023-08-10', 0, 0),
(N'TP042', N'SV042', 2, 8000000, 8000000, 8000000, N'2023-08-12', 0, 0),
(N'TP043', N'SV043', 4, 16000000, 16000000, 16000000, N'2023-08-15', 0, 0),
(N'TP044', N'SV044', 4, 16000000, 16000000, 16000000, N'2024-01-12', 0, 0),
(N'TP045', N'SV045', 3, 12000000, 12000000, 12000000, N'2024-01-14', 0, 0),
(N'TP046', N'SV046', 2, 8000000, 8000000, 8000000, N'2024-01-15', 0, 0),
(N'TP047', N'SV047', 3, 12000000, 12000000, 12000000, N'2024-01-13', 0, 0),
(N'TP048', N'SV048', 3, 12000000, 12000000, 12000000, N'2024-01-14', 0, 0),
(N'TP049', N'SV049', 4, 16000000, 16000000, 16000000, N'2024-01-15', 0, 0),
(N'TP050', N'SV050', 3, 12000000, 12000000, 12000000, N'2024-01-15', 0, 0),
-- Sinh viên SV001 đóng thêm học phí cho môn IT004 (Học kỳ 2, 2023-2024)
(N'TP051', N'SV001', 4, 16000000, 16000000, 16000000, N'2023-08-10', 0, 0),
-- Sinh viên SV002 đóng thêm học phí cho môn MA003 (Học kỳ 2, 2023-2024)
(N'TP052', N'SV002', 3, 12000000, 12000000, 12000000, N'2023-08-12', 0, 0),
-- Sinh viên SV003 đóng thêm học phí cho môn GE002 (Học kỳ 2, 2023-2024)
(N'TP053', N'SV003', 2, 8000000, 8000000, 8000000, N'2023-08-15', 0, 0),
-- Sinh viên SV004 đóng thêm học phí cho môn IT006 (Học kỳ 1, 2024-2025)
(N'TP054', N'SV004', 3, 12000000, 12000000, 12000000, N'2024-01-10', 0, 0),
-- Sinh viên SV005 đóng thêm học phí cho môn IT009 (Học kỳ 1, 2024-2025)
(N'TP055', N'SV005', 4, 16000000, 16000000, 16000000, N'2024-01-12', 0, 0),
-- Sinh viên SV011 đóng thêm học phí cho môn MA002 (Học kỳ 2, 2023-2024)
(N'TP056', N'SV011', 4, 16000000, 16000000, 16000000, N'2023-08-15', 0, 0),
-- Sinh viên SV012 đóng thêm học phí cho môn IT003 (Học kỳ 1, 2024-2025)
(N'TP057', N'SV012', 4, 16000000, 16000000, 16000000, N'2024-01-16', 0, 0),
-- Sinh viên SV013 đóng thêm học phí cho môn IT008 (Học kỳ 2, 2023-2024)
(N'TP058', N'SV013', 3, 12000000, 12000000, 12000000, N'2023-08-14', 0, 0),
-- Sinh viên SV014 đóng thêm học phí cho môn IT007 (Học kỳ 1, 2024-2025)
(N'TP059', N'SV014', 3, 12000000, 12000000, 12000000, N'2024-01-11', 0, 0),
-- Sinh viên SV015 đóng thêm học phí cho môn GE001 (Học kỳ 1, 2024-2025)
(N'TP060', N'SV015', 2, 8000000, 8000000, 8000000, N'2024-01-16', 0, 0);
GO

-- Thêm dữ liệu cho bảng Fee_Subjects
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
(N'TP010', N'PH002'),
(N'TP011', N'IT001'),
(N'TP012', N'IT001'),
(N'TP013', N'IT002'),
(N'TP014', N'IT002'),
(N'TP015', N'IT003'),
(N'TP016', N'IT004'),
(N'TP017', N'IT005'),
(N'TP018', N'IT006'),
(N'TP019', N'IT007'),
(N'TP020', N'IT008'),
(N'TP021', N'MA001'),
(N'TP022', N'PH001'),
(N'TP023', N'IT002'),
(N'TP024', N'IT004'),
(N'TP025', N'IT005'),
(N'TP026', N'IT006'),
(N'TP027', N'IT007'),
(N'TP028', N'IT008'),
(N'TP029', N'IT009'),
(N'TP030', N'MA003'),
(N'TP031', N'IT001'),
(N'TP032', N'IT001'),
(N'TP033', N'MA001'),
(N'TP034', N'PH001'),
(N'TP035', N'IT002'),
(N'TP036', N'IT004'),
(N'TP037', N'IT005'),
(N'TP038', N'MA002'),
(N'TP039', N'PH002'),
(N'TP040', N'IT003'),
(N'TP041', N'GE001'),
(N'TP042', N'GE002'),
(N'TP043', N'IT003'),
(N'TP044', N'IT009'),
(N'TP045', N'MA003'),
(N'TP046', N'GE001'),
(N'TP047', N'IT007'),
(N'TP048', N'IT008'),
(N'TP049', N'IT006'),
(N'TP050', N'IT005'),
(N'TP051', N'IT004'),
(N'TP052', N'MA003'),
(N'TP053', N'GE002'),
(N'TP054', N'IT006'),
(N'TP055', N'IT009'),
(N'TP056', N'MA002'),
(N'TP057', N'IT003'),
(N'TP058', N'IT008'),
(N'TP059', N'IT007'),
(N'TP060', N'GE001');
GO

-- Thêm dữ liệu cho bảng Users
INSERT INTO Users VALUES('admin', 'admin', 'admin', NULL, NULL, 'active');
-- Thêm users cho students (SV001 -> SV050)
INSERT INTO Users (username, password, user_type, student_id, status) VALUES
(N'SV002', N'SV002', N'student', N'SV002', N'active'),
(N'SV003', N'SV003', N'student', N'SV003', N'active'),
(N'SV004', N'SV004', N'student', N'SV004', N'active'),
(N'SV005', N'SV005', N'student', N'SV005', N'active'),
(N'SV006', N'SV006', N'student', N'SV006', N'active'),
(N'SV007', N'SV007', N'student', N'SV007', N'active'),
(N'SV008', N'SV008', N'student', N'SV008', N'active'),
(N'SV009', N'SV009', N'student', N'SV009', N'active'),
(N'SV010', N'SV010', N'student', N'SV010', N'active'),
(N'SV011', N'SV011', N'student', N'SV011', N'active'),
(N'SV012', N'SV012', N'student', N'SV012', N'active'),
(N'SV013', N'SV013', N'student', N'SV013', N'active'),
(N'SV014', N'SV014', N'student', N'SV014', N'active'),
(N'SV015', N'SV015', N'student', N'SV015', N'active'),
(N'SV016', N'SV016', N'student', N'SV016', N'active'),
(N'SV017', N'SV017', N'student', N'SV017', N'active'),
(N'SV018', N'SV018', N'student', N'SV018', N'active'),
(N'SV019', N'SV019', N'student', N'SV019', N'active'),
(N'SV020', N'SV020', N'student', N'SV020', N'active'),
(N'SV021', N'SV021', N'student', N'SV021', N'active'),
(N'SV022', N'SV022', N'student', N'SV022', N'active'),
(N'SV023', N'SV023', N'student', N'SV023', N'active'),
(N'SV024', N'SV024', N'student', N'SV024', N'active'),
(N'SV025', N'SV025', N'student', N'SV025', N'active'),
(N'SV026', N'SV026', N'student', N'SV026', N'active'),
(N'SV027', N'SV027', N'student', N'SV027', N'active'),
(N'SV028', N'SV028', N'student', N'SV028', N'active'),
(N'SV029', N'SV029', N'student', N'SV029', N'active'),
(N'SV030', N'SV030', N'student', N'SV030', N'active'),
(N'SV031', N'SV031', N'student', N'SV031', N'active'),
(N'SV032', N'SV032', N'student', N'SV032', N'active'),
(N'SV033', N'SV033', N'student', N'SV033', N'active'),
(N'SV034', N'SV034', N'student', N'SV034', N'active'),
(N'SV035', N'SV035', N'student', N'SV035', N'active'),
(N'SV036', N'SV036', N'student', N'SV036', N'active'),
(N'SV037', N'SV037', N'student', N'SV037', N'active'),
(N'SV038', N'SV038', N'student', N'SV038', N'active'),
(N'SV039', N'SV039', N'student', N'SV039', N'active'),
(N'SV040', N'SV040', N'student', N'SV040', N'active'),
(N'SV041', N'SV041', N'student', N'SV041', N'active'),
(N'SV042', N'SV042', N'student', N'SV042', N'active'),
(N'SV043', N'SV043', N'student', N'SV043', N'active'),
(N'SV044', N'SV044', N'student', N'SV044', N'active'),
(N'SV045', N'SV045', N'student', N'SV045', N'active'),
(N'SV046', N'SV046', N'student', N'SV046', N'active'),
(N'SV047', N'SV047', N'student', N'SV047', N'active'),
(N'SV048', N'SV048', N'student', N'SV048', N'active'),
(N'SV049', N'SV049', N'student', N'SV049', N'active'),
(N'SV050', N'SV050', N'student', N'SV050', N'active');
GO

-- Thêm users cho teachers (GV001 -> GV020)
INSERT INTO Users (username, password, user_type, teacher_id, status) VALUES
(N'GV002', N'GV002', N'teacher', N'GV002', N'active'),
(N'GV003', N'GV003', N'teacher', N'GV003', N'active'),
(N'GV004', N'GV004', N'teacher', N'GV004', N'active'),
(N'GV005', N'GV005', N'teacher', N'GV005', N'active'),
(N'GV006', N'GV006', N'teacher', N'GV006', N'active'),
(N'GV007', N'GV007', N'teacher', N'GV007', N'active'),
(N'GV008', N'GV008', N'teacher', N'GV008', N'active'),
(N'GV009', N'GV009', N'teacher', N'GV009', N'active'),
(N'GV010', N'GV010', N'teacher', N'GV010', N'active'),
(N'GV011', N'GV011', N'teacher', N'GV011', N'active'),
(N'GV012', N'GV012', N'teacher', N'GV012', N'active'),
(N'GV013', N'GV013', N'teacher', N'GV013', N'active'),
(N'GV014', N'GV014', N'teacher', N'GV014', N'active'),
(N'GV015', N'GV015', N'teacher', N'GV015', N'active'),
(N'GV016', N'GV016', N'teacher', N'GV016', N'active'),
(N'GV017', N'GV017', N'teacher', N'GV017', N'active'),
(N'GV018', N'GV018', N'teacher', N'GV018', N'active'),
(N'GV019', N'GV019', N'teacher', N'GV019', N'active'),
(N'GV020', N'GV020', N'teacher', N'GV020', N'active');
GO

-- Thêm dữ liệu cho bảng Profiles
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
SET date_of_birth = N'2003-05-10', gender = N'Nam', address = N'901 Lê Văn Việt, Quận 9, TP.HCM', citizen_id_card = N'079003001111'
WHERE username = N'SV011';

UPDATE Profiles
SET date_of_birth = N'2003-07-15', gender = N'Nữ', address = N'902 Võ Văn Ngân, Thủ Đức, TP.HCM', citizen_id_card = N'079003002222'
WHERE username = N'SV012';

UPDATE Profiles
SET date_of_birth = N'2004-09-20', gender = N'Nam', address = N'903 Hoàng Diệu 2, Thủ Đức, TP.HCM', citizen_id_card = N'079004003333'
WHERE username = N'SV013';

UPDATE Profiles
SET date_of_birth = N'2004-11-25', gender = N'Nữ', address = N'904 Kha Vạn Cân, Thủ Đức, TP.HCM', citizen_id_card = N'079004004444'
WHERE username = N'SV014';

UPDATE Profiles
SET date_of_birth = N'2004-01-30', gender = N'Nam', address = N'905 Đặng Văn Bi, Thủ Đức, TP.HCM', citizen_id_card = N'079004005555'
WHERE username = N'SV015';

UPDATE Profiles
SET date_of_birth = N'2005-03-05', gender = N'Nữ', address = N'906 Tô Ngọc Vân, Thủ Đức, TP.HCM', citizen_id_card = N'079004006666'
WHERE username = N'SV016';

UPDATE Profiles
SET date_of_birth = N'2005-05-12', gender = N'Nam', address = N'907 Phạm Văn Đồng, Thủ Đức, TP.HCM', citizen_id_card = N'079005007777'
WHERE username = N'SV017';

UPDATE Profiles
SET date_of_birth = N'2005-07-18', gender = N'Nữ', address = N'908 Quốc lộ 1A, Thủ Đức, TP.HCM', citizen_id_card = N'079005008888'
WHERE username = N'SV018';

UPDATE Profiles
SET date_of_birth = N'2005-09-24', gender = N'Nam', address = N'909 Quốc lộ 1K, Thủ Đức, TP.HCM', citizen_id_card = N'079005009999'
WHERE username = N'SV019';

UPDATE Profiles
SET date_of_birth = N'2005-11-30', gender = N'Nữ', address = N'910 Quốc lộ 13, Thủ Đức, TP.HCM', citizen_id_card = N'079005010000'
WHERE username = N'SV020';

UPDATE Profiles
SET date_of_birth = N'2003-02-05', gender = N'Nam', address = N'911 Lê Thánh Tôn, Quận 1, TP.HCM', citizen_id_card = N'079003001212'
WHERE username = N'SV021';

UPDATE Profiles
SET date_of_birth = N'2003-04-10', gender = N'Nữ', address = N'912 Nguyễn Du, Quận 1, TP.HCM', citizen_id_card = N'079003001313'
WHERE username = N'SV022';

UPDATE Profiles
SET date_of_birth = N'2004-06-15', gender = N'Nam', address = N'913 Hai Bà Trưng, Quận 3, TP.HCM', citizen_id_card = N'079004001414'
WHERE username = N'SV023';

UPDATE Profiles
SET date_of_birth = N'2004-08-20', gender = N'Nữ', address = N'914 Nam Kỳ Khởi Nghĩa, Quận 3, TP.HCM', citizen_id_card = N'079004001515'
WHERE username = N'SV024';

UPDATE Profiles
SET date_of_birth = N'2004-10-25', gender = N'Nam', address = N'915 Võ Thị Sáu, Quận 3, TP.HCM', citizen_id_card = N'079004001616'
WHERE username = N'SV025';

UPDATE Profiles
SET date_of_birth = N'2005-01-30', gender = N'Nữ', address = N'916 Nguyễn Đình Chiểu, Quận 3, TP.HCM', citizen_id_card = N'079005001717'
WHERE username = N'SV026';

UPDATE Profiles
SET date_of_birth = N'2005-03-07', gender = N'Nam', address = N'917 Cách Mạng Tháng Tám, Quận 10, TP.HCM', citizen_id_card = N'079005001818'
WHERE username = N'SV027';

UPDATE Profiles
SET date_of_birth = N'2005-05-14', gender = N'Nữ', address = N'918 Lý Thường Kiệt, Quận 10, TP.HCM', citizen_id_card = N'079005001919'
WHERE username = N'SV028';

UPDATE Profiles
SET date_of_birth = N'2005-07-21', gender = N'Nam', address = N'919 Thành Thái, Quận 10, TP.HCM', citizen_id_card = N'079005002020'
WHERE username = N'SV029';

UPDATE Profiles
SET date_of_birth = N'2005-09-28', gender = N'Nữ', address = N'920 Nguyễn Tri Phương, Quận 5, TP.HCM', citizen_id_card = N'079005002121'
WHERE username = N'SV030';

UPDATE Profiles
SET date_of_birth = N'2003-01-12', gender = N'Nam', address = N'921 An Dương Vương, Quận 5, TP.HCM', citizen_id_card = N'079003002223'
WHERE username = N'SV031';

UPDATE Profiles
SET date_of_birth = N'2003-03-18', gender = N'Nữ', address = N'922 Trần Hưng Đạo, Quận 5, TP.HCM', citizen_id_card = N'079003002324'
WHERE username = N'SV032';

UPDATE Profiles
SET date_of_birth = N'2004-05-24', gender = N'Nam', address = N'923 Nguyễn Trãi, Quận 5, TP.HCM', citizen_id_card = N'079004002425'
WHERE username = N'SV033';

UPDATE Profiles
SET date_of_birth = N'2004-07-30', gender = N'Nữ', address = N'924 Lê Hồng Phong, Quận 10, TP.HCM', citizen_id_card = N'079004002526'
WHERE username = N'SV034';

UPDATE Profiles
SET date_of_birth = N'2004-10-05', gender = N'Nam', address = N'925 Sư Vạn Hạnh, Quận 10, TP.HCM', citizen_id_card = N'079004002627'
WHERE username = N'SV035';

UPDATE Profiles
SET date_of_birth = N'2005-02-10', gender = N'Nữ', address = N'926 Ba Tháng Hai, Quận 10, TP.HCM', citizen_id_card = N'079005002728'
WHERE username = N'SV036';

UPDATE Profiles
SET date_of_birth = N'2005-04-18', gender = N'Nam', address = N'927 Điện Biên Phủ, Quận Bình Thạnh, TP.HCM', citizen_id_card = N'079005002829'
WHERE username = N'SV037';

UPDATE Profiles
SET date_of_birth = N'2005-06-24', gender = N'Nữ', address = N'928 Xô Viết Nghệ Tĩnh, Quận Bình Thạnh, TP.HCM', citizen_id_card = N'079005002930'
WHERE username = N'SV038';

UPDATE Profiles
SET date_of_birth = N'2005-08-30', gender = N'Nam', address = N'929 Đinh Bộ Lĩnh, Quận Bình Thạnh, TP.HCM', citizen_id_card = N'079005003031'
WHERE username = N'SV039';

UPDATE Profiles
SET date_of_birth = N'2005-11-05', gender = N'Nữ', address = N'930 Bạch Đằng, Quận Bình Thạnh, TP.HCM', citizen_id_card = N'079005003132'
WHERE username = N'SV040';

UPDATE Profiles
SET date_of_birth = N'2003-02-15', gender = N'Nữ', address = N'931 Phan Văn Trị, Quận Gò Vấp, TP.HCM', citizen_id_card = N'079003003233'
WHERE username = N'SV041';

UPDATE Profiles
SET date_of_birth = N'2003-04-22', gender = N'Nam', address = N'932 Nguyễn Kiệm, Quận Gò Vấp, TP.HCM', citizen_id_card = N'079003003334'
WHERE username = N'SV042';

UPDATE Profiles
SET date_of_birth = N'2004-06-28', gender = N'Nữ', address = N'933 Quang Trung, Quận Gò Vấp, TP.HCM', citizen_id_card = N'079004003435'
WHERE username = N'SV043';

UPDATE Profiles
SET date_of_birth = N'2004-09-03', gender = N'Nam', address = N'934 Lê Đức Thọ, Quận Gò Vấp, TP.HCM', citizen_id_card = N'079004003536'
WHERE username = N'SV044';

UPDATE Profiles
SET date_of_birth = N'2004-11-09', gender = N'Nữ', address = N'935 Thống Nhất, Quận Gò Vấp, TP.HCM', citizen_id_card = N'079004003637'
WHERE username = N'SV045';

UPDATE Profiles
SET date_of_birth = N'2005-01-15', gender = N'Nam', address = N'936 Nguyễn Oanh, Quận Gò Vấp, TP.HCM', citizen_id_card = N'079005003738'
WHERE username = N'SV046';

UPDATE Profiles
SET date_of_birth = N'2005-03-23', gender = N'Nữ', address = N'937 Hà Huy Giáp, Quận 12, TP.HCM', citizen_id_card = N'079005003839'
WHERE username = N'SV047';

UPDATE Profiles
SET date_of_birth = N'2005-05-30', gender = N'Nam', address = N'938 Lê Văn Khương, Quận 12, TP.HCM', citizen_id_card = N'079005003940'
WHERE username = N'SV048';

UPDATE Profiles
SET date_of_birth = N'2005-08-05', gender = N'Nữ', address = N'939 Nguyễn Ảnh Thủ, Quận 12, TP.HCM', citizen_id_card = N'079005004041'
WHERE username = N'SV049';

UPDATE Profiles
SET date_of_birth = N'2005-10-12', gender = N'Nam', address = N'940 Tô Ký, Quận 12, TP.HCM', citizen_id_card = N'079005004142'
WHERE username = N'SV050';

-- UPDATE Profiles cho giáo viên (GV011 -> GV020)
UPDATE Profiles
SET date_of_birth = N'1980-05-10', gender = N'Nam', address = N'1001 Lê Văn Việt, Quận 9, TP.HCM', citizen_id_card = N'025980001212'
WHERE username = N'GV011';

UPDATE Profiles
SET date_of_birth = N'1982-08-15', gender = N'Nữ', address = N'1002 Võ Văn Ngân, Thủ Đức, TP.HCM', citizen_id_card = N'025982001313'
WHERE username = N'GV012';

UPDATE Profiles
SET date_of_birth = N'1978-10-20', gender = N'Nam', address = N'1003 Hoàng Diệu 2, Thủ Đức, TP.HCM', citizen_id_card = N'025978001414'
WHERE username = N'GV013';

UPDATE Profiles
SET date_of_birth = N'1985-12-25', gender = N'Nữ', address = N'1004 Kha Vạn Cân, Thủ Đức, TP.HCM', citizen_id_card = N'025985001515'
WHERE username = N'GV014';

UPDATE Profiles
SET date_of_birth = N'1983-02-28', gender = N'Nam', address = N'1005 Đặng Văn Bi, Thủ Đức, TP.HCM', citizen_id_card = N'025983001616'
WHERE username = N'GV015';

UPDATE Profiles
SET date_of_birth = N'1988-04-05', gender = N'Nữ', address = N'1006 Tô Ngọc Vân, Thủ Đức, TP.HCM', citizen_id_card = N'025988001717'
WHERE username = N'GV016';

UPDATE Profiles
SET date_of_birth = N'1981-06-12', gender = N'Nam', address = N'1007 Phạm Văn Đồng, Thủ Đức, TP.HCM', citizen_id_card = N'025981001818'
WHERE username = N'GV017';

UPDATE Profiles
SET date_of_birth = N'1986-09-18', gender = N'Nam', address = N'1008 Quốc Lộ 1A, Thủ Đức, TP.HCM', citizen_id_card = N'025986001919'
WHERE username = N'GV018';

UPDATE Profiles
SET date_of_birth = N'1984-11-24', gender = N'Nữ', address = N'1009 Quốc Lộ 1K, Thủ Đức, TP.HCM', citizen_id_card = N'025984002020'
WHERE username = N'GV019';

UPDATE Profiles
SET date_of_birth = N'1989-01-30', gender = N'Nữ', address = N'1010 Quốc Lộ 13, Thủ Đức, TP.HCM', citizen_id_card = N'025989002121'
WHERE username = N'GV020';

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

-- Thêm dữ liệu cho bảng Notifications
INSERT INTO Notifications (notify_header, notify_day, notify_description) VALUES
(N'Thông báo: Lịch nghỉ lễ 30/4 và 1/5', N'2024-04-15', N'UIT sẽ nghỉ lễ 30/4 và 1/5. Sinh viên sẽ trở lại học tập vào ngày 2/5.'),
(N'Đăng ký học kỳ 2, 2024-2025', N'2024-07-25', N'Cổng đăng ký môn học trực tuyến sẽ mở từ ngày 25/07/2024 đến hết ngày 10/08/2024.'),
(N'Hội thảo ATTT trong kỷ nguyên số', N'2024-05-10', N'Khoa CNTT tổ chức hội thảo "An toàn thông tin trong kỷ nguyên số" vào 8h00 ngày 15/05/2024 tại Hội trường A.'),
(N'Lịch thi học kỳ 1, 2023-2024', N'2023-12-01', N'Phòng Đào tạo thông báo lịch thi học kỳ 1 năm học 2023 - 2024. Sinh viên xem chi tiết tại website của Phòng Đào tạo.'),
(N'Thông báo đóng học phí kỳ 1, 2024-2025', N'2024-01-05', N'Sinh viên lưu ý hoàn thành đóng học phí học kỳ 1 năm học 2023 - 2024 trước ngày 20/01/2024. Các trường hợp đóng trễ sẽ bị xử lý theo quy định.'),
(N'Thông báo: Về việc gia hạn đóng học phí', N'2024-04-20', N'Phòng Đào Tạo thông báo gia hạn đóng học phí học kỳ 2 năm học 2023 - 2024 đến hết ngày 15/05/2024.'),
(N'Lịch thi Olympic Tin học', N'2024-05-05', N'Khoa CNTT thông báo lịch thi Olympic Tin học sinh viên lần thứ 30. Sinh viên đăng ký dự thi tại website của Khoa.'),
(N'Hội thảo Hướng nghiệp cho sinh viên', N'2024-05-25', N'Trường ĐH CNTT tổ chức hội thảo "Hướng nghiệp cho sinh viên" vào 8h00 ngày 30/05/2024 tại Hội trường E.'),
(N'Thông báo học bổng khuyến khích học tập', N'2024-06-10', N'Phòng Công tác sinh viên thông báo danh sách sinh viên được xét học bổng khuyến khích học tập học kỳ 2, 2023-2024.'),
(N'Đăng ký tham gia CLB Tin học', N'2024-07-01', N'CLB Tin học UIT thông báo tuyển thành viên mới. Sinh viên yêu thích lập trình đăng ký tham gia tại website của CLB.');
GO

-- Thêm điểm cho sinh viên trong các lớp học
-- Lấy danh sách tất cả các sinh viên và lớp học của họ
SELECT s.student_id, c.class_id
INTO #StudentClasses
FROM Students s
JOIN StudentRegistrations sr ON s.student_id = sr.student_id
JOIN Classes c ON sr.class_id = c.class_id
ORDER BY s.student_id, c.class_id;

-- Lặp qua từng sinh viên và lớp học
DECLARE @student_id NVARCHAR(10);
DECLARE @class_id NVARCHAR(10);

DECLARE student_class_cursor CURSOR FOR
SELECT student_id, class_id
FROM #StudentClasses;

OPEN student_class_cursor;
FETCH NEXT FROM student_class_cursor INTO @student_id, @class_id;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Thêm điểm cho sinh viên trong lớp học
    -- Ví dụ: Điểm từ 6.0 đến 10.0, trọng số BT1: 0.1, BT2: 0.1, GK: 0.3, CK: 0.5
    -- Bạn có thể thay đổi trọng số tùy theo yêu cầu

    -- Kiểm tra xem sinh viên đã có điểm trong lớp này chưa
    IF NOT EXISTS (
        SELECT 1
        FROM StudentResults sr
        JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
        WHERE srg.student_id = @student_id AND srg.class_id = @class_id
    )
    BEGIN
        -- Nếu chưa có, thêm bản ghi StudentRegistrations mới (trigger trg_CreateStudentResult sẽ tự động tạo StudentResults)
        INSERT INTO StudentRegistrations (registration_id, student_id, class_id, registration_date, status, reason)
        VALUES (NEWID(), @student_id, @class_id, GETDATE(), N'accepted', NULL);
    END

    -- Sinh viên SV001, lớp IT001-PM1 đã có điểm từ trước, bỏ qua
    IF @student_id = N'SV001' AND @class_id = N'IT001-PM1'
    BEGIN
        FETCH NEXT FROM student_class_cursor INTO @student_id, @class_id;
        CONTINUE;
    END;

     -- Sinh viên SV002, lớp IT001-PM1 đã có điểm từ trước, bỏ qua
    IF @student_id = N'SV002' AND @class_id = N'IT001-PM1'
    BEGIN
        FETCH NEXT FROM student_class_cursor INTO @student_id, @class_id;
        CONTINUE;
    END;

     -- Sinh viên SV003, lớp IT001-PM2 đã có điểm từ trước, bỏ qua
    IF @student_id = N'SV003' AND @class_id = N'IT001-PM2'
    BEGIN
        FETCH NEXT FROM student_class_cursor INTO @student_id, @class_id;
        CONTINUE;
    END;

    -- Sinh viên SV011, lớp IT001-PM3 đã có điểm từ trước, bỏ qua
    IF @student_id = N'SV011' AND @class_id = N'IT001-PM3'
    BEGIN
        FETCH NEXT FROM student_class_cursor INTO @student_id, @class_id;
        CONTINUE;
    END;

    -- Sinh viên SV012, lớp IT001-PM3 đã có điểm từ trước, bỏ qua
    IF @student_id = N'SV012' AND @class_id = N'IT001-PM3'
    BEGIN
        FETCH NEXT FROM student_class_cursor INTO @student_id, @class_id;
        CONTINUE;
    END;

    -- Sinh viên SV013, lớp IT002-CD2 đã có điểm từ trước, bỏ qua
    IF @student_id = N'SV013' AND @class_id = N'IT002-CD2'
    BEGIN
        FETCH NEXT FROM student_class_cursor INTO @student_id, @class_id;
        CONTINUE;
    END;
    -- Sinh viên SV014, lớp IT002-CD2 đã có điểm từ trước, bỏ qua
    IF @student_id = N'SV014' AND @class_id = N'IT002-CD2'
    BEGIN
        FETCH NEXT FROM student_class_cursor INTO @student_id, @class_id;
        CONTINUE;
    END;

    -- Sinh viên SV015, lớp IT003-WEB1 đã có điểm từ trước, bỏ qua
    IF @student_id = N'SV015' AND @class_id = N'IT003-WEB1'
    BEGIN
        FETCH NEXT FROM student_class_cursor INTO @student_id, @class_id;
        CONTINUE;
    END;

    -- Kiểm tra xem sinh viên đã có điểm cho từng cột điểm chưa
    IF NOT EXISTS (
        SELECT 1
        FROM ResultColumns rc
        JOIN StudentResults sr ON rc.student_results_id = sr.student_results_id
        JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
        WHERE srg.student_id = @student_id AND srg.class_id = @class_id
    )
    BEGIN
        -- Thêm điểm Bài tập 1
        INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
        SELECT sr.student_results_id, N'Bài tập 1', 6.0 + RAND() * 4.0, 0.1
        FROM StudentResults sr
        JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
        WHERE srg.student_id = @student_id AND srg.class_id = @class_id;

        -- Thêm điểm Bài tập 2
        INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
        SELECT sr.student_results_id, N'Bài tập 2', 6.0 + RAND() * 4.0, 0.1
        FROM StudentResults sr
        JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
        WHERE srg.student_id = @student_id AND srg.class_id = @class_id;

        -- Thêm điểm Giữa kỳ
        INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
        SELECT sr.student_results_id, N'Giữa kỳ', 6.0 + RAND() * 4.0, 0.3
        FROM StudentResults sr
        JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
        WHERE srg.student_id = @student_id AND srg.class_id = @class_id;

        -- Thêm điểm Cuối kỳ
        INSERT INTO ResultColumns (student_results_id, column_name, grade, weight)
        SELECT sr.student_results_id, N'Cuối kỳ', 6.0 + RAND() * 4.0, 0.5
        FROM StudentResults sr
        JOIN StudentRegistrations srg ON sr.registration_id = srg.registration_id
        WHERE srg.student_id = @student_id AND srg.class_id = @class_id;
    END;

    FETCH NEXT FROM student_class_cursor INTO @student_id, @class_id;
END;

CLOSE student_class_cursor;
DEALLOCATE student_class_cursor;

DROP TABLE #StudentClasses;
GO