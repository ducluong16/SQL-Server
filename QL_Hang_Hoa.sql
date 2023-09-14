Create database QL_HangHoa1
Use QL_HangHoa1

create table HOADON
(
soHD int check(soHD > 1) primary key,
ngaylapHD date not null,
maKH char(10) 
FOREIGN KEY (maKH) REFERENCES KHACHHANG(maKH)
)

create table KHACHHANG
(
maKH char(10) primary key,
hotenKH nvarchar(50) not null,
diachi nvarchar(50),
SDT char(10)
)

create table HANG
(
maHang char(10) primary key,
tenHang nvarchar(50) not null,
DVT nvarchar(50),
dongia int check(dongia > 1),
soluong int check(soluong > 1)
)

create table CHITIETHD
(
   soHD INT,
   maHang CHAR(10),
   giaban FLOAT,
   soluong INT,
   PRIMARY KEY (soHD, maHang),
   FOREIGN KEY (soHD) REFERENCES HOADON(soHD),
   FOREIGN KEY (maHang) REFERENCES HANG(maHang)
);


Insert into HOADON(soHD, ngaylapHD, maKH)
Values 
('2', '20230816', 'KH1'),
('3', '20230930', 'KH2'),
('4', '20231029', 'KH3'),
('5', '20231130', 'KH4'),
('6', '20231231', 'KH5'),
('7', '20230820', 'KH6'),
('8', '20230707', 'KH7'),
('9', '20230731', 'KH8'),
('10', '20230131', 'KH9'),
('11', '20230212', 'KH10'),
('12', '20230530', 'KH11'),
('13', '20230620', 'KH12'),
('14', '20230303', 'KH13'),
('15', '20230401', 'KH14'),
('16', '20230520', 'KH15')

Insert into KHACHHANG(maKH,hotenKH,diachi,SDT)
Values
('KH1', N'Lê Sao Mai', N'Quảng Ninh', '0772278902'),
('KH2', N'Nguyễn Công Quý', N'Nam Định', '0915225877'),
('KH3', N'Trần Linh', N'Hà Tĩnh', '0914314818'),
('KH4', N'Phan Anh Quân', N'Ba Đình', '0983121950'),
('KH5', N'Đoàn Minh Anh', N'Thanh Xuân', '0933224530'),
('KH6', N'Phan Ý Như', N'Thanh Xuân', '0983523960'),
('KH7', N'Lưu Hải Anh', N'Hoàng Mai', '0915262335'),
('KH8', N'Lưu Thanh Tùng', N'Hoàng Mai', '0915262732'),
('KH9', N'Nguyễn Ngọc Anh', N'Tây Hồ', '0915232235'),
('KH10', N'Nguyễn Phi Hùng', N'Ba Đình', '0933327931'),
('KH11', N'Lương Minh Đạt', N'Hoàn Kiếm', '0913256890'),
('KH12', N'Đỗ Mai Chi', N'Hai Bà Trưng', '0913677830'),
('KH13', N'Lê Hoàng Trọng Khôi', N'Hai Bà Trưng', '0983923950'),
('KH14', N'Nguyễn Bích Hồng', N'Thanh Xuân', '0935262830'),
('KH15', N'Nguyễn An Khanh', N'Hoàn Kiếm', '0983212430')

Insert into HANG(maHang,tenHang,DVT,dongia,soluong)
Values
('H1', N'Bút chì', N'cây', '3000', '100'),
('H2', N'Bút bi', N'cây', '5000', '200'),
('H3', N'Bút chì', N'hộp', '30000', '50'),			
('H4', N'Bút bi', N'hộp', '50000', '70'),			
('H5', N'Bút màu', N'cây', '5000', '120'),
('H6', N'Sách giáo khoa', N'quyển', '20000', '80'),
('H7', N'Sách bài tập', N'quyển', '25000', '80'),
('H8', N'Vở 100 trang', N'quyển', '10000', '300'),
('H9', N'Vở 200 trang', N'quyển', '18000', '250'),
('H10', N'Sổ tay', N'cuốn', '20000', '40'),
('H11', N'Sổ tay loai 1', N'cuốn', '50000', '30'),
('H12', N'Hộp bút', N'cái', '60000', '20'),
('H13', N'Truyện tranh', N'quyển', '20000', '100'),
('H14', N'Phấn bảng', N'hộp', '30000', '40'),
('H15', N'Phấn màu', N'hộp', '40000', '40')
Insert into CHITIETHD(soHD,maHang,giaban,soluong)
Values 
('2','KH1',10,5),
('3','KH2',15,4),
('4','KH3',10,3),
('5','KH4',9,5),
('6','KH5',11,8),
('7','KH6',7,6),
('8','KH7',8,9),
('9','KH8',10,4),
('10','KH1',7,6),
('11','KH10',4,3),
('12','KH11',15,7),
('13','KH12',11,10),
('14','KH13',5,8),
('15','KH14',6,7), 
('16','KH15',7,9) 