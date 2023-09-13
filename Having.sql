-- Trong truy vấn SQL, HAVING là một điều kiện được sử dụng sau câu lệnh GROUP BY để lọc các kết quả được nhóm. HAVING chỉ cho phép hiển thị các nhóm dữ liệu thỏa mãn điều kiện được xác định.

-- Cú pháp của HAVING như sau:


SELECT column_name(s)
FROM table_name
GROUP BY column_name(s)
HAVING condition;
-- Dưới đây là một số điểm cần lưu ý về HAVING:

-- HAVING sử dụng các điều kiện logic giống như WHERE, nhưng được áp dụng cho các nhóm dữ liệu thay vì các dòng dữ liệu riêng lẻ.
-- HAVING thường được sử dụng để áp dụng điều kiện cho các hàm tổng hợp như SUM, COUNT, AVG, MIN, MAX trên các nhóm.
-- HAVING là tùy chọn và có thể được bỏ qua nếu không cần thiết.
-- HAVING không thể sử dụng cùng lúc với WHERE. Nếu bạn muốn lọc dữ liệu trước khi nhóm, hãy sử dụng WHERE. Nếu bạn muốn lọc dữ liệu sau khi nhóm, hãy sử dụng HAVING.
-- Dưới đây là một ví dụ minh họa sử dụng HAVING:


SELECT CategoryID, COUNT(*) AS TotalProducts
FROM Products
GROUP BY CategoryID
HAVING COUNT(*) > 5;
-- Trong ví dụ này, chúng ta đang lấy số lượng sản phẩm trong mỗi CategoryID từ bảng Products. Sau đó, chúng ta sử dụng HAVING COUNT(*) > 5 để chỉ hiển thị các nhóm có tổng số lượng sản phẩm lớn hơn 5.

