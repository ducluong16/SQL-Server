-- Lấy thông tin số hóa đơn, tên khách hàng và tổng giá trị của các hóa đơn có giá trị lớn hơn 100:

SELECT soHD, hotenKH, SUM(giaban * soluong) AS tonggiatri 
FROM HOADON JOIN KHACHHANG ON HOADON.maKH = KHACHHANG.maKH 
JOIN CHITIETHD ON HOADON.soHD = CHITIETHD.soHD GROUP BY soHD, hotenKH 
HAVING SUM(giaban * soluong) > 100;
-- Lấy thông tin tên khách hàng và tổng số lượng mặt hàng đã mua của từng khách hàng, sắp xếp theo tổng số lượng giảm dần:
SELECT hotenKH, SUM(soluong) AS tongsoluong FROM KHACHHANG 
JOIN HOADON 
ON KHACHHANG.maKH = HOADON.maKH 
JOIN CHITIETHD 
ON HOADON.soHD = CHITIETHD.soHD 
GROUP BY hotenKH 
ORDER BY tongsoluong DESC;
-- Lấy thông tin số hóa đơn và số lượng các mặt hàng đã bán trong từng hóa đơn, chỉ lấy những hóa đơn có số lượng mặt hàng lớn hơn 5:

SELECT soHD, COUNT(*) AS soluonghang 
FROM CHITIETHD 
GROUP BY soHD 
HAVING COUNT(*) > 5;
-- Lấy thông tin tên khách hàng, số hóa đơn và tổng giá trị của các hóa đơn mà khách hàng đã mua hàng có giá trị cao nhất:
SELECT hotenKH, COUNT(soHD) AS soluonghoadon, MAX(giaban * soluong) AS tonggiatri 
FROM KHACHHANG 
JOIN HOADON ON KHACHHANG.maKH = HOADON.maKH JOIN CHITIETHD ON HOADON.soHD = CHITIETHD.soHD JOIN HANG ON CHITIETHD.maHang = HANG.maHang GROUP BY hotenKH;
-- Lấy thông tin tên khách hàng và tổng giá trị của các hóa đơn mà khách hàng đã mua hàng có đơn giá lớn hơn 10:
SELECT hotenKH, SUM(giaban * soluong) AS tonggiatri 
FROM KHACHHANG 
JOIN HOADON 
ON KHACHHANG.maKH = HOADON.maKH 
JOIN CHITIETHD 
ON HOADON.soHD = CHITIETHD.soHD 
JOIN HANG 
ON CHITIETHD.maHang = HANG.maHang 
WHERE dongia > 10 
GROUP BY hotenKH;
-- Lấy thông tin tên khách hàng và tổng giá trị của các hóa đơn mà khách hàng đã mua ít nhất 5 mặt hàng:
SELECT hotenKH, SUM(giaban * soluong) AS tonggiatri 
FROM KHACHHANG 
JOIN HOADON 
ON KHACHHANG.maKH = HOADON.maKH 
JOIN CHITIETHD 
ON HOADON.soHD = CHITIETHD.soHD 
GROUP BY hotenKH 
HAVING COUNT(DISTINCT CHITIETHD.maHang) >= 5;
-- Lấy thông tin số hóa đơn, ngày lập hóa đơn và tên khách hàng của các hóa đơn được lập trong tháng 10 năm 2023
SELECT soHD, ngaylapHD, hotenKH FROM HOADON JOIN KHACHHANG ON HOADON.maKH = KHACHHANG.maKH WHERE MONTH(ngaylapHD) = 10 AND YEAR(ngaylapHD) = 2023;
-- Lấy thông tin số hóa đơn và số lượng các mặt hàng đã được bán trong từng hóa đơn
SELECT soHD, COUNT(*) AS soluonghang FROM CHITIETHD GROUP BY soHD;
-- Lấy thông tin tên khách hàng, số hóa đơn và tổng giá trị của các hóa đơn mà khách hàng có tên là "LÊ SAO MAI" đã lập
SELECT hotenKH, COUNT(soHD) AS soluonghoadon, SUM(giaban * soluong) AS tonggiatri 
FROM KHACHHANG 
JOIN HOADON 
ON KHACHHANG.maKH = HOADON.maKH 
JOIN CHITIETHD 
ON HOADON.soHD = CHITIETHD.soHD 
WHERE hotenKH = N'LÊ SAO MAI' 
GROUP BY hotenKH;
-- Lấy thông tin số hóa đơn và số lượng các mặt hàng đã được bán trong từng hóa đơn, sắp xếp theo số lượng tăng dần:

SELECT soHD, COUNT(*) AS soluonghang 
FROM CHITIETHD 
GROUP BY soHD 
ORDER BY soluonghang ASC;
-- Lấy thông tin tên khách hàng và tổng giá trị của các hóa đơn mà khách hàng đã mua hàng có giá trị lớn nhất trong cùng một hóa đơn:

SELECT hotenKH, MAX(giaban * soluong) AS tonggiatri 
FROM KHACHHANG 
JOIN HOADON 
ON KHACHHANG.maKH = HOADON.maKH 
JOIN CHITIETHD 
ON HOADON.soHD = CHITIETHD.soHD 
GROUP BY hotenKH;
-- Lấy thông tin tên khách hàng và tổng số lượng các mặt hàng đã mua của từng khách hàng, chỉ lấy những khách hàng có tổng số lượng mặt hàng mua nhiều hơn 10:

SELECT hotenKH, SUM(soluong) AS tongsoluong FROM KHACHHANG 
JOIN HOADON 
ON KHACHHANG.maKH = HOADON.maKH 
JOIN CHITIETHD 
ON HOADON.soHD = CHITIETHD.soHD 
GROUP BY hotenKH 
HAVING SUM(soluong) > 10;
