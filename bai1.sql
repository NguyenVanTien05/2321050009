-- Tạo database
CREATE DATABASE QUANLYBANHANG1_NguyenVanTien_2321050009
GO

-- Sử dụng database
USE QUANLYBANHANG1_NguyenVanTien_2321050009
GO

-- Câu 1&2: Tạo bảng và chèn dữ liệu

-- Bảng VATTU1
CREATE TABLE VATTU1 (
	MaVT CHAR(5) PRIMARY KEY NOT NULL,
	TenVT NVARCHAR(50),
	DVTinh NVARCHAR(20),
	Soluong INT CHECK (Soluong >= 0),
	Sodaban INT CHECK (Sodaban >= 0)
)
GO

-- Dữ liệu bảng VATTU1
INSERT INTO VATTU1 (MaVT, TenVT, DVTinh, Soluong, Sodaban)
VALUES 
('VT01', N'Bút bi', N'Hộp', 30, 15),
('VT02', N'Giấy A4', N'Ram', 50, 20),
('VT03', N'Keo dán', N'Chai', 25, 10),
('VT04', N'Tẩy', N'Cái', 40, 25)
GO

-- Bảng HOADONBAN1
CREATE TABLE HOADONBAN1 (
	MaHD CHAR(5) PRIMARY KEY NOT NULL,
	NgayLap DATETIME,
	HoTenKhach NVARCHAR(50)
)
GO

-- Dữ liệu bảng HOADONBAN1
INSERT INTO HOADONBAN1 (MaHD, NgayLap, HoTenKhach)
VALUES
('HD01', '2018-01-22', N'Lê Văn Hùng'),
('HD02', '2018-01-25', N'Nguyễn Thị Lan'),
('HD03', '2018-01-30', N'Hoàng Minh Tuấn'),
('HD04', '2018-02-05', N'Phạm Quang Anh')
GO

-- Bảng HANGXUAT1
CREATE TABLE HANGXUAT1 (
	MaHD CHAR(5) NOT NULL,
	MaVT CHAR(5) NOT NULL,
	Dongia INT CHECK (Dongia > 0),
	SLcon INT CHECK (SLcon >= 0),
	PRIMARY KEY (MaHD, MaVT),
	FOREIGN KEY (MaHD) REFERENCES HOADONBAN1(MaHD),
	FOREIGN KEY (MaVT) REFERENCES VATTU1(MaVT)
)
GO

-- Dữ liệu bảng HANGXUAT1
INSERT INTO HANGXUAT1 (MaHD, MaVT, Dongia, SLcon)
VALUES
('HD01', 'VT01', 5000, 10),
('HD02', 'VT02', 15000, 15),
('HD03', 'VT03', 7000, 8),
('HD04', 'VT04', 3000, 5)
GO

-- Câu 3: Truy vấn dữ liệu
-- Hóa đơn lập từ ngày 20/01/2018 đến ngày 31/01/2018
SELECT * FROM dbo.HOADONBAN1
WHERE NgayLap BETWEEN '2018-01-20' AND '2018-01-31';

-- Vật tư có số lượng trong khoảng từ 20 đến 50
SELECT * FROM dbo.VATTU1
WHERE Soluong BETWEEN 20 AND 50;

-- Câu 4: Tạo View
CREATE VIEW VATTU_TONKHO AS
SELECT MaVT, TenVT, Soluong - Sodaban AS SoLuongTon
FROM VATTU1
WHERE Soluong > Sodaban;
GO

SELECT * FROM VATTU_TONKHO;

-- Câu 5: Tạo Procedure thống kê số lượng đã bán
CREATE PROCEDURE ThongKe_SoLuongBan
    @MaVT CHAR(5)
AS
BEGIN
    SELECT MaVT, SUM(Sodaban) AS TongSoDaBan
    FROM VATTU1
    WHERE MaVT = @MaVT
    GROUP BY MaVT;
END;
GO

EXEC ThongKe_SoLuongBan @MaVT = 'VT02';

-- Câu 6: Tạo bảng NHAPVT và Trigger
CREATE TABLE NHAPVT (
    MaVT CHAR(5),
    SLnhap INT CHECK (SLnhap > 0)
);
GO

CREATE TRIGGER trg_CapNhatSoLuong
ON NHAPVT
AFTER INSERT
AS
BEGIN
    UPDATE VATTU1
    SET Soluong = Soluong + I.SLnhap
    FROM VATTU1 V
    JOIN inserted I ON V.MaVT = I.MaVT;
END;
GO

-- Chèn dữ liệu để kiểm tra Trigger
INSERT INTO NHAPVT (MaVT, SLnhap)
VALUES ('VT01', 20), ('VT03', 10);
GO

-- Xem kết quả sau khi trigger hoạt động
SELECT * FROM VATTU1;
GO
