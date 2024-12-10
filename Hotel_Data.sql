use NMCNPM_btl;
--Dữ liệu phòng
insert into Room (room_number, room_type, price, statuss) values
    -- Tầng 2
    ('R201', 'double room', 250, 'Available'),
    ('R202', 'double room', 250, 'Available'),
    ('R203', 'single room', 150, 'Available'),
    ('R204', 'double room', 250, 'Available'),
    ('R205', 'single room', 150, 'Available'),
    ('R206', 'double room', 250, 'Available'),
    ('R207', 'single room', 150, 'Available'),
    ('R208', 'double room', 250, 'Available'),
    ('R209', 'single room', 150, 'Available'),
    ('R210', 'single room', 150, 'Available'),

    -- Tầng 3
    ('R301', 'single room', 150, 'Available'),
    ('R302', 'double room', 250, 'Available'),
    ('R303', 'single room', 150, 'Available'),
    ('R304', 'double room', 250, 'Available'),
    ('R305', 'single room', 150, 'Available'),
    ('R306', 'single room', 150, 'Available'),
    ('R307', 'single room', 150, 'Available'),
    ('R308', 'single room', 150, 'Available'),
    ('R309', 'single room', 150, 'Available'),
    ('R310', 'double room', 250, 'Available'),

    -- Tầng 4
    ('R401', 'single room', 150, 'Available'),
    ('R402', 'double room', 250, 'Available'),
    ('R403', 'double room', 250, 'Available'),
    ('R404', 'double room', 250, 'Available'),
    ('R405', 'single room', 150, 'Available'),
    ('R406', 'double room', 250, 'Available'),
    ('R407', 'double room', 250, 'Available'),
    ('R408', 'double room', 250, 'Available'),
    ('R409', 'single room', 150, 'Available'),
    ('R410', 'double room', 250, 'Available'),

    -- Tầng 5
    ('R501', 'double room', 250, 'Available'),
    ('R502', 'double room', 250, 'Available'),
    ('R503', 'double room', 250, 'Available'),
    ('R504', 'double room', 250, 'Available'),
    ('R505', 'double room', 250, 'Available'),
    ('R506', 'double room', 250, 'Available'),
    ('R507', 'single room', 150, 'Available'),
    ('R508', 'double room', 250, 'Available'),
    ('R509', 'single room', 150, 'Available'),
    ('R510', 'double room', 250, 'Available'),

    -- Tầng 6
    ('R601', 'single room', 150, 'Available'),
    ('R602', 'double room', 250, 'Available'),
    ('R603', 'single room', 150, 'Available'),
    ('R604', 'double room', 250, 'Available'),
    ('R605', 'single room', 150, 'Available'),
    ('R606', 'double room', 250, 'Available'),
    ('R607', 'single room', 150, 'Available'),
    ('R608', 'double room', 250, 'Available'),
    ('R609', 'single room', 150, 'Available'),
    ('R610', 'double room', 250, 'Available');

--Dữ liệu dịch vụ
insert into Service (service_name, price, description) values
	('Snacks', 8.5, 'Candies, Chips, Biscuits of various brands'),
	('Fruits', 10, 'Mangos, Watermelons, Apples, Grapes, Bananas'),
	('Beverages', 9, 'CocaCola, Pepsi, Fanta, Strongbow, Wine, Beer and types of juices'),
	('Sport equipment', 15, 'Available equipments for sports like badminton, tennis, volleyball, basketball. Hire duration is 2 hours per person'),
	('Party time', 80, 'Guest using this service will be able to rent a conference room for a night to open a party, basic needs like decorations, snacks...will be provided'),
	('Room cleaning',13,'Only order this during your stay and you want your room cleaner, this is not the same as when you return the room');

--Dữ liệu Staff
insert into Staff (name_staff, gender, birthday, address, position, salary, bonus, shift, hired_date, contact_info) values
	--Người quản lý
	('Lai Duc An', 'Male', '1980-01-15', 'Quan 1 - TP Ho Chi Minh', 'Manager', 450.00, 60.00, 'Day', '2020-05-10', '0912345678'),
    ('Tran Van Bach', 'Male', '1985-03-28', 'Hai Ba Trung - Ha Noi', 'Manager', 450.00, NULL, 'Night', '2021-04-15', '0923456789'),
    ('Le Thi Huong', 'Female', '1978-06-21', 'Thanh Khe - Da Nang', 'Manager', 450.00, 45.00, 'Day', '2019-07-20', '0934567892'),
    ('Pham Van Dong', 'Male', '1982-09-22', 'Nha Trang - Khanh Hoa', 'Manager', 450.00, NULL, 'Night', '2022-01-10', '0945678931'),
    ('Hoang Thi Oanh', 'Female', '1987-12-23', 'Quan 7 - TP Ho Chi Minh', 'Manager', 450.00, 50.00, 'Day', '2020-03-11', '0956789012'),

    -- Nhân viên 1 đến 10
    ('Nguyen Van An', 'Male', '1990-01-18', 'Quan 1 - TP Ho Chi Minh', 'Cleaning', 250.00, NULL, 'Day', '2020-05-10', '0912345687'),
    ('Tran Thi Bao', 'Female', '1988-03-12', 'Hai Ba Trung - Ha Noi', 'Waiter', 250.00, NULL, 'Night', '2021-04-15', '0923456234'),
    ('Le Van Chu', 'Male', '1992-06-25', 'Thanh Khe - Da Nang', 'Receptionist', 270.00, 50.00, 'Day', '2019-07-20', '0934567654'),
    ('Pham Thi Dao', 'Female', '1995-09-11', 'Nha Trang - Khanh Hoa', 'Chef', 330.00, NULL, 'Night', '2022-01-10', '0945678667'),
    ('Hoang Van En', 'Male', '1987-12-31', 'Quan 7 - TP Ho Chi Minh', 'Cleaning', 250.00, 30.00, 'Day', '2020-03-11', '0956782892'),
    ('Do Thi Phuong', 'Female', '1993-04-04', 'Ba Dinh - Ha Noi', 'Waiter', 250.00, NULL, 'Night', '2021-02-09', '0967897477'),
    ('Nguyen Van Giap', 'Male', '1991-07-21', 'Lien Chieu - Da Nang', 'Receptionist', 270.00, 40.00, 'Day', '2021-08-01', '0973351234'),
    ('Le Thi Hanh', 'Female', '1989-11-30', 'Can Tho', 'Chef', 330.00, NULL, 'Night', '2020-12-15', '0989213425'),
    ('Tran Van Kien', 'Male', '1990-10-10', 'Bien Hoa - Dong Nai', 'Cleaning', 250.00, NULL, 'Day', '2019-11-25', '0990123349'),
    ('Vu Thi Yen', 'Female', '1994-05-23', 'Thanh Xuan - Ha Noi', 'Waiter', 250.00, 45.00, 'Night', '2021-06-18', '0901234228'),

    -- Nhân viên 11 đến 20
    ('Pham Van Khang', 'Male', '1988-02-02', 'Quan 3 - TP Ho Chi Minh', 'Receptionist', 270.00, NULL, 'Day', '2021-03-15', '0913476789'),
    ('Nguyen Thi Loan', 'Female', '1992-09-01', 'Cau Giay - Ha Noi', 'Chef', 330.00, NULL, 'Night', '2022-07-22', '0924568898'),
    ('Do Van Manh', 'Male', '1985-10-11', 'Phan Thiet - Binh Thuan', 'Cleaning', 250.00, 35.00, 'Day', '2020-09-09', '0935616901'),
    ('Tran Thi Nhan', 'Female', '1993-11-28', 'Ninh Kieu - Can Tho', 'Waiter', 250.00, NULL, 'Night', '2019-10-12', '0946785212'),
    ('Le Van Kien', 'Male', '1994-03-23', 'Binh Thanh - TP Ho Chi Minh', 'Receptionist', 270.00, 30.00, 'Day', '2020-02-17', '0957865123'),
    ('Vu Thi Phuoc', 'Female', '1990-07-17', 'Son Tra - Da Nang', 'Chef', 330.00, 55.00, 'Night', '2021-09-25', '0968933234'),
    ('Hoang Van Quang', 'Male', '1989-05-25', 'Dien Bien Phu', 'Cleaning', 250.00, NULL, 'Day', '2019-05-21', '0979912885'),
    ('Tran Thi Hoa', 'Female', '1991-12-22', 'Ha Tinh - Ha Tinh', 'Waiter', 250.00, 30.00, 'Night', '2020-06-10', '0980123376'),
    ('Nguyen Van Siet', 'Male', '1987-08-11', 'Tam Ky - Quang Nam', 'Receptionist', 270.00, NULL, 'Day', '2018-12-20', '0994334567'),
    ('Pham Thi Trang', 'Female', '1995-10-23', 'Vinh - Nghe An', 'Chef', 330.00, NULL, 'Night', '2021-01-01', '0922345678');

--Dữ liệu Manager(User)
insert into User (username, passwords) values
    ('laiducan', 'an19800115'),
    ('tranvanbach', 'bach19850328'),
    ('lethihuong', 'huong19780621'),
    ('phamvandong', 'dong19820922'),
    ('hoangthioanh', 'oanh19871223');