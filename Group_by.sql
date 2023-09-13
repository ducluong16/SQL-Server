-- Ví dụ 1 , Hãy cho biết mỗi khách hàng đã đặt bao nhiêu đơn hàng 
-- Truy vấn để đếm tổng số lượng đơn hàng cho từng khách hàng và sắp xếp theo thứ tự tăng dần.
SELECT CustomerID, COUNT(CustomerID) AS Total -- Chọn cột CustomerID và sử dụng hàm COUNT để đếm số lượng đơn hàng
FROM Orders
GROUP BY CustomerID -- Nhóm các dòng dữ liệu theo CustomerID
ORDER BY Total ASC -- Sắp xếp kết quả theo cột Total tăng dần

-- Ví dụ 2 , Tính giá trị đơn giá trung bình theo nhà cung cấp mỗi sản phẩm
SELECT SupplierID, ROUND(AVG(UnitPrice), 2) -- Chọn cột SupplierID và tính trung bình giá UnitPrice, làm tròn đến 2 chữ số thập phân
FROM Products -- Truy vấn từ bảng Products
GROUP BY SupplierID -- Nhóm các dòng dữ liệu theo SupplierID

-- Trong ví dụ trên, chúng ta sử dụng câu lệnh SELECT để chọn cột SupplierID và tính trung bình giá UnitPrice bằng cách sử dụng hàm AVG. Sau đó, chúng ta sử dụng hàm ROUND để làm tròn kết quả đến 2 chữ số thập phân. Tiếp theo, chúng ta sử dụng cú pháp FROM để chỉ định bảng Products mà chúng ta truy vấn. Cuối cùng, chúng ta sử dụng GROUP BY để nhóm các dòng dữ liệu theo cột SupplierID.

-- Kết quả của câu truy vấn này sẽ trả về một bảng với hai cột: SupplierID và Average (trung bình giá UnitPrice). Mỗi dòng trong bảng sẽ đại diện cho một nhà cung cấp (theo SupplierID) và giá trung bình của các sản phẩm của nhà cung cấp đó.


-- Ví dụ 3, Các bạn hãy cho biết mỗi thể loại có bao nhiêu sản phẩm trong kho
SELECT CategoryID, SUM(UnitsInStock) AS Total -- Chọn cột CategoryID và tính tổng số lượng đơn vị trong kho
FROM Products -- Truy vấn từ bảng Products
GROUP BY CategoryID -- Nhóm các dòng dữ liệu theo CategoryID
-- Dòng 1: SELECT CategoryID, SUM(UnitsInStock) AS Total - Chọn cột CategoryID và tính tổng số lượng đơn vị trong kho (UnitsInStock). Kết quả của phép tính sẽ được đặt tên là Total.
-- Dòng 2: FROM Products - Truy vấn từ bảng Products. Đây là bảng chứa dữ liệu về các sản phẩm.
-- Dòng 3: GROUP BY CategoryID - Nhóm các dòng dữ liệu theo cột CategoryID. Khi sử dụng GROUP BY, các dòng có cùng giá trị của CategoryID sẽ được nhóm lại thành một dòng duy nhất trong kết quả truy vấn.
SELECT ShipCountry, ShipCity, MIN(Freight) AS Min, MAX(Freight) AS Max -- Chọn cột ShipCountry, ShipCity, tính giá trị tối thiểu (Min) và giá trị tối đa (Max) của cột Freight
FROM Orders -- Truy vấn từ bảng Orders
GROUP BY ShipCountry, ShipCity -- Nhóm các dòng dữ liệu theo cột ShipCountry và cột ShipCity
ORDER BY ShipCountry ASC, ShipCity ASC -- Sắp xếp kết quả theo cột ShipCountry tăng dần, sau đó theo cột ShipCity tăng dần
-- Dòng 1: SELECT ShipCountry, ShipCity, MIN(Freight) AS Min, MAX(Freight) AS Max - Chọn cột ShipCountry và ShipCity, và sử dụng hàm MIN để tính giá trị tối thiểu của cột Freight, và sử dụng hàm MAX để tính giá trị tối đa của cột Freight. Kết quả của các hàm này sẽ được đặt tên là Min và Max.
-- Dòng 2: FROM Orders - Truy vấn từ bảng Orders. Đây là bảng chứa dữ liệu về các đơn hàng.
-- Dòng 3: GROUP BY ShipCountry, ShipCity - Nhóm các dòng dữ liệu theo cột ShipCountry và cột ShipCity. Khi sử dụng GROUP BY, các dòng có cùng giá trị của cả ShipCountry và ShipCity sẽ được nhóm lại thành một dòng duy nhất trong kết quả truy vấn.
-- Dòng 4: ORDER BY ShipCountry ASC, ShipCity ASC - Sắp xếp kết quả theo cột ShipCountry tăng dần, sau đó theo cột ShipCity tăng dần
