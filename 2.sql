CREATE DATABASE Sinh_viên2;

USE Sinh_viên2;

CREATE TABLE sinhvien (
  MaSV INT PRIMARY KEY,
  hotenSV VARCHAR(50),
  gioitinh VARCHAR(10),
  ngaysinh DATE,
  quequan VARCHAR(100),
  lop VARCHAR(20)
);
CREATE TABLE monhoc (
  maMH INT PRIMARY KEY,
  tenMH VARCHAR(50),
  DVHT INT
);
CREATE TABLE Ketqua (
  MaSV INT,
  maMH INT,
  Diem FLOAT,
  PRIMARY KEY (MaSV, maMH),
  FOREIGN KEY (MaSV) REFERENCES sinhvien(MaSV),
  FOREIGN KEY (maMH) REFERENCES monhoc(maMH)
);
-- Chèn dữ liệu vào bảng sinhvien
INSERT INTO sinhvien (MaSV, hotenSV, gioitinh, ngaysinh, quequan, lop)
VALUES (1, 'Nguyen Van A', 'Nam', '1990-01-01', 'Ha Noi', 'A1'),
       (2, 'Tran Thi B', 'Nu', '1992-03-15', 'Ho Chi Minh', 'B2'),
       (3, 'Le Van C', 'Nam', '1991-05-20', 'Da Nang', 'C3');

-- Chèn dữ liệu vào bảng monhoc
INSERT INTO monhoc (maMH, tenMH, DVHT)
VALUES (1, 'Toan', 4),
       (2, 'Hoa', 3),
       (3, 'Ly', 3);

-- Chèn dữ liệu vào bảng Ketqua
INSERT INTO Ketqua (MaSV, maMH, Diem)
VALUES (1, 1, 8.5),
       (1, 2, 7.2),
       (2, 1, 9.0),
       (3, 3, 6.5);

-- Chèn dữ liệu vào bảng sinhvien
INSERT INTO sinhvien (MaSV, hotenSV, gioitinh, ngaysinh, quequan, lop)
VALUES (1, 'Nguyen Van A', 'Nam', '1990-01-01', 'Ha Noi', 'A1'),
       (2, 'Tran Thi B', 'Nu', '1992-03-15', 'Ho Chi Minh', 'B2'),
       (3, 'Le Van C', 'Nam', '1991-05-20', 'Da Nang', 'C3'),
       --Thêm dữ liệu đầy đủ tại đây--

-- Chèn dữ liệu vào bảng monhoc
INSERT INTO monhoc (maMH, tenMH, DVHT)
VALUES (1, 'Toan', 4),
       (2, 'Hoa', 3),
       (3, 'Ly', 3),
       --Thêm dữ liệu đầy đủ tại đây--

-- Chèn dữ liệu vào bảng Ketqua
INSERT INTO Ketqua (MaSV, maMH, Diem)
VALUES (1, 1, 8.5),
       (1, 2, 7.2),
       (2, 1, 9.0),
       (3, 3, 6.5),
       --Thêm dữ liệu đầy đủ tại đây--