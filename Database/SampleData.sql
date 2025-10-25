USE Edulink;

-- ========================================
-- 1. INSERT ADMIN
-- ========================================
INSERT INTO admin (user_name, password) VALUES
('admin', 'Admin@123'),
('principal', 'Principal@456'),
('vice_principal', 'Vice@789');

-- ========================================
-- 2. INSERT SUBJECTS (Sri Lankan Curriculum - Grades 6-11)
-- ========================================
INSERT INTO subject (sub_id, name) VALUES
(1, 'Mathematics'),
(2, 'Science'),
(3, 'English Language'),
(4, 'Sinhala Language'),
(5, 'Tamil Language'),
(6, 'History'),
(7, 'Geography'),
(8, 'Buddhism'),
(9, 'Hinduism'),
(10, 'Christianity'),
(11, 'Islam'),
(12, 'Health & Physical Education'),
(13, 'Art'),
(14, 'Music'),
(15, 'Dancing'),
(16, 'Business Studies'),
(17, 'Commerce'),
(18, 'Accounting'),
(19, 'Economics'),
(20, 'Information & Communication Technology'),
(21, 'Agriculture'),
(22, 'Home Science'),
(23, 'Western Music'),
(24, 'Drama & Theatre'),
(25, 'Practical & Technical Studies'),
(26, 'Citizenship Education'),
(27, 'Life Skills');
-- ========================================
-- 3. INSERT TEACHERS (30 Teachers)
-- ========================================
INSERT INTO teacher (teach_id, full_name, user_name, password, gender, email, mobile, qualifications, sub_id, hire_date) VALUES
(1, 'K.G. Perera', 'kgperera', 'Pass@123', 'M', 'kgperera@edulink.lk', '0771234567', 'BSc Mathematics (Hons), PGDE', 1, '2015-01-05'),
(2, 'S.M. Fernando', 'smfernando', 'Pass@124', 'F', 'smfernando@edulink.lk', '0772234568', 'BSc Mathematics, Dip in Education', 1, '2016-03-10'),
(3, 'R.P. Silva', 'rpsilva', 'Pass@125', 'M', 'rpsilva@edulink.lk', '0773234569', 'BSc Science (Hons), PGDE', 2, '2014-06-15'),
(4, 'N.K. Jayawardena', 'nkjayawardena', 'Pass@126', 'F', 'nkjayawardena@edulink.lk', '0774234570', 'BSc Biological Science, PGDE', 2, '2017-01-20'),
(5, 'A.D. Gunawardena', 'adgunawardena', 'Pass@127', 'M', 'adgunawardena@edulink.lk', '0775234571', 'BA English (Hons), MA TESOL', 3, '2015-08-12'),
(6, 'T.M. Dissanayake', 'tmdissanayake', 'Pass@128', 'F', 'tmdissanayake@edulink.lk', '0776234572', 'BA English, CELTA', 3, '2018-02-14'),
(7, 'W.A. Wickramasinghe', 'wawickramasinghe', 'Pass@129', 'M', 'wawickramasinghe@edulink.lk', '0777234573', 'BA Sinhala (Hons), PGDE', 4, '2013-04-18'),
(8, 'K.S. Rajapakse', 'ksrajapakse', 'Pass@130', 'F', 'ksrajapakse@edulink.lk', '0778234574', 'BA Sinhala, Dip in Education', 4, '2016-07-22'),
(9, 'M.S. Sivasubramaniam', 'mssivasubramaniam', 'Pass@131', 'M', 'mssivasubramaniam@edulink.lk', '0779234575', 'BA Tamil (Hons), PGDE', 5, '2014-09-10'),
(10, 'H.M. Wijesinghe', 'hmwijesinghe', 'Pass@132', 'F', 'hmwijesinghe@edulink.lk', '0770234576', 'BA History (Hons), MA', 6, '2015-11-05'),
(11, 'D.S. Mendis', 'dsmendis', 'Pass@133', 'M', 'dsmendis@edulink.lk', '0771334577', 'BA Geography (Hons), PGDE', 7, '2016-01-15'),
(12, 'P.K. Rathnayake', 'pkrathnayake', 'Pass@134', 'M', 'pkrathnayake@edulink.lk', '0772334578', 'BA Buddhist Studies, Dip in Education', 8, '2013-03-20'),
(13, 'R.S. Chandrasekara', 'rschandrasekara', 'Pass@135', 'M', 'rschandrasekara@edulink.lk', '0773334579', 'BA Hindu Philosophy', 9, '2014-05-25'),
(14, 'A.J. Fernando', 'ajfernando', 'Pass@136', 'F', 'ajfernando@edulink.lk', '0774334580', 'BA Christian Studies', 10, '2016-07-30'),
(15, 'F.M. Hassan', 'fmhassan', 'Pass@137', 'M', 'fmhassan@edulink.lk', '0775334581', 'BA Islamic Studies', 11, '2015-09-12'),
(16, 'L.M. Samaraweera', 'lmsamaraweera', 'Pass@138', 'F', 'lmsamaraweera@edulink.lk', '0776334582', 'BPE, PGDE', 12, '2017-11-08'),
(17, 'R.A. Bandara', 'rabandara', 'Pass@139', 'M', 'rabandara@edulink.lk', '0777334583', 'BA Fine Arts (Hons)', 13, '2015-01-12'),
(18, 'S.P. Kumara', 'spkumara', 'Pass@140', 'M', 'spkumara@edulink.lk', '0778334584', 'BA Music, Dip in Education', 14, '2016-03-18'),
(19, 'N.D. Perera', 'ndperera', 'Pass@141', 'F', 'ndperera@edulink.lk', '0779334585', 'BA Dance, PGDE', 15, '2017-05-22'),
(20, 'N.S. De Silva', 'nsdesilva', 'Pass@142', 'F', 'nsdesilva@edulink.lk', '0770434586', 'BCom (Hons), PGDE', 16, '2014-07-14'),
(21, 'A.K. Jayasuriya', 'akjayasuriya', 'Pass@143', 'M', 'akjayasuriya@edulink.lk', '0771434587', 'BCom Accounting, ACCA', 18, '2017-09-28'),
(22, 'M.R. Gunasekara', 'mrgunasekara', 'Pass@144', 'F', 'mrgunasekara@edulink.lk', '0772434588', 'BSc IT (Hons), PGDE', 20, '2016-11-10'),
(23, 'B.G. Amarasinghe', 'bgamarasinghe', 'Pass@145', 'M', 'bgamarasinghe@edulink.lk', '0773434589', 'BSc Agriculture, MSc', 21, '2015-01-14'),
(24, 'V.P. Herath', 'vpherath', 'Pass@146', 'F', 'vpherath@edulink.lk', '0774434590', 'BSc Home Science, PGDE', 22, '2018-03-20'),
(25, 'C.D. Ranasinghe', 'cdranasinghe', 'Pass@147', 'M', 'cdranasinghe@edulink.lk', '0775434591', 'BA Music (Western)', 23, '2014-05-25'),
(26, 'I.K. Alwis', 'ikalwis', 'Pass@148', 'F', 'ikalwis@edulink.lk', '0776434592', 'BA Drama & Theatre', 24, '2015-07-30'),
(27, 'U.L. Rodrigo', 'ulrodrigo', 'Pass@149', 'M', 'ulrodrigo@edulink.lk', '0777434593', 'BSc Technology Education', 25, '2017-09-15'),
(28, 'G.H. Seneviratne', 'ghseneviratne', 'Pass@150', 'F', 'ghseneviratne@edulink.lk', '0778434594', 'BA Civic Education', 26, '2016-11-20'),
(29, 'J.M. Pathirana', 'jmpathirana', 'Pass@151', 'M', 'jmpathirana@edulink.lk', '0779434595', 'BSc Psychology, PGDE', 27, '2018-01-25'),
(30, 'P.L. Wickremasinghe', 'plwickremasinghe', 'Pass@152', 'F', 'plwickremasinghe@edulink.lk', '0770534596', 'BCom Economics (Hons)', 19, '2015-03-30');

-- ========================================
-- 4. INSERT CLASSES
-- ========================================
INSERT INTO class (class_name, room_no) VALUES
('6A', 101),
('6B', 102),
('7A', 201),
('7B', 202),
('8A', 301),
('8B', 302),
('9A', 401),
('9B', 402),
('10A', 501),
('10B', 502),
('11A', 601),
('11B', 602);

-- ========================================
-- 5. INSERT YEARS
-- ========================================
INSERT INTO year (year_name) VALUES
('2023'),
('2024'),
('2025');

-- ========================================
-- 6. INSERT TERMS
-- ========================================
INSERT INTO term (year_name, term_name, start_date, end_date) VALUES
('2023', 'First', '2023-01-15', '2023-04-30'),
('2023', 'Second', '2023-05-15', '2023-08-31'),
('2023', 'Third', '2023-09-15', '2023-12-15'),
('2024', 'First', '2024-01-15', '2024-04-30'),
('2024', 'Second', '2024-05-15', '2024-08-31'),
('2024', 'Third', '2024-09-15', '2024-12-15'),
('2025', 'First', '2025-01-15', '2025-04-30'),
('2025', 'Second', '2025-05-15', '2025-08-31'),
('2025', 'Third', '2025-09-15', '2025-12-15');

-- ========================================
-- 7. INSERT PARENTS (60 Parents)
-- ========================================
INSERT INTO parent (parent_id, full_name, relationship, address, mobile, user_name, password, email) VALUES
(1, 'R.M. Perera', 'Father', 'No. 45, Galle Road, Colombo 03', '0712345678', 'rmperera', 'Parent@001', 'rmperera@gmail.com'),
(2, 'S.K. Silva', 'Mother', 'No. 12, Kandy Road, Peradeniya', '0723456789', 'sksilva', 'Parent@002', 'sksilva@gmail.com'),
(3, 'A.D. Fernando', 'Father', 'No. 78, Temple Road, Negombo', '0734567890', 'adfernando', 'Parent@003', 'adfernando@yahoo.com'),
(4, 'N.P. Jayawardena', 'Mother', 'No. 23, Main Street, Kurunegala', '0745678901', 'npjayawardena', 'Parent@004', 'npjayawardena@hotmail.com'),
(5, 'K.L. Wijesinghe', 'Father', 'No. 56, Hill Street, Kandy', '0756789012', 'klwijesinghe', 'Parent@005', 'klwijesinghe@gmail.com'),
(6, 'M.A. Dissanayake', 'Mother', 'No. 89, Lake Road, Nuwara Eliya', '0767890123', 'madissanayake', 'Parent@006', 'madissanayake@gmail.com'),
(7, 'P.R. Gunawardena', 'Father', 'No. 34, Station Road, Galle', '0778901234', 'prgunawardena', 'Parent@007', 'prgunawardena@yahoo.com'),
(8, 'L.K. Rajapakse', 'Mother', 'No. 67, Church Street, Matara', '0789012345', 'lkrajapakse', 'Parent@008', 'lkrajapakse@gmail.com'),
(9, 'D.S. Wickramasinghe', 'Father', 'No. 91, Beach Road, Trincomalee', '0790123456', 'dswickramasinghe', 'Parent@009', 'dswickramasinghe@hotmail.com'),
(10, 'H.M. Mendis', 'Mother', 'No. 15, Park Avenue, Colombo 07', '0701234567', 'hmmendis', 'Parent@010', 'hmmendis@gmail.com'),
(11, 'B.G. Rathnayake', 'Father', 'No. 42, School Lane, Anuradhapura', '0712345679', 'bgrathnayake', 'Parent@011', 'bgrathnayake@yahoo.com'),
(12, 'C.P. Samaraweera', 'Mother', 'No. 58, Market Street, Badulla', '0723456780', 'cpsamaraweera', 'Parent@012', 'cpsamaraweera@gmail.com'),
(13, 'V.A. Bandara', 'Father', 'No. 73, Hospital Road, Ratnapura', '0734567891', 'vabandara', 'Parent@013', 'vabandara@hotmail.com'),
(14, 'I.S. Kumara', 'Mother', 'No. 26, Bridge Street, Jaffna', '0745678902', 'iskumara', 'Parent@014', 'iskumara@gmail.com'),
(15, 'U.K. De Silva', 'Father', 'No. 81, Railway Avenue, Gampaha', '0756789013', 'ukdesilva', 'Parent@015', 'ukdesilva@yahoo.com'),
(16, 'G.R. Jayasuriya', 'Mother', 'No. 39, Green Road, Kalutara', '0767890124', 'grjayasuriya', 'Parent@016', 'grjayasuriya@gmail.com'),
(17, 'J.M. Gunasekara', 'Father', 'No. 64, River View, Kegalle', '0778901235', 'jmgunasekara', 'Parent@017', 'jmgunasekara@hotmail.com'),
(18, 'F.L. Amarasinghe', 'Mother', 'No. 97, Hill Top, Matale', '0789012346', 'flamarasinghe', 'Parent@018', 'flamarasinghe@gmail.com'),
(19, 'T.N. Herath', 'Father', 'No. 18, Sea View, Hambantota', '0790123457', 'tnherath', 'Parent@019', 'tnherath@yahoo.com'),
(20, 'E.P. Ranasinghe', 'Mother', 'No. 51, Garden Lane, Batticaloa', '0701234568', 'epranasinghe', 'Parent@020', 'epranasinghe@gmail.com'),
(21, 'O.D. Alwis', 'Father', 'No. 76, Temple Lane, Polonnaruwa', '0712345680', 'odalwis', 'Parent@021', 'odalwis@hotmail.com'),
(22, 'Q.K. Rodrigo', 'Mother', 'No. 33, College Street, Kilinochchi', '0723456781', 'qkrodrigo', 'Parent@022', 'qkrodrigo@gmail.com'),
(23, 'W.S. Seneviratne', 'Father', 'No. 88, Main Road, Vavuniya', '0734567892', 'wsseneviratne', 'Parent@023', 'wsseneviratne@yahoo.com'),
(24, 'Y.A. Pathirana', 'Mother', 'No. 44, Lake View, Ampara', '0745678903', 'yapathirana', 'Parent@024', 'yapathirana@gmail.com'),
(25, 'Z.M. Liyanage', 'Father', 'No. 69, Park Road, Monaragala', '0756789014', 'zmliyanage', 'Parent@025', 'zmliyanage@hotmail.com'),
(26, 'X.P. Senanayake', 'Mother', 'No. 22, Beach Avenue, Puttalam', '0767890125', 'xpsenanayake', 'Parent@026', 'xpsenanayake@gmail.com'),
(27, 'N.R. Karunaratne', 'Father', 'No. 55, Station Lane, Mannar', '0778901236', 'nrkarunaratne', 'Parent@027', 'nrkarunaratne@yahoo.com'),
(28, 'L.D. Wijesekara', 'Mother', 'No. 90, Church Road, Mullaitivu', '0789012347', 'ldwijesekara', 'Parent@028', 'ldwijesekara@gmail.com'),
(29, 'K.H. Nanayakkara', 'Father', 'No. 17, School Street, Colombo 05', '0790123458', 'khnanayakkara', 'Parent@029', 'khnanayakkara@hotmail.com'),
(30, 'M.S. Abeysinghe', 'Mother', 'No. 46, Market Lane, Colombo 10', '0701234569', 'msabeysinghe', 'Parent@030', 'msabeysinghe@gmail.com'),
(31, 'R.K. Ekanayake', 'Father', 'No. 71, Temple Street, Chilaw', '0712345681', 'rkekanayake', 'Parent@031', 'rkekanayake@yahoo.com'),
(32, 'S.L. Ranaweera', 'Mother', 'No. 38, Hill Road, Embilipitiya', '0723456782', 'slranaweera', 'Parent@032', 'slranaweera@gmail.com'),
(33, 'A.M. Wijegunawardena', 'Father', 'No. 63, River Road, Trincomalee', '0734567893', 'amwijegunawardena', 'Parent@033', 'amwijegunawardena@hotmail.com'),
(34, 'T.P. Chandrasekara', 'Mother', 'No. 29, Green Street, Ampara', '0745678904', 'tpchandrasekara', 'Parent@034', 'tpchandrasekara@gmail.com'),
(35, 'V.S. Gamage', 'Father', 'No. 84, Park Lane, Hatton', '0756789015', 'vsgamage', 'Parent@035', 'vsgamage@yahoo.com'),
(36, 'I.R. Cooray', 'Mother', 'No. 41, Sea Road, Beruwala', '0767890126', 'ircooray', 'Parent@036', 'ircooray@gmail.com'),
(37, 'U.D. Peiris', 'Father', 'No. 66, Lake Street, Colombo 02', '0778901237', 'udpeiris', 'Parent@037', 'udpeiris@hotmail.com'),
(38, 'G.K. Abeysekara', 'Mother', 'No. 93, Hospital Lane, Horana', '0789012348', 'gkabeysekara', 'Parent@038', 'gkabeysekara@gmail.com'),
(39, 'J.L. Fonseka', 'Father', 'No. 19, Bridge Road, Negombo', '0790123459', 'jlfonseka', 'Parent@039', 'jlfonseka@yahoo.com'),
(40, 'F.N. Siriwardena', 'Mother', 'No. 52, Railway Road, Battaramulla', '0701234570', 'fnsiriwardena', 'Parent@040', 'fnsiriwardena@gmail.com'),
(41, 'H.A. Jayasinghe', 'Father', 'No. 77, Garden Street, Mount Lavinia', '0712345682', 'hajayasinghe', 'Parent@041', 'hajayasinghe@hotmail.com'),
(42, 'D.P. Kumarasiri', 'Mother', 'No. 35, College Road, Dehiwala', '0723456783', 'dpkumarasiri', 'Parent@042', 'dpkumarasiri@gmail.com'),
(43, 'B.R. Thilakasiri', 'Father', 'No. 68, Main Street, Maharagama', '0734567894', 'brthilakasiri', 'Parent@043', 'brthilakasiri@yahoo.com'),
(44, 'C.S. Wickramaarachchi', 'Mother', 'No. 31, Beach Lane, Panadura', '0745678905', 'cswickramaarachchi', 'Parent@044', 'cswickramaarachchi@gmail.com'),
(45, 'E.K. Rajapaksha', 'Father', 'No. 86, Hill Street, Kelaniya', '0756789016', 'ekrajapaksha', 'Parent@045', 'ekrajapaksha@hotmail.com'),
(46, 'P.M. Weerasinghe', 'Mother', 'No. 43, Park Avenue, Kaduwela', '0767890127', 'pmweerasinghe', 'Parent@046', 'pmweerasinghe@gmail.com'),
(47, 'O.L. Gunaratne', 'Father', 'No. 69, Temple Road, Piliyandala', '0778901238', 'olgunaratne', 'Parent@047', 'olgunaratne@yahoo.com'),
(48, 'Q.N. Jayawardana', 'Mother', 'No. 94, Market Street, Moratuwa', '0789012349', 'qnjayawardana', 'Parent@048', 'qnjayawardana@gmail.com'),
(49, 'W.R. Perera', 'Father', 'No. 21, Station Road, Ragama', '0790123460', 'wrperera', 'Parent@049', 'wrperera@hotmail.com'),
(50, 'Y.S. Silva', 'Mother', 'No. 54, Church Street, Wattala', '0701234571', 'yssilva', 'Parent@050', 'yssilva@gmail.com'),
(51, 'Z.K. Herath', 'Father', 'No. 27, Beach Road, Hikkaduwa', '0712345683', 'zkherath', 'Parent@051', 'zkherath@yahoo.com'),
(52, 'A.S. Ranatunga', 'Mother', 'No. 49, Hill View, Kandy', '0723456784', 'asranatunga', 'Parent@052', 'asranatunga@gmail.com'),
(53, 'B.L. Chandana', 'Father', 'No. 72, Lake Road, Kurunegala', '0734567895', 'blchandana', 'Parent@053', 'blchandana@hotmail.com'),
(54, 'C.N. Perera', 'Mother', 'No. 36, Temple Lane, Galle', '0745678906', 'cnperera', 'Parent@054', 'cnperera@gmail.com'),
(55, 'D.K. Silva', 'Father', 'No. 61, Main Road, Matara', '0756789017', 'dksilva', 'Parent@055', 'dksilva@yahoo.com'),
(56, 'E.M. Fernando', 'Mother', 'No. 85, Park Street, Negombo', '0767890128', 'emfernando', 'Parent@056', 'emfernando@gmail.com'),
(57, 'F.P. Jayawardena', 'Father', 'No. 14, College Road, Colombo 08', '0778901239', 'fpjayawardena', 'Parent@057', 'fpjayawardena@hotmail.com'),
(58, 'G.R. Wijesinghe', 'Mother', 'No. 48, Sea View, Colombo 15', '0789012350', 'grwijesinghe', 'Parent@058', 'grwijesinghe@gmail.com'),
(59, 'H.S. Dissanayake', 'Father', 'No. 73, River Road, Gampaha', '0790123461', 'hsdissanayake', 'Parent@059', 'hsdissanayake@yahoo.com'),
(60, 'I.L. Gunawardena', 'Mother', 'No. 37, Station Lane, Kalutara', '0701234572', 'ilgunawardena', 'Parent@060', 'ilgunawardena@gmail.com');
-- ========================================
-- 8. INSERT STUDENTS (120 Students - 10 per class)
-- ========================================
INSERT INTO student (initials, f_name, l_name, dob, gender, address, parent_id) VALUES
-- Grade 6A (10 students)
('K.A.', 'Kasun', 'Perera', '2013-03-15', 'M', 'No. 45, Galle Road, Colombo 03', 1),
('S.M.', 'Sachini', 'Silva', '2013-05-20', 'F', 'No. 12, Kandy Road, Peradeniya', 2),
('A.D.', 'Amal', 'Fernando', '2013-07-10', 'M', 'No. 78, Temple Road, Negombo', 3),
('N.P.', 'Nimesha', 'Jayawardena', '2013-09-25', 'F', 'No. 23, Main Street, Kurunegala', 4),
('K.L.', 'Kavinda', 'Wijesinghe', '2013-11-30', 'M', 'No. 56, Hill Street, Kandy', 5),
('M.A.', 'Malsha', 'Dissanayake', '2013-02-14', 'F', 'No. 89, Lake Road, Nuwara Eliya', 6),
('P.R.', 'Pasindu', 'Gunawardena', '2013-04-18', 'M', 'No. 34, Station Road, Galle', 7),
('L.K.', 'Lakshika', 'Rajapakse', '2013-06-22', 'F', 'No. 67, Church Street, Matara', 8),
('D.S.', 'Dinuka', 'Wickramasinghe', '2013-08-05', 'M', 'No. 91, Beach Road, Trincomalee', 9),
('H.M.', 'Hashini', 'Mendis', '2013-10-12', 'F', 'No. 15, Park Avenue, Colombo 07', 10),

-- Grade 6B (10 students)
('B.G.', 'Bhanuka', 'Rathnayake', '2013-01-08', 'M', 'No. 42, School Lane, Anuradhapura', 11),
('C.P.', 'Chanudi', 'Samaraweera', '2013-03-12', 'F', 'No. 58, Market Street, Badulla', 12),
('V.A.', 'Vimukthi', 'Bandara', '2013-05-16', 'M', 'No. 73, Hospital Road, Ratnapura', 13),
('I.S.', 'Ishara', 'Kumara', '2013-07-20', 'F', 'No. 26, Bridge Street, Jaffna', 14),
('U.K.', 'Ushan', 'De Silva', '2013-09-24', 'M', 'No. 81, Railway Avenue, Gampaha', 15),
('G.R.', 'Gihani', 'Jayasuriya', '2013-11-28', 'F', 'No. 39, Green Road, Kalutara', 16),
('J.M.', 'Janith', 'Gunasekara', '2013-02-02', 'M', 'No. 64, River View, Kegalle', 17),
('F.L.', 'Fathima', 'Amarasinghe', '2013-04-06', 'F', 'No. 97, Hill Top, Matale', 18),
('T.N.', 'Tharindu', 'Herath', '2013-06-10', 'M', 'No. 18, Sea View, Hambantota', 19),
('E.P.', 'Erandi', 'Ranasinghe', '2013-08-14', 'F', 'No. 51, Garden Lane, Batticaloa', 20),

-- Grade 7A (10 students)
('O.D.', 'Oshadha', 'Alwis', '2012-03-18', 'M', 'No. 76, Temple Lane, Polonnaruwa', 21),
('Q.K.', 'Quwani', 'Rodrigo', '2012-05-22', 'F', 'No. 33, College Street, Kilinochchi', 22),
('W.S.', 'Wasana', 'Seneviratne', '2012-07-26', 'M', 'No. 88, Main Road, Vavuniya', 23),
('Y.A.', 'Yashoda', 'Pathirana', '2012-09-30', 'F', 'No. 44, Lake View, Ampara', 24),
('Z.M.', 'Zayan', 'Liyanage', '2012-12-04', 'M', 'No. 69, Park Road, Monaragala', 25),
('X.P.', 'Xaviera', 'Senanayake', '2012-02-08', 'F', 'No. 22, Beach Avenue, Puttalam', 26),
('N.R.', 'Naveen', 'Karunaratne', '2012-04-12', 'M', 'No. 55, Station Lane, Mannar', 27),
('L.D.', 'Lakmini', 'Wijesekara', '2012-06-16', 'F', 'No. 90, Church Road, Mullaitivu', 28),
('K.H.', 'Kavindu', 'Nanayakkara', '2012-08-20', 'M', 'No. 17, School Street, Colombo 05', 29),
('M.S.', 'Madushi', 'Abeysinghe', '2012-10-24', 'F', 'No. 46, Market Lane, Colombo 10', 30),

-- Grade 7B (10 students)
('R.K.', 'Ravindu', 'Ekanayake', '2012-01-15', 'M', 'No. 71, Temple Street, Chilaw', 31),
('S.L.', 'Sanduni', 'Ranaweera', '2012-03-19', 'F', 'No. 38, Hill Road, Embilipitiya', 32),
('A.M.', 'Amesh', 'Wijegunawardena', '2012-05-23', 'M', 'No. 63, River Road, Trincomalee', 33),
('T.P.', 'Thilini', 'Chandrasekara', '2012-07-27', 'F', 'No. 29, Green Street, Ampara', 34),
('V.S.', 'Viraj', 'Gamage', '2012-09-01', 'M', 'No. 84, Park Lane, Hatton', 35),
('I.R.', 'Ishani', 'Cooray', '2012-11-05', 'F', 'No. 41, Sea Road, Beruwala', 36),
('U.D.', 'Udara', 'Peiris', '2012-01-09', 'M', 'No. 66, Lake Street, Colombo 02', 37),
('G.K.', 'Ganga', 'Abeysekara', '2012-03-13', 'F', 'No. 93, Hospital Lane, Horana', 38),
('J.L.', 'Jayan', 'Fonseka', '2012-05-17', 'M', 'No. 19, Bridge Road, Negombo', 39),
('F.N.', 'Fawzia', 'Siriwardena', '2012-07-21', 'F', 'No. 52, Railway Road, Battaramulla', 40),

-- Grade 8A (10 students)
('H.A.', 'Hirusha', 'Jayasinghe', '2011-03-25', 'M', 'No. 77, Garden Street, Mount Lavinia', 41),
('D.P.', 'Dilini', 'Kumarasiri', '2011-05-29', 'F', 'No. 35, College Road, Dehiwala', 42),
('B.R.', 'Binura', 'Thilakasiri', '2011-08-02', 'M', 'No. 68, Main Street, Maharagama', 43),
('C.S.', 'Chathumi', 'Wickramaarachchi', '2011-10-06', 'F', 'No. 31, Beach Lane, Panadura', 44),
('E.K.', 'Eshan', 'Rajapaksha', '2011-12-10', 'M', 'No. 86, Hill Street, Kelaniya', 45),
('P.M.', 'Piumini', 'Weerasinghe', '2011-02-14', 'F', 'No. 43, Park Avenue, Kaduwela', 46),
('O.L.', 'Oshan', 'Gunaratne', '2011-04-18', 'M', 'No. 69, Temple Road, Piliyandala', 47),
('Q.N.', 'Qiana', 'Jayawardana', '2011-06-22', 'F', 'No. 94, Market Street, Moratuwa', 48),
('W.R.', 'Wishwa', 'Perera', '2011-08-26', 'M', 'No. 21, Station Road, Ragama', 49),
('Y.S.', 'Yenuli', 'Silva', '2011-10-30', 'F', 'No. 54, Church Street, Wattala', 50),

-- Grade 8B (10 students)
('Z.K.', 'Zion', 'Herath', '2011-01-12', 'M', 'No. 27, Beach Road, Hikkaduwa', 51),
('A.S.', 'Anushka', 'Ranatunga', '2011-03-16', 'F', 'No. 49, Hill View, Kandy', 52),
('B.L.', 'Bineth', 'Chandana', '2011-05-20', 'M', 'No. 72, Lake Road, Kurunegala', 53),
('C.N.', 'Charuni', 'Perera', '2011-07-24', 'F', 'No. 36, Temple Lane, Galle', 54),
('D.K.', 'Dinal', 'Silva', '2011-09-28', 'M', 'No. 61, Main Road, Matara', 55),
('E.M.', 'Enumi', 'Fernando', '2011-12-02', 'F', 'No. 85, Park Street, Negombo', 56),
('F.P.', 'Faran', 'Jayawardena', '2011-02-06', 'M', 'No. 14, College Road, Colombo 08', 57),
('G.R.', 'Gayathri', 'Wijesinghe', '2011-04-10', 'F', 'No. 48, Sea View, Colombo 15', 58),
('H.S.', 'Hashan', 'Dissanayake', '2011-06-14', 'M', 'No. 73, River Road, Gampaha', 59),
('I.L.', 'Imasha', 'Gunawardena', '2011-08-18', 'F', 'No. 37, Station Lane, Kalutara', 60),

-- Grade 9A (10 students)
('J.K.', 'Janindu', 'Perera', '2010-04-05', 'M', 'No. 45, Galle Road, Colombo 03', 1),
('K.M.', 'Kaveesha', 'Silva', '2010-06-09', 'F', 'No. 12, Kandy Road, Peradeniya', 2),
('L.D.', 'Lahiru', 'Fernando', '2010-08-13', 'M', 'No. 78, Temple Road, Negombo', 3),
('M.P.', 'Methmi', 'Jayawardena', '2010-10-17', 'F', 'No. 23, Main Street, Kurunegala', 4),
('N.L.', 'Nimesh', 'Wijesinghe', '2010-12-21', 'M', 'No. 56, Hill Street, Kandy', 5),
('O.A.', 'Onali', 'Dissanayake', '2010-02-25', 'F', 'No. 89, Lake Road, Nuwara Eliya', 6),
('P.R.', 'Praveen', 'Gunawardena', '2010-04-29', 'M', 'No. 34, Station Road, Galle', 7),
('Q.K.', 'Quency', 'Rajapakse', '2010-07-03', 'F', 'No. 67, Church Street, Matara', 8),
('R.S.', 'Rahas', 'Wickramasinghe', '2010-09-07', 'M', 'No. 91, Beach Road, Trincomalee', 9),
('S.M.', 'Sithmi', 'Mendis', '2010-11-11', 'F', 'No. 15, Park Avenue, Colombo 07', 10),

-- Grade 9B (10 students)
('T.G.', 'Tharusha', 'Rathnayake', '2010-01-22', 'M', 'No. 42, School Lane, Anuradhapura', 11),
('U.P.', 'Upeksha', 'Samaraweera', '2010-03-26', 'F', 'No. 58, Market Street, Badulla', 12),
('V.A.', 'Vinuka', 'Bandara', '2010-05-30', 'M', 'No. 73, Hospital Road, Ratnapura', 13),
('W.S.', 'Wathsala', 'Kumara', '2010-08-03', 'F', 'No. 26, Bridge Street, Jaffna', 14),
('X.K.', 'Xavier', 'De Silva', '2010-10-07', 'M', 'No. 81, Railway Avenue, Gampaha', 15),
('Y.R.', 'Yashmi', 'Jayasuriya', '2010-12-11', 'F', 'No. 39, Green Road, Kalutara', 16),
('Z.M.', 'Zimal', 'Gunasekara', '2010-02-15', 'M', 'No. 64, River View, Kegalle', 17),
('A.L.', 'Amaya', 'Amarasinghe', '2010-04-19', 'F', 'No. 97, Hill Top, Matale', 18),
('B.N.', 'Bimal', 'Herath', '2010-06-23', 'M', 'No. 18, Sea View, Hambantota', 19),
('C.P.', 'Chamudi', 'Ranasinghe', '2010-08-27', 'F', 'No. 51, Garden Lane, Batticaloa', 20),

-- Grade 10A (10 students)
('D.D.', 'Dhananjaya', 'Alwis', '2009-04-15', 'M', 'No. 76, Temple Lane, Polonnaruwa', 21),
('E.K.', 'Elora', 'Rodrigo', '2009-06-19', 'F', 'No. 33, College Street, Kilinochchi', 22),
('F.S.', 'Fawaz', 'Seneviratne', '2009-08-23', 'M', 'No. 88, Main Road, Vavuniya', 23),
('G.A.', 'Gayani', 'Pathirana', '2009-10-27', 'F', 'No. 44, Lake View, Ampara', 24),
('H.M.', 'Hasitha', 'Liyanage', '2009-12-31', 'M', 'No. 69, Park Road, Monaragala', 25),
('I.P.', 'Iresha', 'Senanayake', '2009-03-04', 'F', 'No. 22, Beach Avenue, Puttalam', 26),
('J.R.', 'Jayoda', 'Karunaratne', '2009-05-08', 'M', 'No. 55, Station Lane, Mannar', 27),
('K.D.', 'Kavisha', 'Wijesekara', '2009-07-12', 'F', 'No. 90, Church Road, Mullaitivu', 28),
('L.H.', 'Lahiru', 'Nanayakkara', '2009-09-16', 'M', 'No. 17, School Street, Colombo 05', 29),
('M.S.', 'Menaka', 'Abeysinghe', '2009-11-20', 'F', 'No. 46, Market Lane, Colombo 10', 30),

-- Grade 10B (10 students)
('N.K.', 'Nimantha', 'Ekanayake', '2009-01-28', 'M', 'No. 71, Temple Street, Chilaw', 31),
('O.L.', 'Oshadi', 'Ranaweera', '2009-04-02', 'F', 'No. 38, Hill Road, Embilipitiya', 32),
('P.M.', 'Pasan', 'Wijegunawardena', '2009-06-06', 'M', 'No. 63, River Road, Trincomalee', 33),
('Q.P.', 'Qadira', 'Chandrasekara', '2009-08-10', 'F', 'No. 29, Green Street, Ampara', 34),
('R.S.', 'Ranuk', 'Gamage', '2009-10-14', 'M', 'No. 84, Park Lane, Hatton', 35),
('S.R.', 'Sajani', 'Cooray', '2009-12-18', 'F', 'No. 41, Sea Road, Beruwala', 36),
('T.D.', 'Thilanka', 'Peiris', '2009-02-22', 'M', 'No. 66, Lake Street, Colombo 02', 37),
('U.K.', 'Udeshika', 'Abeysekara', '2009-04-26', 'F', 'No. 93, Hospital Lane, Horana', 38),
('V.L.', 'Vihanga', 'Fonseka', '2009-06-30', 'M', 'No. 19, Bridge Road, Negombo', 39),
('W.N.', 'Wavindi', 'Siriwardena', '2009-09-03', 'F', 'No. 52, Railway Road, Battaramulla', 40),

-- Grade 11A (10 students)
('X.A.', 'Xander', 'Jayasinghe', '2008-05-10', 'M', 'No. 77, Garden Street, Mount Lavinia', 41),
('Y.P.', 'Yenumi', 'Kumarasiri', '2008-07-14', 'F', 'No. 35, College Road, Dehiwala', 42),
('Z.R.', 'Zayn', 'Thilakasiri', '2008-09-18', 'M', 'No. 68, Main Street, Maharagama', 43),
('A.S.', 'Amandi', 'Wickramaarachchi', '2008-11-22', 'F', 'No. 31, Beach Lane, Panadura', 44),
('B.K.', 'Buwaneka', 'Rajapaksha', '2008-01-26', 'M', 'No. 86, Hill Street, Kelaniya', 45),
('C.M.', 'Chamod', 'Weerasinghe', '2008-03-30', 'F', 'No. 43, Park Avenue, Kaduwela', 46),
('D.L.', 'Dananjaya', 'Gunaratne', '2008-06-03', 'M', 'No. 69, Temple Road, Piliyandala', 47),
('E.N.', 'Eshani', 'Jayawardana', '2008-08-07', 'F', 'No. 94, Market Street, Moratuwa', 48),
('F.R.', 'Faraz', 'Perera', '2008-10-11', 'M', 'No. 21, Station Road, Ragama', 49),
('G.S.', 'Gihansa', 'Silva', '2008-12-15', 'F', 'No. 54, Church Street, Wattala', 50),

-- Grade 11B (10 students)
('H.K.', 'Hansaka', 'Herath', '2008-02-05', 'M', 'No. 27, Beach Road, Hikkaduwa', 51),
('I.S.', 'Indeewari', 'Ranatunga', '2008-04-09', 'F', 'No. 49, Hill View, Kandy', 52),
('J.L.', 'Jayen', 'Chandana', '2008-06-13', 'M', 'No. 72, Lake Road, Kurunegala', 53),
('K.N.', 'Kimaya', 'Perera', '2008-08-17', 'F', 'No. 36, Temple Lane, Galle', 54),
('L.K.', 'Lakshan', 'Silva', '2008-10-21', 'M', 'No. 61, Main Road, Matara', 55),
('M.M.', 'Manudi', 'Fernando', '2008-12-25', 'F', 'No. 85, Park Street, Negombo', 56),
('N.P.', 'Naveen', 'Jayawardena', '2008-02-28', 'M', 'No. 14, College Road, Colombo 08', 57),
('O.R.', 'Osandi', 'Wijesinghe', '2008-05-03', 'F', 'No. 48, Sea View, Colombo 15', 58),
('P.S.', 'Pubudu', 'Dissanayake', '2008-07-07', 'M', 'No. 73, River Road, Gampaha', 59),
('Q.L.', 'Qadisha', 'Gunawardena', '2008-09-11', 'F', 'No. 37, Station Lane, Kalutara', 60);

-- ========================================
-- 9. INSERT EXTRACURRICULAR ACTIVITIES
-- ========================================
INSERT INTO extracurricular (name) VALUES
('Cricket'),
('Football'),
('Basketball'),
('Volleyball'),
('Athletics'),
('Swimming'),
('Badminton'),
('Tennis'),
('Table Tennis'),
('Karate'),
('Taekwondo'),
('Chess'),
('Debating - English'),
('Debating - Sinhala'),
('Debating - Tamil'),
('Drama - English'),
('Drama - Sinhala'),
('Drama - Tamil'),
('Choir'),
('Eastern Music'),
('Western Music'),
('Dancing - Kandyan'),
('Dancing - Low Country'),
('Dancing - Bharatha Natyam'),
('Scouts'),
('Girl Guides'),
('Red Cross'),
('Nature Club'),
('Science Club'),
('ICT Club'),
('Art Club'),
('Media Club'),
('Library Society'),
('Photography Club'),
('First Aid');
-- ========================================
-- 10. INSERT FEES
-- ========================================
INSERT INTO fee (fee_id, fee_name, amount) VALUES
('F001', 'Tuition Fee', 5000.00),
('F002', 'Development Fee', 2000.00),
('F003', 'Lab Fee', 1500.00),
('F004', 'Library Fee', 500.00),
('F005', 'Sports Fee', 1000.00),
('F006', 'IT Fee', 2000.00),
('F007', 'Exam Fee', 1000.00),
('F008', 'Activity Fee', 800.00);

-- ========================================
-- 11. INSERT STUDENT-CLASS ASSIGNMENTS (2024)
-- ========================================
INSERT INTO student_class (stu_id, class_name, year_name) VALUES
-- Grade 6A
(1, '6A', '2024'), (2, '6A', '2024'), (3, '6A', '2024'), (4, '6A', '2024'), (5, '6A', '2024'),
(6, '6A', '2024'), (7, '6A', '2024'), (8, '6A', '2024'), (9, '6A', '2024'), (10, '6A', '2024'),
-- Grade 6B
(11, '6B', '2024'), (12, '6B', '2024'), (13, '6B', '2024'), (14, '6B', '2024'), (15, '6B', '2024'),
(16, '6B', '2024'), (17, '6B', '2024'), (18, '6B', '2024'), (19, '6B', '2024'), (20, '6B', '2024'),
-- Grade 7A
(21, '7A', '2024'), (22, '7A', '2024'), (23, '7A', '2024'), (24, '7A', '2024'), (25, '7A', '2024'),
(26, '7A', '2024'), (27, '7A', '2024'), (28, '7A', '2024'), (29, '7A', '2024'), (30, '7A', '2024'),
-- Grade 7B
(31, '7B', '2024'), (32, '7B', '2024'), (33, '7B', '2024'), (34, '7B', '2024'), (35, '7B', '2024'),
(36, '7B', '2024'), (37, '7B', '2024'), (38, '7B', '2024'), (39, '7B', '2024'), (40, '7B', '2024'),
-- Grade 8A
(41, '8A', '2024'), (42, '8A', '2024'), (43, '8A', '2024'), (44, '8A', '2024'), (45, '8A', '2024'),
(46, '8A', '2024'), (47, '8A', '2024'), (48, '8A', '2024'), (49, '8A', '2024'), (50, '8A', '2024'),
-- Grade 8B
(51, '8B', '2024'), (52, '8B', '2024'), (53, '8B', '2024'), (54, '8B', '2024'), (55, '8B', '2024'),
(56, '8B', '2024'), (57, '8B', '2024'), (58, '8B', '2024'), (59, '8B', '2024'), (60, '8B', '2024'),
-- Grade 9A
(61, '9A', '2024'), (62, '9A', '2024'), (63, '9A', '2024'), (64, '9A', '2024'), (65, '9A', '2024'),
(66, '9A', '2024'), (67, '9A', '2024'), (68, '9A', '2024'), (69, '9A', '2024'), (70, '9A', '2024'),
-- Grade 9B
(71, '9B', '2024'), (72, '9B', '2024'), (73, '9B', '2024'), (74, '9B', '2024'), (75, '9B', '2024'),
(76, '9B', '2024'), (77, '9B', '2024'), (78, '9B', '2024'), (79, '9B', '2024'), (80, '9B', '2024'),
-- Grade 10A
(81, '10A', '2024'), (82, '10A', '2024'), (83, '10A', '2024'), (84, '10A', '2024'), (85, '10A', '2024'),
(86, '10A', '2024'), (87, '10A', '2024'), (88, '10A', '2024'), (89, '10A', '2024'), (90, '10A', '2024'),
-- Grade 10B
(91, '10B', '2024'), (92, '10B', '2024'), (93, '10B', '2024'), (94, '10B', '2024'), (95, '10B', '2024'),
(96, '10B', '2024'), (97, '10B', '2024'), (98, '10B', '2024'), (99, '10B', '2024'), (100, '10B', '2024'),
-- Grade 11A
(101, '11A', '2024'), (102, '11A', '2024'), (103, '11A', '2024'), (104, '11A', '2024'), (105, '11A', '2024'),
(106, '11A', '2024'), (107, '11A', '2024'), (108, '11A', '2024'), (109, '11A', '2024'), (110, '11A', '2024'),
-- Grade 11B
(111, '11B', '2024'), (112, '11B', '2024'), (113, '11B', '2024'), (114, '11B', '2024'), (115, '11B', '2024'),
(116, '11B', '2024'), (117, '11B', '2024'), (118, '11B', '2024'), (119, '11B', '2024'), (120, '11B', '2024');

-- ========================================
-- 12. INSERT TEACHER-CLASS ASSIGNMENTS (2024)
-- ========================================
INSERT INTO subject_class_teacher (teach_id, class_name, year_name, role) VALUES
-- Grade 6
(1, '6A', '2024', 'Class Teacher'),
(2, '6B', '2024', 'Class Teacher'),
(3, '6A', '2024', 'Subject Teacher'),
(4, '6B', '2024', 'Subject Teacher'),
(5, '6A', '2024', 'Class Teacher and Subject Teacher'),
(6, '6B', '2024', 'Subject Teacher'),
(7, '6A', '2024', 'Subject Teacher'),
(8, '6B', '2024', 'Subject Teacher'),

-- Grade 7
(1, '7A', '2024', 'Class Teacher'),
(2, '7B', '2024', 'Class Teacher'),
(3, '7A', '2024', 'Subject Teacher'),
(4, '7B', '2024', 'Subject Teacher'),
(5, '7A', '2024', 'Class and Subject Teacher'),
(6, '7B', '2024', 'Subject Teacher'),
(10, '7A', '2024', 'Subject Teacher'),
(11, '7B', '2024', 'Subject Teacher'),

-- Grade 8
(1, '8A', '2024', 'Class Teacher'),
(2, '8B', '2024', 'Class Teacher'),
(3, '8A', '2024', 'Class Teacher and Subject Teacher'),
(4, '8B', '2024', 'Subject Teacher'),
(5, '8A', '2024', 'Subject Teacher'),
(6, '8B', '2024', 'Class Teacher and Subject Teacher'),
(10, '8A', '2024', 'Subject Teacher'),
(11, '8B', '2024', 'Subject Teacher'),

-- Grade 9
(1, '9A', '2024', 'Class Teacher'),
(2, '9B', '2024', 'Class Teacher'),
(3, '9A', '2024', 'Class Teacher and Subject Teacher'),
(4, '9B', '2024', 'Subject Teacher'),
(5, '9A', '2024', 'Subject Teacher'),
(6, '9B', '2024', 'Subject Teacher'),
(10, '9A', '2024', 'Subject Teacher'),
(11, '9B', '2024', 'Subject Teacher'),

-- Grade 10
(1, '10A', '2024', 'Class Teacher'),
(2, '10B', '2024', 'Class Teacher'),
(3, '10A', '2024', 'Subject Teacher'),
(4, '10B', '2024', 'Subject Teacher'),
(5, '10A', '2024', 'Subject Teacher'),
(6, '10B', '2024', 'Subject Teacher'),
(20, '10A', '2024', 'Subject Teacher'),
(21, '10B', '2024', 'Subject Teacher'),

-- Grade 11
(1, '11A', '2024', 'Class Teacher'),
(2, '11B', '2024', 'Class Teacher'),
(3, '11A', '2024', 'Class Teacher and Subject Teacher'),
(4, '11B', '2024', 'Subject Teacher'),
(5, '11A', '2024', 'Subject Teacher'),
(6, '11B', '2024', 'Class Teacher and Subject Teacher'),
(20, '11A', '2024', 'Subject Teacher'),
(30, '11B', '2024', 'Subject Teacher');


-- ========================================
-- 13. INSERT STUDENT-SUBJECT ASSIGNMENTS (2024)
-- ========================================
-- Grade 6 & 7 - Core subjects for all students
INSERT INTO student_subject (stu_id, sub_id, year_name, status) VALUES
-- Students 1-40 (Grades 6A, 6B, 7A, 7B) - Core subjects
(1,1,'2024','following'), (1,2,'2024','following'), (1,3,'2024','following'), (1,4,'2024','following'), 
(1,6,'2024','following'), (1,7,'2024','following'), (1,8,'2024','following'), (1,12,'2024','following'),
(2,1,'2024','following'), (2,2,'2024','following'), (2,3,'2024','following'), (2,4,'2024','following'),
(2,6,'2024','following'), (2,7,'2024','following'), (2,8,'2024','following'), (2,12,'2024','following'),
(3,1,'2024','following'), (3,2,'2024','following'), (3,3,'2024','following'), (3,4,'2024','following'),
(3,6,'2024','following'), (3,7,'2024','following'), (3,10,'2024','following'), (3,12,'2024','following'),
(4,1,'2024','following'), (4,2,'2024','following'), (4,3,'2024','following'), (4,4,'2024','following'),
(4,6,'2024','following'), (4,7,'2024','following'), (4,8,'2024','following'), (4,12,'2024','following'),
(5,1,'2024','following'), (5,2,'2024','following'), (5,3,'2024','following'), (5,4,'2024','following'),
(5,6,'2024','following'), (5,7,'2024','following'), (5,8,'2024','following'), (5,12,'2024','following'),
(6,1,'2024','following'), (6,2,'2024','following'), (6,3,'2024','following'), (6,4,'2024','following'),
(6,6,'2024','following'), (6,7,'2024','following'), (6,8,'2024','following'), (6,12,'2024','following'),
(7,1,'2024','following'), (7,2,'2024','following'), (7,3,'2024','following'), (7,4,'2024','following'),
(7,6,'2024','following'), (7,7,'2024','following'), (7,8,'2024','following'), (7,12,'2024','following'),
(8,1,'2024','following'), (8,2,'2024','following'), (8,3,'2024','following'), (8,4,'2024','following'),
(8,6,'2024','following'), (8,7,'2024','following'), (8,8,'2024','following'), (8,12,'2024','following'),
(9,1,'2024','following'), (9,2,'2024','following'), (9,3,'2024','following'), (9,4,'2024','following'),
(9,6,'2024','following'), (9,7,'2024','following'), (9,8,'2024','following'), (9,12,'2024','following'),
(10,1,'2024','following'), (10,2,'2024','following'), (10,3,'2024','following'), (10,4,'2024','following'),
(10,6,'2024','following'), (10,7,'2024','following'), (10,8,'2024','following'), (10,12,'2024','following'),
-- Grade 6B students
(11,1,'2024','following'), (11,2,'2024','following'), (11,3,'2024','following'), (11,4,'2024','following'),
(11,6,'2024','following'), (11,7,'2024','following'), (11,8,'2024','following'), (11,12,'2024','following'),
(12,1,'2024','following'), (12,2,'2024','following'), (12,3,'2024','following'), (12,4,'2024','following'),
(12,6,'2024','following'), (12,7,'2024','following'), (12,8,'2024','following'), (12,12,'2024','following'),
(13,1,'2024','following'), (13,2,'2024','following'), (13,3,'2024','following'), (13,4,'2024','following'),
(13,6,'2024','following'), (13,7,'2024','following'), (13,8,'2024','following'), (13,12,'2024','following'),
(14,1,'2024','following'), (14,2,'2024','following'), (14,3,'2024','following'), (14,5,'2024','following'),
(14,6,'2024','following'), (14,7,'2024','following'), (14,9,'2024','following'), (14,12,'2024','following'),
(15,1,'2024','following'), (15,2,'2024','following'), (15,3,'2024','following'), (15,4,'2024','following'),
(15,6,'2024','following'), (15,7,'2024','following'), (15,8,'2024','following'), (15,12,'2024','following'),
(16,1,'2024','following'), (16,2,'2024','following'), (16,3,'2024','following'), (16,4,'2024','following'),
(16,6,'2024','following'), (16,7,'2024','following'), (16,8,'2024','following'), (16,12,'2024','following'),
(17,1,'2024','following'), (17,2,'2024','following'), (17,3,'2024','following'), (17,4,'2024','following'),
(17,6,'2024','following'), (17,7,'2024','following'), (17,8,'2024','following'), (17,12,'2024','following'),
(18,1,'2024','following'), (18,2,'2024','following'), (18,3,'2024','following'), (18,4,'2024','following'),
(18,6,'2024','following'), (18,7,'2024','following'), (18,11,'2024','following'), (18,12,'2024','following'),
(19,1,'2024','following'), (19,2,'2024','following'), (19,3,'2024','following'), (19,4,'2024','following'),
(19,6,'2024','following'), (19,7,'2024','following'), (19,8,'2024','following'), (19,12,'2024','following'),
(20,1,'2024','following'), (20,2,'2024','following'), (20,3,'2024','following'), (20,4,'2024','following'),
(20,6,'2024','following'), (20,7,'2024','following'), (20,8,'2024','following'), (20,12,'2024','following'),
-- Grade 7A students
(21,1,'2024','following'), (21,2,'2024','following'), (21,3,'2024','following'), (21,4,'2024','following'),
(21,6,'2024','following'), (21,7,'2024','following'), (21,8,'2024','following'), (21,12,'2024','following'),
(22,1,'2024','following'), (22,2,'2024','following'), (22,3,'2024','following'), (22,5,'2024','following'),
(22,6,'2024','following'), (22,7,'2024','following'), (22,9,'2024','following'), (22,12,'2024','following'),
(23,1,'2024','following'), (23,2,'2024','following'), (23,3,'2024','following'), (23,4,'2024','following'),
(23,6,'2024','following'), (23,7,'2024','following'), (23,8,'2024','following'), (23,12,'2024','following'),
(24,1,'2024','following'), (24,2,'2024','following'), (24,3,'2024','following'), (24,4,'2024','following'),
(24,6,'2024','following'), (24,7,'2024','following'), (24,8,'2024','following'), (24,12,'2024','following'),
(25,1,'2024','following'), (25,2,'2024','following'), (25,3,'2024','following'), (25,4,'2024','following'),
(25,6,'2024','following'), (25,7,'2024','following'), (25,8,'2024','following'), (25,12,'2024','following'),
(26,1,'2024','following'), (26,2,'2024','following'), (26,3,'2024','following'), (26,4,'2024','following'),
(26,6,'2024','following'), (26,7,'2024','following'), (26,8,'2024','following'), (26,12,'2024','following'),
(27,1,'2024','following'), (27,2,'2024','following'), (27,3,'2024','following'), (27,5,'2024','following'),
(27,6,'2024','following'), (27,7,'2024','following'), (27,9,'2024','following'), (27,12,'2024','following'),
(28,1,'2024','following'), (28,2,'2024','following'), (28,3,'2024','following'), (28,5,'2024','following'),
(28,6,'2024','following'), (28,7,'2024','following'), (28,9,'2024','following'), (28,12,'2024','following'),
(29,1,'2024','following'), (29,2,'2024','following'), (29,3,'2024','following'), (29,4,'2024','following'),
(29,6,'2024','following'), (29,7,'2024','following'), (29,8,'2024','following'), (29,12,'2024','following'),
(30,1,'2024','following'), (30,2,'2024','following'), (30,3,'2024','following'), (30,4,'2024','following'),
(30,6,'2024','following'), (30,7,'2024','following'), (30,8,'2024','following'), (30,12,'2024','following'),
-- Grade 7B students
(31,1,'2024','following'), (31,2,'2024','following'), (31,3,'2024','following'), (31,4,'2024','following'),
(31,6,'2024','following'), (31,7,'2024','following'), (31,8,'2024','following'), (31,12,'2024','following'),
(32,1,'2024','following'), (32,2,'2024','following'), (32,3,'2024','following'), (32,4,'2024','following'),
(32,6,'2024','following'), (32,7,'2024','following'), (32,8,'2024','following'), (32,12,'2024','following'),
(33,1,'2024','following'), (33,2,'2024','following'), (33,3,'2024','following'), (33,5,'2024','following'),
(33,6,'2024','following'), (33,7,'2024','following'), (33,9,'2024','following'), (33,12,'2024','following'),
(34,1,'2024','following'), (34,2,'2024','following'), (34,3,'2024','following'), (34,4,'2024','following'),
(34,6,'2024','following'), (34,7,'2024','following'), (34,8,'2024','following'), (34,12,'2024','following'),
(35,1,'2024','following'), (35,2,'2024','following'), (35,3,'2024','following'), (35,4,'2024','following'),
(35,6,'2024','following'), (35,7,'2024','following'), (35,8,'2024','following'), (35,12,'2024','following'),
(36,1,'2024','following'), (36,2,'2024','following'), (36,3,'2024','following'), (36,4,'2024','following'),
(36,6,'2024','following'), (36,7,'2024','following'), (36,8,'2024','following'), (36,12,'2024','following'),
(37,1,'2024','following'), (37,2,'2024','following'), (37,3,'2024','following'), (37,4,'2024','following'),
(37,6,'2024','following'), (37,7,'2024','following'), (37,8,'2024','following'), (37,12,'2024','following'),
(38,1,'2024','following'), (38,2,'2024','following'), (38,3,'2024','following'), (38,4,'2024','following'),
(38,6,'2024','following'), (38,7,'2024','following'), (38,8,'2024','following'), (38,12,'2024','following'),
(39,1,'2024','following'), (39,2,'2024','following'), (39,3,'2024','following'), (39,4,'2024','following'),
(39,6,'2024','following'), (39,7,'2024','following'), (39,10,'2024','following'), (39,12,'2024','following'),
(40,1,'2024','following'), (40,2,'2024','following'), (40,3,'2024','following'), (40,4,'2024','following'),
(40,6,'2024','following'), (40,7,'2024','following'), (40,8,'2024','following'), (40,12,'2024','following');

-- Grade 8-11 students with O/L subjects
-- Grade 8A students (stu_id 41-50)
INSERT INTO student_subject (stu_id, sub_id, year_name, status) VALUES
(41,1,'2024','following'), (41,2,'2024','following'), (41,3,'2024','following'), (41,4,'2024','following'),
(41,6,'2024','following'), (41,7,'2024','following'), (41,8,'2024','following'), (41,20,'2024','following'), (41,12,'2024','following'),
(42,1,'2024','following'), (42,2,'2024','following'), (42,3,'2024','following'), (42,4,'2024','following'),
(42,6,'2024','following'), (42,7,'2024','following'), (42,8,'2024','following'), (42,20,'2024','following'), (42,12,'2024','following'),
(43,1,'2024','following'), (43,2,'2024','following'), (43,3,'2024','following'), (43,4,'2024','following'),
(43,6,'2024','following'), (43,7,'2024','following'), (43,8,'2024','following'), (43,20,'2024','following'), (43,12,'2024','following'),
(44,1,'2024','following'), (44,2,'2024','following'), (44,3,'2024','following'), (44,4,'2024','following'),
(44,6,'2024','following'), (44,7,'2024','following'), (44,8,'2024','following'), (44,20,'2024','following'), (44,12,'2024','following'),
(45,1,'2024','following'), (45,2,'2024','following'), (45,3,'2024','following'), (45,4,'2024','following'),
(45,6,'2024','following'), (45,7,'2024','following'), (45,8,'2024','following'), (45,20,'2024','following'), (45,12,'2024','following'),
(46,1,'2024','following'), (46,2,'2024','following'), (46,3,'2024','following'), (46,4,'2024','following'),
(46,6,'2024','following'), (46,7,'2024','following'), (46,8,'2024','following'), (46,20,'2024','following'), (46,12,'2024','following'),
(47,1,'2024','following'), (47,2,'2024','following'), (47,3,'2024','following'), (47,4,'2024','following'),
(47,6,'2024','following'), (47,7,'2024','following'), (47,8,'2024','following'), (47,20,'2024','following'), (47,12,'2024','following'),
(48,1,'2024','following'), (48,2,'2024','following'), (48,3,'2024','following'), (48,4,'2024','following'),
(48,6,'2024','following'), (48,7,'2024','following'), (48,8,'2024','following'), (48,20,'2024','following'), (48,12,'2024','following'),
(49,1,'2024','following'), (49,2,'2024','following'), (49,3,'2024','following'), (49,4,'2024','following'),
(49,6,'2024','following'), (49,7,'2024','following'), (49,8,'2024','following'), (49,20,'2024','following'), (49,12,'2024','following'),
(50,1,'2024','following'), (50,2,'2024','following'), (50,3,'2024','following'), (50,4,'2024','following'),
(50,6,'2024','following'), (50,7,'2024','following'), (50,8,'2024','following'), (50,20,'2024','following'), (50,12,'2024','following');

-- Grade 8B students (stu_id 51-60) 
INSERT INTO student_subject (stu_id, sub_id, year_name, status) VALUES
(51,1,'2024','following'), (51,2,'2024','following'), (51,3,'2024','following'), (51,4,'2024','following'),
(51,6,'2024','following'), (51,16,'2024','following'), (51,8,'2024','following'), (51,20,'2024','following'), (51,12,'2024','following'),
(52,1,'2024','following'), (52,2,'2024','following'), (52,3,'2024','following'), (52,4,'2024','following'),
(52,6,'2024','following'), (52,16,'2024','following'), (52,8,'2024','following'), (52,20,'2024','following'), (52,12,'2024','following'),
(53,1,'2024','following'), (53,2,'2024','following'), (53,3,'2024','following'), (53,4,'2024','following'),
(53,7,'2024','following'), (53,16,'2024','following'), (53,8,'2024','following'), (53,20,'2024','following'), (53,12,'2024','following'),
(54,1,'2024','following'), (54,2,'2024','following'), (54,3,'2024','following'), (54,4,'2024','following'),
(54,7,'2024','following'), (54,16,'2024','following'), (54,8,'2024','following'), (54,20,'2024','following'), (54,12,'2024','following'),
(55,1,'2024','following'), (55,2,'2024','following'), (55,3,'2024','following'), (55,4,'2024','following'),
(55,6,'2024','following'), (55,16,'2024','following'), (55,8,'2024','following'), (55,20,'2024','following'), (55,12,'2024','following'),
(56,1,'2024','following'), (56,2,'2024','following'), (56,3,'2024','following'), (56,4,'2024','following'),
(56,6,'2024','following'), (56,16,'2024','following'), (56,8,'2024','following'), (56,20,'2024','following'), (56,12,'2024','following'),
(57,1,'2024','following'), (57,2,'2024','following'), (57,3,'2024','following'), (57,4,'2024','following'),
(57,7,'2024','following'), (57,16,'2024','following'), (57,10,'2024','following'), (57,20,'2024','following'), (57,12,'2024','following'),
(58,1,'2024','following'), (58,2,'2024','following'), (58,3,'2024','following'), (58,4,'2024','following'),
(58,6,'2024','following'), (58,16,'2024','following'), (58,8,'2024','following'), (58,20,'2024','following'), (58,12,'2024','following'),
(59,1,'2024','following'), (59,2,'2024','following'), (59,3,'2024','following'), (59,4,'2024','following'),
(59,7,'2024','following'), (59,16,'2024','following'), (59,8,'2024','following'), (59,20,'2024','following'), (59,12,'2024','following'),
(60,1,'2024','following'), (60,2,'2024','following'), (60,3,'2024','following'), (60,4,'2024','following'),
(60,6,'2024','following'), (60,16,'2024','following'), (60,8,'2024','following'), (60,20,'2024','following'), (60,12,'2024','following');

-- Grade 9-11 O/L stream students with basket subjects
-- Grade 9A (stu_id 61-70)
INSERT INTO student_subject (stu_id, sub_id, year_name, status) VALUES
(61,1,'2024','following'), (61,2,'2024','following'), (61,3,'2024','following'), (61,4,'2024','following'),
(61,6,'2024','following'), (61,7,'2024','following'), (61,8,'2024','following'), (61,20,'2024','following'), (61,12,'2024','following'),
(62,1,'2024','following'), (62,2,'2024','following'), (62,3,'2024','following'), (62,4,'2024','following'),
(62,6,'2024','following'), (62,7,'2024','following'), (62,8,'2024','following'), (62,20,'2024','following'), (62,12,'2024','following'),
(63,1,'2024','following'), (63,2,'2024','following'), (63,3,'2024','following'), (63,4,'2024','following'),
(63,16,'2024','following'), (63,18,'2024','following'), (63,8,'2024','following'), (63,20,'2024','following'), (63,12,'2024','following'),
(64,1,'2024','following'), (64,2,'2024','following'), (64,3,'2024','following'), (64,4,'2024','following'),
(64,16,'2024','following'), (64,18,'2024','following'), (64,8,'2024','following'), (64,20,'2024','following'), (64,12,'2024','following'),
(65,1,'2024','following'), (65,2,'2024','following'), (65,3,'2024','following'), (65,4,'2024','following'),
(65,6,'2024','following'), (65,7,'2024','following'), (65,8,'2024','following'), (65,20,'2024','following'), (65,12,'2024','following'),
(66,1,'2024','following'), (66,2,'2024','following'), (66,3,'2024','following'), (66,4,'2024','following'),
(66,6,'2024','following'), (66,7,'2024','following'), (66,8,'2024','following'), (66,20,'2024','following'), (66,12,'2024','following'),
(67,1,'2024','following'), (67,2,'2024','following'), (67,3,'2024','following'), (67,4,'2024','following'),
(67,16,'2024','following'), (67,18,'2024','following'), (67,8,'2024','following'), (67,20,'2024','following'), (67,12,'2024','following'),
(68,1,'2024','following'), (68,2,'2024','following'), (68,3,'2024','following'), (68,4,'2024','following'),
(68,6,'2024','following'), (68,7,'2024','following'), (68,8,'2024','following'), (68,20,'2024','following'), (68,12,'2024','following'),
(69,1,'2024','following'), (69,2,'2024','following'), (69,3,'2024','following'), (69,4,'2024','following'),
(69,6,'2024','following'), (69,7,'2024','following'), (69,8,'2024','following'), (69,20,'2024','following'), (69,12,'2024','following'),
(70,1,'2024','following'), (70,2,'2024','following'), (70,3,'2024','following'), (70,4,'2024','following'),
(70,6,'2024','following'), (70,7,'2024','following'), (70,8,'2024','following'), (70,20,'2024','following'), (70,12,'2024','following');

-- Grade 9B (stu_id 71-80)
INSERT INTO student_subject (stu_id, sub_id, year_name, status) VALUES
(71,1,'2024','following'), (71,2,'2024','following'), (71,3,'2024','following'), (71,4,'2024','following'),
(71,6,'2024','following'), (71,7,'2024','following'), (71,8,'2024','following'), (71,20,'2024','following'), (71,12,'2024','following'),
(72,1,'2024','following'), (72,2,'2024','following'), (72,3,'2024','following'), (72,4,'2024','following'),
(72,16,'2024','following'), (72,18,'2024','following'), (72,8,'2024','following'), (72,20,'2024','following'), (72,12,'2024','following'),
(73,1,'2024','following'), (73,2,'2024','following'), (73,3,'2024','following'), (73,4,'2024','following'),
(73,6,'2024','following'), (73,7,'2024','following'), (73,8,'2024','following'), (73,20,'2024','following'), (73,12,'2024','following'),
(74,1,'2024','following'), (74,2,'2024','following'), (74,3,'2024','following'), (74,4,'2024','following'),
(74,16,'2024','following'), (74,18,'2024','following'), (74,8,'2024','following'), (74,20,'2024','following'), (74,12,'2024','following'),
(75,1,'2024','following'), (75,2,'2024','following'), (75,3,'2024','following'), (75,4,'2024','following'),
(75,6,'2024','following'), (75,7,'2024','following'), (75,8,'2024','following'), (75,20,'2024','following'), (75,12,'2024','following'),
(76,1,'2024','following'), (76,2,'2024','following'), (76,3,'2024','following'), (76,4,'2024','following'),
(76,16,'2024','following'), (76,18,'2024','following'), (76,8,'2024','following'), (76,20,'2024','following'), (76,12,'2024','following'),
(77,1,'2024','following'), (77,2,'2024','following'), (77,3,'2024','following'), (77,4,'2024','following'),
(77,6,'2024','following'), (77,7,'2024','following'), (77,8,'2024','following'), (77,20,'2024','following'), (77,12,'2024','following'),
(78,1,'2024','following'), (78,2,'2024','following'), (78,3,'2024','following'), (78,4,'2024','following'),
(78,16,'2024','following'), (78,18,'2024','following'), (78,11,'2024','following'), (78,20,'2024','following'), (78,12,'2024','following'),
(79,1,'2024','following'), (79,2,'2024','following'), (79,3,'2024','following'), (79,4,'2024','following'),
(79,6,'2024','following'), (79,7,'2024','following'), (79,8,'2024','following'), (79,20,'2024','following'), (79,12,'2024','following'),
(80,1,'2024','following'), (80,2,'2024','following'), (80,3,'2024','following'), (80,4,'2024','following'),
(80,6,'2024','following'), (80,7,'2024','following'), (80,8,'2024','following'), (80,20,'2024','following'), (80,12,'2024','following');

INSERT INTO student_subject (stu_id, sub_id, year_name, status) VALUES
(81,1,'2024','following'), (81,2,'2024','following'), (81,3,'2024','following'), (81,4,'2024','following'),
(81,6,'2024','following'), (81,7,'2024','following'), (81,8,'2024','following'), (81,20,'2024','following'), (81,12,'2024','following'),
(82,1,'2024','following'), (82,2,'2024','following'), (82,3,'2024','following'), (82,4,'2024','following'),
(82,6,'2024','following'), (82,7,'2024','following'), (82,8,'2024','following'), (82,20,'2024','following'), (82,12,'2024','following'),
(83,1,'2024','following'), (83,2,'2024','following'), (83,3,'2024','following'), (83,4,'2024','following'),
(83,16,'2024','following'), (83,18,'2024','following'), (83,8,'2024','following'), (83,20,'2024','following'), (83,12,'2024','following'),
(84,1,'2024','following'), (84,2,'2024','following'), (84,3,'2024','following'), (84,4,'2024','following'),
(84,16,'2024','following'), (84,19,'2024','following'), (84,8,'2024','following'), (84,20,'2024','following'), (84,12,'2024','following'),
(85,1,'2024','following'), (85,2,'2024','following'), (85,3,'2024','following'), (85,4,'2024','following'),
(85,6,'2024','following'), (85,7,'2024','following'), (85,8,'2024','following'), (85,20,'2024','following'), (85,12,'2024','following'),
(86,1,'2024','following'), (86,2,'2024','following'), (86,3,'2024','following'), (86,4,'2024','following'),
(86,6,'2024','following'), (86,7,'2024','following'), (86,8,'2024','following'), (86,20,'2024','following'), (86,12,'2024','following'),
(87,1,'2024','following'), (87,2,'2024','following'), (87,3,'2024','following'), (87,4,'2024','following'),
(87,16,'2024','following'), (87,18,'2024','following'), (87,8,'2024','following'), (87,20,'2024','following'), (87,12,'2024','following'),
(88,1,'2024','following'), (88,2,'2024','following'), (88,3,'2024','following'), (88,4,'2024','following'),
(88,6,'2024','following'), (88,7,'2024','following'), (88,8,'2024','following'), (88,20,'2024','following'), (88,12,'2024','following'),
(89,1,'2024','following'), (89,2,'2024','following'), (89,3,'2024','following'), (89,4,'2024','following'),
(89,6,'2024','following'), (89,7,'2024','following'), (89,8,'2024','following'), (89,20,'2024','following'), (89,12,'2024','following'),
(90,1,'2024','following'), (90,2,'2024','following'), (90,3,'2024','following'), (90,4,'2024','following'),
(90,16,'2024','following'), (90,18,'2024','following'), (90,8,'2024','following'), (90,20,'2024','following'), (90,12,'2024','following');

-- Grade 10B (stu_id 91-100)
INSERT INTO student_subject (stu_id, sub_id, year_name, status) VALUES
(91,1,'2024','following'), (91,2,'2024','following'), (91,3,'2024','following'), (91,4,'2024','following'),
(91,6,'2024','following'), (91,7,'2024','following'), (91,8,'2024','following'), (91,20,'2024','following'), (91,12,'2024','following'),
(92,1,'2024','following'), (92,2,'2024','following'), (92,3,'2024','following'), (92,4,'2024','following'),
(92,16,'2024','following'), (92,18,'2024','following'), (92,8,'2024','following'), (92,20,'2024','following'), (92,12,'2024','following'),
(93,1,'2024','following'), (93,2,'2024','following'), (93,3,'2024','following'), (93,4,'2024','following'),
(93,6,'2024','following'), (93,7,'2024','following'), (93,8,'2024','following'), (93,20,'2024','following'), (93,12,'2024','following'),
(94,1,'2024','following'), (94,2,'2024','following'), (94,3,'2024','following'), (94,4,'2024','following'),
(94,16,'2024','following'), (94,18,'2024','following'), (94,8,'2024','following'), (94,20,'2024','following'), (94,12,'2024','following'),
(95,1,'2024','following'), (95,2,'2024','following'), (95,3,'2024','following'), (95,4,'2024','following'),
(95,6,'2024','following'), (95,7,'2024','following'), (95,8,'2024','following'), (95,20,'2024','following'), (95,12,'2024','following'),
(96,1,'2024','following'), (96,2,'2024','following'), (96,3,'2024','following'), (96,4,'2024','following'),
(96,6,'2024','following'), (96,7,'2024','following'), (96,8,'2024','following'), (96,20,'2024','following'), (96,12,'2024','following'),
(97,1,'2024','following'), (97,2,'2024','following'), (97,3,'2024','following'), (97,4,'2024','following'),
(97,16,'2024','following'), (97,18,'2024','following'), (97,8,'2024','following'), (97,20,'2024','following'), (97,12,'2024','following'),
(98,1,'2024','following'), (98,2,'2024','following'), (98,3,'2024','following'), (98,4,'2024','following'),
(98,6,'2024','following'), (98,7,'2024','following'), (98,10,'2024','following'), (98,20,'2024','following'), (98,12,'2024','following'),
(99,1,'2024','following'), (99,2,'2024','following'), (99,3,'2024','following'), (99,4,'2024','following'),
(99,6,'2024','following'), (99,7,'2024','following'), (99,8,'2024','following'), (99,20,'2024','following'), (99,12,'2024','following'),
(100,1,'2024','following'), (100,2,'2024','following'), (100,3,'2024','following'), (100,4,'2024','following'),
(100,16,'2024','following'), (100,18,'2024','following'), (100,8,'2024','following'), (100,20,'2024','following'), (100,12,'2024','following');

-- Grade 11A (stu_id 101-110)
INSERT INTO student_subject (stu_id, sub_id, year_name, status) VALUES
(101,1,'2024','following'), (101,2,'2024','following'), (101,3,'2024','following'), (101,4,'2024','following'),
(101,6,'2024','following'), (101,7,'2024','following'), (101,8,'2024','following'), (101,20,'2024','following'), (101,12,'2024','following'),
(102,1,'2024','following'), (102,2,'2024','following'), (102,3,'2024','following'), (102,4,'2024','following'),
(102,6,'2024','following'), (102,7,'2024','following'), (102,8,'2024','following'), (102,20,'2024','following'), (102,12,'2024','following'),
(103,1,'2024','following'), (103,2,'2024','following'), (103,3,'2024','following'), (103,4,'2024','following'),
(103,16,'2024','following'), (103,18,'2024','following'), (103,8,'2024','following'), (103,20,'2024','following'), (103,12,'2024','following'),
(104,1,'2024','following'), (104,2,'2024','following'), (104,3,'2024','following'), (104,4,'2024','following'),
(104,16,'2024','following'), (104,19,'2024','following'), (104,8,'2024','following'), (104,20,'2024','following'), (104,12,'2024','following'),
(105,1,'2024','following'), (105,2,'2024','following'), (105,3,'2024','following'), (105,4,'2024','following'),
(105,6,'2024','following'), (105,7,'2024','following'), (105,8,'2024','following'), (105,20,'2024','following'), (105,12,'2024','following'),
(106,1,'2024','following'), (106,2,'2024','following'), (106,3,'2024','following'), (106,4,'2024','following'),
(106,6,'2024','following'), (106,7,'2024','following'), (106,8,'2024','following'), (106,20,'2024','following'), (106,12,'2024','following'),
(107,1,'2024','following'), (107,2,'2024','following'), (107,3,'2024','following'), (107,4,'2024','following'),
(107,16,'2024','following'), (107,18,'2024','following'), (107,8,'2024','following'), (107,20,'2024','following'), (107,12,'2024','following'),
(108,1,'2024','following'), (108,2,'2024','following'), (108,3,'2024','following'), (108,4,'2024','following'),
(108,6,'2024','following'), (108,7,'2024','following'), (108,8,'2024','following'), (108,20,'2024','following'), (108,12,'2024','following'),
(109,1,'2024','following'), (109,2,'2024','following'), (109,3,'2024','following'), (109,4,'2024','following'),
(109,6,'2024','following'), (109,7,'2024','following'), (109,8,'2024','following'), (109,20,'2024','following'), (109,12,'2024','following'),
(110,1,'2024','following'), (110,2,'2024','following'), (110,3,'2024','following'), (110,4,'2024','following'),
(110,16,'2024','following'), (110,18,'2024','following'), (110,8,'2024','following'), (110,20,'2024','following'), (110,12,'2024','following');

-- Grade 11B (stu_id 111-120)
INSERT INTO student_subject (stu_id, sub_id, year_name, status) VALUES
(111,1,'2024','following'), (111,2,'2024','following'), (111,3,'2024','following'), (111,4,'2024','following'),
(111,6,'2024','following'), (111,7,'2024','following'), (111,8,'2024','following'), (111,20,'2024','following'), (111,12,'2024','following'),
(112,1,'2024','following'), (112,2,'2024','following'), (112,3,'2024','following'), (112,4,'2024','following'),
(112,16,'2024','following'), (112,18,'2024','following'), (112,8,'2024','following'), (112,20,'2024','following'), (112,12,'2024','following'),
(113,1,'2024','following'), (113,2,'2024','following'), (113,3,'2024','following'), (113,4,'2024','following'),
(113,6,'2024','following'), (113,7,'2024','following'), (113,8,'2024','following'), (113,20,'2024','following'), (113,12,'2024','following'),
(114,1,'2024','following'), (114,2,'2024','following'), (114,3,'2024','following'), (114,4,'2024','following'),
(114,16,'2024','following'), (114,18,'2024','following'), (114,8,'2024','following'), (114,20,'2024','following'), (114,12,'2024','following'),
(115,1,'2024','following'), (115,2,'2024','following'), (115,3,'2024','following'), (115,4,'2024','following'),
(115,6,'2024','following'), (115,7,'2024','following'), (115,8,'2024','following'), (115,20,'2024','following'), (115,12,'2024','following'),
(116,1,'2024','following'), (116,2,'2024','following'), (116,3,'2024','following'), (116,4,'2024','following'),
(116,6,'2024','following'), (116,7,'2024','following'), (116,8,'2024','following'), (116,20,'2024','following'), (116,12,'2024','following'),
(117,1,'2024','following'), (117,2,'2024','following'), (117,3,'2024','following'), (117,4,'2024','following'),
(117,16,'2024','following'), (117,18,'2024','following'), (117,8,'2024','following'), (117,20,'2024','following'), (117,12,'2024','following'),
(118,1,'2024','following'), (118,2,'2024','following'), (118,3,'2024','following'), (118,4,'2024','following'),
(118,6,'2024','following'), (118,7,'2024','following'), (118,10,'2024','following'), (118,20,'2024','following'), (118,12,'2024','following'),
(119,1,'2024','following'), (119,2,'2024','following'), (119,3,'2024','following'), (119,4,'2024','following'),
(119,6,'2024','following'), (119,7,'2024','following'), (119,8,'2024','following'), (119,20,'2024','following'), (119,12,'2024','following'),
(120,1,'2024','following'), (120,2,'2024','following'), (120,3,'2024','following'), (120,4,'2024','following'),
(120,16,'2024','following'), (120,18,'2024','following'), (120,8,'2024','following'), (120,20,'2024','following'), (120,12,'2024','following');

-- ========================================
-- 14. INSERT MARKS (First Term 2024)
-- ========================================
-- Sample marks for Grade 6A students (stu_id 1-10)
INSERT INTO mark (stu_id, sub_id, term_id, marks) VALUES
-- Student 1
(1,1,4,85), (1,2,4,78), (1,3,4,82), (1,4,4,90), (1,6,4,75), (1,7,4,80), (1,8,4,88), (1,12,4,92),
-- Student 2
(2,1,4,72), (2,2,4,68), (2,3,4,75), (2,4,4,85), (2,6,4,70), (2,7,4,73), (2,8,4,80), (2,12,4,85),
-- Student 3
(3,1,4,90), (3,2,4,88), (3,3,4,92), (3,4,4,87), (3,6,4,85), (3,7,4,89), (3,10,4,91), (3,12,4,94),
-- Student 4
(4,1,4,65), (4,2,4,70), (4,3,4,68), (4,4,4,75), (4,6,4,72), (4,7,4,69), (4,8,4,78), (4,12,4,80),
-- Student 5
(5,1,4,88), (5,2,4,85), (5,3,4,87), (5,4,4,92), (5,6,4,84), (5,7,4,86), (5,8,4,90), (5,12,4,93),
-- Student 6
(6,1,4,78), (6,2,4,75), (6,3,4,80), (6,4,4,83), (6,6,4,76), (6,7,4,79), (6,8,4,85), (6,12,4,88),
-- Student 7
(7,1,4,92), (7,2,4,89), (7,3,4,94), (7,4,4,90), (7,6,4,87), (7,7,4,91), (7,8,4,93), (7,12,4,95),
-- Student 8
(8,1,4,70), (8,2,4,73), (8,3,4,71), (8,4,4,78), (8,6,4,74), (8,7,4,72), (8,8,4,80), (8,12,4,82),
-- Student 9
(9,1,4,83), (9,2,4,80), (9,3,4,85), (9,4,4,88), (9,6,4,81), (9,7,4,84), (9,8,4,87), (9,12,4,90),
-- Student 10
(10,1,4,75), (10,2,4,78), (10,3,4,76), (10,4,4,82), (10,6,4,79), (10,7,4,77), (10,8,4,84), (10,12,4,86);

-- Sample marks for other grades (selecting a few representative students)
-- Grade 7A students (stu_id 21-25)
INSERT INTO mark (stu_id, sub_id, term_id, marks) VALUES
(21,1,4,82), (21,2,4,79), (21,3,4,84), (21,4,4,88), (21,6,4,76), (21,7,4,81), (21,8,4,85), (21,12,4,90),
(22,1,4,76), (22,2,4,73), (22,3,4,78), (22,5,4,82), (22,6,4,74), (22,7,4,77), (22,9,4,80), (22,12,4,83),
(23,1,4,88), (23,2,4,85), (23,3,4,90), (23,4,4,92), (23,6,4,84), (23,7,4,87), (23,8,4,89), (23,12,4,93),
(24,1,4,68), (24,2,4,72), (24,3,4,70), (24,4,4,75), (24,6,4,73), (24,7,4,71), (24,8,4,77), (24,12,4,80),
(25,1,4,91), (25,2,4,88), (25,3,4,93), (25,4,4,95), (25,6,4,87), (25,7,4,90), (25,8,4,92), (25,12,4,96);

-- Grade 9A students (stu_id 61-65)
INSERT INTO mark (stu_id, sub_id, term_id, marks) VALUES
(61,1,4,80), (61,2,4,77), (61,3,4,82), (61,4,4,85), (61,6,4,75), (61,7,4,79), (61,8,4,83), (61,20,4,88), (61,12,4,86),
(62,1,4,73), (62,2,4,70), (62,3,4,75), (62,4,4,78), (62,6,4,72), (62,7,4,74), (62,8,4,77), (62,20,4,80), (62,12,4,79),
(63,1,4,85), (63,2,4,82), (63,3,4,87), (63,4,4,90), (63,16,4,84), (63,18,4,86), (63,8,4,88), (63,20,4,91), (63,12,4,89),
(64,1,4,78), (64,2,4,75), (64,3,4,80), (64,4,4,83), (64,16,4,77), (64,18,4,79), (64,8,4,81), (64,20,4,84), (64,12,4,82),
(65,1,4,92), (65,2,4,89), (65,3,4,94), (65,4,4,96), (65,6,4,88), (65,7,4,91), (65,8,4,93), (65,20,4,95), (65,12,4,97);

-- Grade 11A students (stu_id 101-105)
INSERT INTO mark (stu_id, sub_id, term_id, marks) VALUES
(101,1,4,76), (101,2,4,73), (101,3,4,78), (101,4,4,81), (101,6,4,74), (101,7,4,77), (101,8,4,79), (101,20,4,82), (101,12,4,80),
(102,1,4,84), (102,2,4,81), (102,3,4,86), (102,4,4,89), (102,6,4,80), (102,7,4,83), (102,8,4,85), (102,20,4,88), (102,12,4,87),
(103,1,4,90), (103,2,4,87), (103,3,4,92), (103,4,4,94), (103,16,4,86), (103,18,4,88), (103,8,4,91), (103,20,4,93), (103,12,4,95),
(104,1,4,71), (104,2,4,68), (104,3,4,73), (104,4,4,76), (104,16,4,70), (104,19,4,72), (104,8,4,74), (104,20,4,77), (104,12,4,75),
(105,1,4,87), (105,2,4,84), (105,3,4,89), (105,4,4,92), (105,6,4,83), (105,7,4,86), (105,8,4,88), (105,20,4,91), (105,12,4,90);

-- ========================================
-- 15. INSERT FEE PAYMENTS
-- ========================================
-- Sample fee payments for various students
INSERT INTO fee_payment (stu_id, fee_id, fee_status, amount, month) VALUES
-- Student 1 - Fully Paid
(1,'F001','Fully Paid',5000.00,'January'),
(1,'F002','Fully Paid',2000.00,'January'),
(1,'F003','Fully Paid',1500.00,'January'),
(1,'F004','Fully Paid',500.00,'January'),
-- Student 2 - Part Paid
(2,'F001','Part Paid',3000.00,'January'),
(2,'F002','Fully Paid',2000.00,'January'),
-- Student 3 - Fully Paid
(3,'F001','Fully Paid',5000.00,'February'),
(3,'F002','Fully Paid',2000.00,'February'),
(3,'F006','Fully Paid',2000.00,'February'),
-- Student 10 - Unpaid
(10,'F001','Unpaid',0.00,'January'),
-- More payments for testing
(21,'F001','Fully Paid',5000.00,'January'),
(21,'F002','Fully Paid',2000.00,'January'),
(21,'F003','Fully Paid',1500.00,'January'),
(41,'F001','Part Paid',2500.00,'February'),
(41,'F002','Fully Paid',2000.00,'February'),
(61,'F001','Fully Paid',5000.00,'March'),
(61,'F002','Fully Paid',2000.00,'March'),
(61,'F006','Fully Paid',2000.00,'March'),
(101,'F001','Fully Paid',5000.00,'January'),
(101,'F002','Fully Paid',2000.00,'January'),
(101,'F007','Fully Paid',1000.00,'January');

-- ========================================
-- 16. INSERT STUDENT EXTRACURRICULAR ACTIVITIES
-- ========================================
INSERT INTO student_extracurricular (stu_id, activity_id, duration, status, value) VALUES
(1,1,'2 years','Active',8), (1,12,'1 year','Active',7),
(2,6,'1 year','Inactive',6), (2,19,'2 years','Active',8),
(3,2,'3 years','Active',9), (3,13,'2 years','Inactive',7),
(5,1,'1 year','Active',6), (5,29,'1 year','Active',8),
(7,3,'2 years','Inactive',7), (7,30,'1 year','Active',6),
(9,4,'1 year','Active',7), (9,28,'2 years','Active',8),
(11,2,'2 years','Inactive',6), (11,25,'3 years','Active',9),
(13,5,'1 year','Active',7), (13,26,'1 year','Inactive',6),
(15,7,'2 years','Active',8), (15,12,'1 year','Active',7),
(17,1,'3 years','Inactive',7), (17,29,'2 years','Active',9),
(21,2,'1 year','Active',8), (21,25,'2 years','Active',7),
(23,1,'2 years','Inactive',6), (23,30,'1 year','Active',8),
(25,5,'3 years','Active',9), (25,28,'2 years','Active',7),
(27,12,'2 years','Inactive',6), (27,14,'1 year','Active',8),
(29,13,'1 year','Active',7), (29,31,'2 years','Active',9),
(31,2,'2 years','Inactive',6), (31,25,'1 year','Active',7),
(41,1,'3 years','Active',8), (41,20,'2 years','Active',9),
(43,3,'2 years','Inactive',6), (43,29,'1 year','Active',7),
(45,4,'1 year','Active',8), (45,30,'2 years','Active',9),
(47,5,'2 years','Inactive',7), (47,12,'1 year','Active',8),
(61,1,'4 years','Active',9), (61,13,'3 years','Active',8),
(63,2,'3 years','Inactive',7), (63,29,'2 years','Active',9),
(65,7,'2 years','Active',8), (65,30,'1 year','Active',7),
(67,12,'3 years','Inactive',6), (67,31,'2 years','Active',8),
(81,1,'3 years','Active',9), (81,20,'2 years','Active',7),
(83,2,'2 years','Inactive',6), (83,29,'3 years','Active',8),
(101,1,'5 years','Active',10), (101,13,'4 years','Active',9),
(103,3,'3 years','Inactive',7), (103,30,'2 years','Active',8),
(105,4,'2 years','Active',9), (105,29,'3 years','Active',8),
(107,12,'4 years','Active',10), (107,31,'3 years','Active',9);


-- ========================================
-- 17. INSERT COMMENTS (Teacher feedback)
-- ========================================
INSERT INTO comment (stu_id, teach_id, comment, created_at) VALUES
(1,1,'Excellent performance in mathematics. Shows strong analytical skills.','2024-02-15 10:30:00'),
(1,3,'Good progress in science. Needs to focus more on practical experiments.','2024-02-20 14:15:00'),
(3,5,'Outstanding English language skills. Active participation in class discussions.','2024-03-10 09:45:00'),
(5,1,'Consistently good work in mathematics. Keep up the great effort!','2024-02-18 11:20:00'),
(7,7,'Excellent grasp of Sinhala language and literature.','2024-03-05 15:30:00'),
(10,2,'Needs improvement in attendance. Please discuss with parents.','2024-02-25 16:00:00'),
(21,1,'Strong mathematical foundation. Ready for advanced topics.','2024-03-12 10:00:00'),
(23,3,'Exceptional scientific aptitude. Consider encouraging participation in science competitions.','2024-03-15 13:45:00'),
(25,5,'Remarkable English communication skills. Natural leader in group activities.','2024-03-18 11:30:00'),
(41,20,'Shows great interest in business studies. Recommended for commerce stream.','2024-02-28 14:20:00'),
(43,22,'Very creative in ICT projects. Excellent programming skills.','2024-03-08 10:15:00'),
(61,1,'Preparing well for O/L examinations. Maintain the consistency.','2024-03-20 09:30:00'),
(63,21,'Good understanding of accounting principles. Practice more past papers.','2024-03-22 15:00:00'),
(101,1,'Final year preparation going well. Focus on time management during exams.','2024-03-25 11:00:00'),
(103,20,'Excellent work in all commerce subjects. Predicted good O/L results.','2024-03-27 14:45:00'),
(105,10,'Strong performance in history. Good analytical and essay writing skills.','2024-03-28 10:30:00');

-- ========================================
-- 18. INSERT SAMPLE DATES AND ATTENDANCE
-- ========================================
-- Insert some school days for First Term 2024
INSERT INTO date (date, status, term_id) VALUES
('2024-01-15','Yes',4), ('2024-01-16','Yes',4), ('2024-01-17','Yes',4), ('2024-01-18','Yes',4), ('2024-01-19','Yes',4),
('2024-01-22','Yes',4), ('2024-01-23','Yes',4), ('2024-01-24','Yes',4), ('2024-01-25','Yes',4), ('2024-01-26','Yes',4),
('2024-02-05','Yes',4), ('2024-02-06','Yes',4), ('2024-02-07','Yes',4), ('2024-02-08','Yes',4), ('2024-02-09','Yes',4),
('2024-02-12','Yes',4), ('2024-02-13','Yes',4), ('2024-02-14','Yes',4), ('2024-02-15','Yes',4), ('2024-02-16','Yes',4),
('2024-03-04','Yes',4), ('2024-03-05','Yes',4), ('2024-03-06','Yes',4), ('2024-03-07','Yes',4), ('2024-03-08','Yes',4);

INSERT INTO attendance (stu_id, date, status) VALUES
-- January 15
(1,'2024-01-15','Present'), (2,'2024-01-15','Present'), (3,'2024-01-15','Present'),
(4,'2024-01-15','Absent'), (5,'2024-01-15','Present'), (6,'2024-01-15','Present'),
(7,'2024-02-05','Present'), (8,'2024-02-05','Present'), (9,'2024-02-05','Present'),
(10,'2024-02-05','Present'), (21,'2024-02-05','Present'), (41,'2024-02-05','Absent'),
(61,'2024-02-05','Present'), (101,'2024-02-05','Present'),(10,'2024-01-15','Present'), 
(21,'2024-01-15','Present'), (41,'2024-01-15','Present'),
(61,'2024-01-15','Present'), (101,'2024-01-15','Present'),
-- January 16
(1,'2024-01-16','Present'), (2,'2024-01-16','Present'), (3,'2024-01-16','Present'),
(4,'2024-01-16','Present'), (5,'2024-01-16','Present'), (6,'2024-01-16','Absent'),
(7,'2024-01-16','Present'), (8,'2024-01-16','Present'), (9,'2024-01-16','Present'),
(10,'2024-01-16','Absent'), (21,'2024-01-16','Present'), (41,'2024-01-16','Present'),
(61,'2024-01-16','Present'), (101,'2024-01-16','Present'),
-- February 05
(1,'2024-02-05','Present'), (2,'2024-02-05','Present'), (3,'2024-02-05','Present'),
(4,'2024-02-05','Present'), (5,'2024-02-05','Present'), (6,'2024-02-05','Present');