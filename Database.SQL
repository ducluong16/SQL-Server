
-- Để tạo một cơ sở dữ liệu trong SQL Server, bạn có thể sử dụng câu lệnh sau:

CREATE DATABASE TenCSDL;

-- Trong đó, TenCSDL là tên của cơ sở dữ liệu bạn muốn tạo. Đảm bảo rằng bạn có quyền tạo cơ sở dữ liệu trên máy chủ SQL Server.
-- Sau khi tạo cơ sở dữ liệu, bạn có thể đổi tên cơ sở dữ liệu bằng cách sử dụng câu lệnh sau:

ALTER DATABASE TenCSDL MODIFY NAME = TenCSDL_Moi;

-- Trong đó, TenCSDL là tên cơ sở dữ liệu hiện tại và TenCSDL_Moi là tên mới mà bạn muốn đổi.
-- Để backup cơ sở dữ liệu trước khi xóa nó, bạn có thể sử dụng câu lệnh backup database như đã đề cập trước đó. Ví dụ:

BACKUP DATABASE TenCSDL TO DISK = 'C:\Backup\TenCSDL.bak';

-- Trong đó, TenCSDL là tên cơ sở dữ liệu bạn muốn backup và 'C:\Backup\TenCSDL.bak' là đường dẫn đến tập tin sao lưu mà bạn muốn lưu trữ.
-- Sau khi đã backup cơ sở dữ liệu, bạn có thể tiến hành xóa cơ sở dữ liệu bằng cách sử dụng câu lệnh sau:

DROP DATABASE TenCSDL;

-- Trong đó, TenCSDL là tên cơ sở dữ liệu bạn muốn xóa. Hãy lưu ý rằng việc xóa cơ sở dữ liệu sẽ xóa tất cả dữ liệu và cấu trúc đối tượng trong cơ sở dữ liệu đó, vì vậy hãy chắc chắn rằng bạn đã sao lưu dữ liệu trước khi thực hiện thao tác này.
