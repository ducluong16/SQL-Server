-- Dưới đây là 10 câu truy vấn đơn giản cho các bảng HOADON, KHACHHANG, HANG và CHITIETHD:

-- Lấy thông tin tất cả các hóa đơn:
SELECT * FROM HOADON;

-- Lấy thông tin tất cả các khách hàng:
SELECT * FROM KHACHHANG;

-- Lấy thông tin tất cả các mặt hàng:
SELECT * FROM HANG;

-- Lấy thông tin tất cả các chi tiết hóa đơn:
SELECT * FROM CHITIETHD;

-- Lấy thông tin tên khách hàng và địa chỉ của tất cả khách hàng:
SELECT hotenKH, diachi FROM KHACHHANG;

-- Lấy thông tin số hóa đơn, ngày lập hóa đơn và mã khách hàng của tất cả các hóa đơn:
SELECT soHD, ngaylapHD, maKH FROM HOADON;

-- Lấy thông tin tên hàng và giá bán của tất cả các mặt hàng:
SELECT tenHang, giaban FROM HANG;

-- Lấy thông tin số hóa đơn và số lượng các mặt hàng đã bán trong từng hóa đơn:
SELECT soHD, COUNT(*) AS soluonghang FROM CHITIETHD GROUP BY soHD;

-- Lấy thông tin tên khách hàng và số hóa đơn của từng khách hàng:
SELECT hotenKH, COUNT(soHD) AS soluonghoadon FROM KHACHHANG JOIN HOADON ON KHACHHANG.maKH = HOADON.maKH GROUP BY hotenKH;

-- Lấy thông tin tên khách hàng và tổng giá trị của các hóa đơn mà khách hàng đã mua:
SELECT hotenKH, SUM(giaban * soluong) AS tonggiatri FROM KHACHHANG JOIN HOADON ON KHACHHANG.maKH = HOADON.maKH JOIN CHITIETHD ON HOADON.soHD = CHITIETHD.soHD GROUP BY hotenKH;

