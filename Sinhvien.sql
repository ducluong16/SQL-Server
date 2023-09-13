CREATE DATABASE sinhvien;

USE sinhvien;

CREATE TABLE sinhvien(
   MaSV INT PRIMARY KEY,
   hotenSV NVARCHAR(50),
   gioitinh NVARCHAR(10),
   ngaysinh DATE,
   quequan NVARCHAR(50),
   lop NVARCHAR(10)
);
CREATE TABLE Monhoc(
   MaMH INT PRIMARY KEY,
   TenMH NVARCHAR(50),
   DVHT INT
);
CREATE TABLE Ketqua(
   MaSV INT,
   MaMH INT,
   Diem FLOAT,
   PRIMARY KEY (MaSV, MaMH),
   FOREIGN KEY (MaSV) REFERENCES sinhvien(MaSV),
   FOREIGN KEY (MaMH) REFERENCES Monhoc(MaMH)
);




INSERT INTO sinhvien (MaSV, hotenSV, gioitinh, ngaysinh, quequan, lop)
VALUES
(1, N'sinh viên 1', N'Nam', '2000-01-01', N'Quê quán 1', N'Lớp 1'),
(2, N'sinh viên 2', N'Nữ', '2000-01-02', N'Quê quán 2', N'Lớp 2'),
(3, N'sinh viên 3', N'Nam', '2000-01-03', N'Quê quán 1', N'Lớp 3'),
(4, N'sinh viên 4', N'Nữ', '2000-01-04', N'Quê quán 2', N'Lớp 4'),
(5, N'sinh viên 5', N'Nam', '2000-01-05', N'Quê quán 1', N'Lớp 4'),
(6, N'sinh viên 6', N'Nữ', '2000-01-06', N'Quê quán 1', N'Lớp 3'),
(7, N'sinh viên 7', N'Nam', '2000-01-07', N'Quê quán 2', N'Lớp 2'),
(8, N'sinh viên 8', N'Nữ', '2000-01-08', N'Quê quán 2', N'Lớp 1'),
(9, N'sinh viên 9', N'Nam', '2000-01-09', N'Quê quán 2', N'Lớp 2'),
(10, N'sinh viên 10', N'Nữ', '2000-01-10', N'Quê quán 3', N'Lớp 3');

INSERT INTO Monhoc (MaMH, TenMH, DVHT)
VALUES
(1, N'Database', 3),
(2, N'Math', 4),
(3, N'Python', 2);
INSERT INTO Ketqua (MaSV, MaMH, Diem)
VALUES
(1, 1, 8.5),
(1, 2, 7.5),
(2, 1, 9.0),
(2, 3, 6.5),
(3, 2, 8.0),
(3, 3, 8.0),
(4, 1, 10.0),
(4, 2, 8.0),
(5, 1, 7.0),
(5, 2, 8.0),
(6, 3, 7.0),
(6, 2, 5.0),
(7, 1, 10.0),
(7, 2, 8.5),
(8, 1, 4.0),
(8, 3, 10.0),
(9, 1, 3.0),
(9, 2, 8.0),
(9, 3, 7.0),
(10, 2, 8.0);

