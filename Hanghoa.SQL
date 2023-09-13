CREATE TABLE HOADON(
   soHD INT PRIMARY KEY,
   ngaylapHD DATE,
   maKH INT,
   FOREIGN KEY (maKH) REFERENCES KHACHHANG(maKH)
);

CREATE TABLE KHACHHANG(
   maKH INT PRIMARY KEY,
   hotenKH NVARCHAR(50),
   diachi NVARCHAR(100),
   SDT NVARCHAR(20)
);

CREATE TABLE HANG(
   maHang INT PRIMARY KEY,
   tenHang NVARCHAR(50),
   DVT NVARCHAR(20),
   dongia FLOAT,
   soluong INT
);

CREATE TABLE CHITIETHD(
   soHD INT,
   maHang INT,
   giaban FLOAT,
   soluong INT,
   PRIMARY KEY (soHD, maHang),
   FOREIGN KEY (soHD) REFERENCES HOADON(soHD),
   FOREIGN KEY (maHang) REFERENCES HANG(maHang)
);

INSERT INTO HOADON (soHD, ngaylapHD, maKH)
VALUES
(1, '2022-01-01', 1),
(2, '2022-01-02', 2),
(3, '2022-01-03', 3),
(4, '2022-01-04', 1),
(5, '2022-01-05', 2);

INSERT INTO KHACHHANG (maKH, hotenKH, diachi, SDT)
VALUES
(1, N'khách hàng 1', N'Địa chỉ 1', '0123456789'),
(2, N'khách hàng 2', N'Địa chỉ 2', '0123456779'),
(3, N'khách hàng 3', N'Địa chỉ 2', '0123456799');

INSERT INTO HANG (maHang, tenHang, DVT, dongia, soluong)
VALUES
(1, N'hàng 1', N'ĐVT 1', 10.5, 100),
(2, N'hàng 2', N'ĐVT 2', 20.0, 200),
(3, N'hàng 3', N'ĐVT 3', 30.5, 300),
(4, N'hàng 4', N'ĐVT 4', 40.0, 400),
(5, N'hàng 5', N'ĐVT 5', 50.5, 500);

INSERT INTO CHITIETHD (soHD, maHang, giaban, soluong)
VALUES
(1, 1, 15.0, 5),
(1, 2, 25.0, 10),
(2, 3, 35.0, 15),
(2, 4, 45.0, 20),
(3, 5, 55.0, 25);