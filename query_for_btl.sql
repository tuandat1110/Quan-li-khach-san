create database NMCNPM_btl;

use NMCNPM_btl;

-- File nay luu code tho dung de tao dung Database . Cho ae xem xet de chot ket qua cuoi cung
-- Bảng người dùng
CREATE TABLE User (
    username VARCHAR(50) UNIQUE NOT NULL,
    passwords VARCHAR(255) NOT NULL
);
-- Bảng kho
CREATE TABLE Inventory (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    added_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    expire_date DATETIME
);
-- Bảng phòng
CREATE TABLE Room (
    -- room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(10) UNIQUE NOT NULL,
    room_type VARCHAR(20) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    statuss VARCHAR(20) NOT NULL,
    constraint pr_key1 primary key(room_number)
);
-- Bảng khách hàng
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name_customer VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    birthday DATE,
    phone VARCHAR(15),
    email VARCHAR(50),
    address TEXT
);
-- Bảng đặt phòng
CREATE TABLE Booking (
    -- booking_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(10),
    customer_id INT not null,
    check_in_date DATETIME NOT NULL,
    check_out_date DATETIME,
    total_price DECIMAL(10, 2) NOT NULL,
    statuss VARCHAR(20) NOT NULL,
    constraint pr_key2 primary key(room_number,customer_id),
    constraint fr_key1 foreign key(room_number) references Room(room_number),
    constraint fr_key2 foreign key(customer_id) references Customer(customer_id)
);
-- Bảng nhân viên
CREATE TABLE Staff (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name_staff VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    birthday DATE,
    address VARCHAR(255),
    position VARCHAR(50),
    salary DECIMAL(10, 2) NOT NULL,
    bonus DECIMAL(10, 2),
    shift VARCHAR(20),
    hired_date DATE,
    contact_info VARCHAR(50)
);
-- Bảng dịch vụ
CREATE TABLE Service (
    -- service_id INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT,
    constraint pr_key3 primary key(service_name)
);
-- Bảng sử dụng dịch vụ
CREATE TABLE Service_Usage (
	-- usage_id INT AUTO_INCREMENT PRIMARY KEY,
    -- booking_id INT,
    customer_id INT not null,
    -- service_id INT,
    service_name VARCHAR(100) not null,
    quantity INT NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    constraint pr_key4 primary key(customer_id,service_name),
    constraint fr_key3 foreign key(customer_id) references Customer(customer_id),
    constraint fr_key4 foreign key(service_name) references Service(service_name)
);