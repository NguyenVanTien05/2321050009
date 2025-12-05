CREATE DATABASE quan_li_web_phim1;
USE quan_li_web_phim1;
CREATE TABLE `nguoi_dung` (
  `id` int NOT NULL,
  `ten_dang_nhap` varchar(50) DEFAULT NULL,
  `mat_khau` varchar(50) DEFAULT NULL,
  `ho_ten` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sdt` varchar(15) DEFAULT NULL,
  `vai_tro_id` int DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `email`, `sdt`, `vai_tro_id`, `ngay_sinh`) VALUES
(9, 'phamth9', '123456', 'Pham Thi Hien', 'phamth9@gmail.com', '0901000009', 1, '2001-09-09'),
(10, 'ngolv10', '123456', 'Ngo Le Van', 'ngolv10@gmail.com', '0901000010', 2, '2002-10-10'),
(11, 'user11', '123456', 'Ho Ten 11', 'user11@gmail.com', '0901000011', 1, '2000-11-11'),
(12, 'user12', '123456', 'Ho Ten 12', 'user12@gmail.com', '0901000012', 2, '2001-12-12'),
(13, 'user13', '123456', 'Ho Ten 13', 'user13@gmail.com', '0901000013', 3, '2002-01-13'),
(14, 'user14', '123456', 'Ho Ten 14', 'user14@gmail.com', '0901000014', 2, '2003-02-14'),
(15, 'user15', '123456', 'Ho Ten 15', 'user15@gmail.com', '0901000015', 1, '2004-03-15'),
(16, 'user16', '123456', 'Ho Ten 16', 'user16@gmail.com', '0901000016', 2, '2002-04-16'),
(17, 'user17', '123456', 'Ho Ten 17', 'user17@gmail.com', '0901000017', 3, '2001-05-17'),
(18, 'user18', '123456', 'Ho Ten 18', 'user18@gmail.com', '0901000018', 2, '2000-06-18'),
(19, 'user19', '123456', 'Ho Ten 19', 'user19@gmail.com', '0901000019', 1, '2003-07-19'),
(20, 'user20', '123456', 'Ho Ten 20', 'user20@gmail.com', '0901000020', 2, '2002-08-20'),
(21, 'user21', '123456', 'Ho Ten 21', 'user21@gmail.com', '0901000021', 3, '2001-09-21'),
(22, 'user22', '123456', 'Ho Ten 22', 'user22@gmail.com', '0901000022', 2, '2000-10-22'),
(23, 'user23', '123456', 'Ho Ten 23', 'user23@gmail.com', '0901000023', 1, '2003-11-23'),
(24, 'user24', '123456', 'Ho Ten 24', 'user24@gmail.com', '0901000024', 2, '2002-12-24'),
(25, 'user25', '123456', 'Ho Ten 25', 'user25@gmail.com', '0901000025', 3, '2001-01-25'),
(27, 'user27', '123456', 'Ho Ten 27', 'user27@gmail.com', '0901000027', 1, '2003-03-27'),
(28, 'user28', '123456', 'Ho Ten 28', 'user28@gmail.com', '0901000028', 2, '2002-04-28'),
(29, 'user29', '123456', 'Ho Ten 29', 'user29@gmail.com', '0901000029', 3, '2001-05-29'),
(30, 'user30', '123456', 'Ho Ten 30', 'user30@gmail.com', '0901000030', 2, '2000-06-30'),
(31, 'huyxui', 'rsthg', ' lai van huy', 'ngol48911@gmail.com', '044444', 1, '2025-12-23'),
(32, 'admin', '12345', 'Ngô Gia Lộc ', 'ngol48911@gmail.com', '0356596468', 1, '2025-12-15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `id` int NOT NULL,
  `ten_phim` varchar(255) DEFAULT NULL,
  `nam_phat_hang` int DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `quoc_gia_id` int DEFAULT NULL,
  `so_tap` int DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `mo_ta` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`id`, `ten_phim`, `nam_phat_hang`, `poster`, `quoc_gia_id`, `so_tap`, `trailer`, `mo_ta`) VALUES
(1, 'Vu mua', 2025, '/img/vu_mua.jpg', 1, 12, '/trailer/vu_mua.mp4', 'Phim ve mot cau chuyen cam dong'),
(2, 'Conan', 2008, '/img/conan.jpg', 1, 1000, '/trailer/conan.mp4', 'Tham tu nhi huyen bi'),
(3, 'Doremon', 2010, '/img/doremon.jpg', 1, 500, '/trailer/doremon.mp4', 'Chuyen ve chiec tui ky dieu'),
(4, 'Phim 4', 2023, '/img/phim4.jpg', 2, 10, '/trailer/phim4.mp4', 'Mo ta phim 4'),
(5, 'Phim 5', 2022, '/img/phim5.jpg', 3, 8, '/trailer/phim5.mp4', 'Mo ta phim 5'),
(6, 'Phim 6', 2021, '/img/phim6.jpg', 4, 15, '/trailer/phim6.mp4', 'Mo ta phim 6'),
(7, 'Phim 7', 2020, '/img/phim7.jpg', 5, 20, '/trailer/phim7.mp4', 'Mo ta phim 7'),
(8, 'Phim 8', 2019, '/img/phim8.jpg', 6, 12, '/trailer/phim8.mp4', 'Mo ta phim 8'),
(9, 'Phim 9', 2018, '/img/phim9.jpg', 7, 16, '/trailer/phim9.mp4', 'Mo ta phim 9'),
(10, 'Phim 10', 2017, '/img/phim10.jpg', 8, 14, '/trailer/phim10.mp4', 'Mo ta phim 10'),
(11, 'Phim 11', 2016, '/img/phim11.jpg', 9, 10, '/trailer/phim11.mp4', 'Mo ta phim 11'),
(12, 'Phim 12', 2015, '/img/phim12.jpg', 10, 8, '/trailer/phim12.mp4', 'Mo ta phim 12'),
(13, 'Phim 13', 2014, '/img/phim13.jpg', 11, 12, '/trailer/phim13.mp4', 'Mo ta phim 13'),
(14, 'Phim 14', 2013, '/img/phim14.jpg', 12, 15, '/trailer/phim14.mp4', 'Mo ta phim 14'),
(15, 'Phim 15', 2012, '/img/phim15.jpg', 13, 20, '/trailer/phim15.mp4', 'Mo ta phim 15'),
(16, 'Phim 16', 2011, '/img/phim16.jpg', 14, 10, '/trailer/phim16.mp4', 'Mo ta phim 16'),
(17, 'Phim 17', 2010, '/img/phim17.jpg', 15, 12, '/trailer/phim17.mp4', 'Mo ta phim 17'),
(18, 'Phim 18', 2009, '/img/phim18.jpg', 16, 14, '/trailer/phim18.mp4', 'Mo ta phim 18'),
(19, 'Phim 19', 2008, '/img/phim19.jpg', 17, 16, '/trailer/phim19.mp4', 'Mo ta phim 19'),
(20, 'Phim 20', 2007, '/img/phim20.jpg', 18, 18, '/trailer/phim20.mp4', 'Mo ta phim 20'),
(21, 'Phim 21', 2006, '/img/phim21.jpg', 19, 20, '/trailer/phim21.mp4', 'Mo ta phim 21'),
(22, 'Phim 22', 2005, '/img/phim22.jpg', 20, 22, '/trailer/phim22.mp4', 'Mo ta phim 22'),
(23, 'Phim 23', 2004, '/img/phim23.jpg', 21, 24, '/trailer/phim23.mp4', 'Mo ta phim 23'),
(24, 'Phim 24', 2003, '/img/phim24.jpg', 22, 26, '/trailer/phim24.mp4', 'Mo ta phim 24'),
(25, 'Phim 25', 2002, '/img/phim25.jpg', 23, 28, '/trailer/phim25.mp4', 'Mo ta phim 25'),
(26, 'Phim 26', 2001, '/img/phim26.jpg', 24, 30, '/trailer/phim26.mp4', 'Mo ta phim 26'),
(27, 'Phim 27', 2000, '/img/phim27.jpg', 25, 32, '/trailer/phim27.mp4', 'Mo ta phim 27'),
(28, 'Phim 28', 1999, '/img/phim28.jpg', 26, 34, '/trailer/phim28.mp4', 'Mo ta phim 28'),
(29, 'Phim 29', 1998, '/img/phim29.jpg', 27, 36, '/trailer/phim29.mp4', 'Mo ta phim 29'),
(30, 'Phim 30', 1997, '/img/phim30.jpg', 28, 38, '/trailer/phim30.mp4', 'Mo ta phim 30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim_dien_vien`
--

CREATE TABLE `phim_dien_vien` (
  `id` int NOT NULL,
  `phim_id` int DEFAULT NULL,
  `dien_vien_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phim_dien_vien`
--

INSERT INTO `phim_dien_vien` (`id`, `phim_id`, `dien_vien_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8),
(9, 5, 9),
(10, 5, 10),
(11, 6, 11),
(12, 6, 12),
(13, 7, 13),
(14, 7, 14),
(15, 8, 15),
(16, 8, 16),
(17, 9, 17),
(18, 9, 18),
(19, 10, 19),
(20, 10, 20),
(21, 11, 21),
(22, 11, 22),
(23, 12, 23),
(24, 12, 24),
(25, 13, 25),
(26, 13, 26),
(27, 14, 27),
(28, 14, 28),
(29, 15, 29),
(30, 15, 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim_the_loai`
--

CREATE TABLE `phim_the_loai` (
  `id` int NOT NULL,
  `phim_id` int DEFAULT NULL,
  `the_loai_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phim_the_loai`
--

INSERT INTO `phim_the_loai` (`id`, `phim_id`, `the_loai_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 5),
(5, 3, 2),
(6, 3, 3),
(7, 4, 4),
(8, 5, 5),
(9, 6, 6),
(10, 7, 7),
(11, 8, 8),
(12, 9, 9),
(13, 10, 10),
(14, 11, 11),
(15, 12, 12),
(16, 13, 13),
(17, 14, 14),
(18, 15, 15),
(19, 16, 16),
(20, 17, 17),
(21, 18, 18),
(22, 19, 19),
(23, 20, 20),
(24, 21, 21),
(25, 22, 22),
(26, 23, 23),
(27, 24, 24),
(28, 25, 25),
(29, 26, 26),
(30, 27, 27);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quoc_gia`
--

CREATE TABLE `quoc_gia` (
  `id` int NOT NULL,
  `ten_quoc_gia` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quoc_gia`
--

INSERT INTO `quoc_gia` (`id`, `ten_quoc_gia`) VALUES
(1, 'Viet Nam'),
(2, 'My'),
(3, 'Anh'),
(4, 'Phap'),
(5, 'Nhat Ban'),
(6, 'Han Quoc'),
(7, 'Trung Quoc'),
(8, 'Duc'),
(9, 'Nga'),
(10, 'Canada'),
(11, 'Uc'),
(12, 'Thai Lan'),
(13, 'An Do'),
(14, 'Italy'),
(15, 'Tay Ban Nha'),
(16, 'Brazil'),
(17, 'Mexico'),
(18, 'Singapore'),
(19, 'Malaysia'),
(20, 'Indonesia'),
(21, 'Argentina'),
(22, 'Chile'),
(23, 'New Zealand'),
(24, 'Ireland'),
(25, 'Thuy Dien'),
(26, 'Ha Lan'),
(27, 'Bi'),
(28, 'Thuy Si'),
(29, 'Na Uy'),
(30, 'Bo Dao Nha');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tap_phim`
--

CREATE TABLE `tap_phim` (
  `id` int NOT NULL,
  `so_tap` int DEFAULT NULL,
  `tieu_de` varchar(255) DEFAULT NULL,
  `phim_id` int DEFAULT NULL,
  `thoi_luong` float DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tap_phim`
--

INSERT INTO `tap_phim` (`id`, `so_tap`, `tieu_de`, `phim_id`, `thoi_luong`, `trailer`) VALUES
(1, 1, 'Tap 1', 1, 45, '/trailer/vu_mua_1.mp4'),
(2, 2, 'Tap 2', 1, 50, '/trailer/vu_mua_2.mp4'),
(3, 1, 'Tap 1', 2, 25, '/trailer/conan_1.mp4'),
(4, 2, 'Tap 2', 2, 30, '/trailer/conan_2.mp4'),
(5, 1, 'Tap 1', 3, 22, '/trailer/doremon_1.mp4'),
(6, 2, 'Tap 2', 3, 24, '/trailer/doremon_2.mp4'),
(7, 10, 'Tap 10', 30, 40, '/trailer/phim30_10.mp4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `the_loai`
--

CREATE TABLE `the_loai` (
  `id` int NOT NULL,
  `ten_the_loai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `the_loai`
--

INSERT INTO `the_loai` (`id`, `ten_the_loai`) VALUES
(1, 'Chieu rap'),
(2, 'Hoat hinh'),
(3, 'Tieu thuyet'),
(4, 'Hanh dong'),
(5, 'Tinh cam'),
(6, 'Hai huoc'),
(7, 'Kinh di'),
(8, 'Khoa hoc'),
(9, 'Phieu luu'),
(10, 'Bi hai'),
(11, 'Gia dinh'),
(12, 'Tam ly'),
(13, 'Am nhac'),
(14, 'Trinh tham'),
(15, 'Gia tuong'),
(16, 'Vien tuong'),
(17, 'Co trang'),
(18, 'Chien tranh'),
(19, 'Gia dinh hai'),
(20, 'Truyen tranh'),
(21, 'Vo thuat'),
(22, 'An mang'),
(23, 'The thao'),
(24, 'Tinh yeu'),
(25, 'Su kien'),
(26, 'Tai lieu'),
(27, 'Moi truong'),
(28, 'Chien trinh'),
(29, 'Hanh trinh'),
(30, 'Nguoi lon');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vai_tro`
--

CREATE TABLE `vai_tro` (
  `id` int NOT NULL,
  `ten_vai_tro` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vai_tro`
--

INSERT INTO `vai_tro` (`id`, `ten_vai_tro`) VALUES
(1, 'Quan tri vien'),
(2, 'Nguoi dung'),
(3, 'Editor'),
(4, 'Manager'),
(5, 'Tester'),
(6, 'Admin'),
(7, 'Moderator'),
(8, 'Contributor'),
(9, 'Viewer'),
(10, 'Developer'),
(11, 'Writer'),
(12, 'Director'),
(13, 'Actor'),
(14, 'Producer'),
(15, 'Customer'),
(16, 'Staff'),
(17, 'Supervisor'),
(18, 'Assistant'),
(19, 'Leader'),
(20, 'Member'),
(21, 'Trainer'),
(22, 'Guest'),
(23, 'Host'),
(24, 'Support'),
(25, 'Analyst'),
(26, 'Coordinator'),
(27, 'Intern'),
(28, 'Operator'),
(29, 'Secretary'),
(30, 'Agent');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vai_tro_id` (`vai_tro_id`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quoc_gia_id` (`quoc_gia_id`);

--
-- Chỉ mục cho bảng `phim_dien_vien`
--
ALTER TABLE `phim_dien_vien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phim_id` (`phim_id`);

--
-- Chỉ mục cho bảng `phim_the_loai`
--
ALTER TABLE `phim_the_loai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `the_loai_id` (`the_loai_id`),
  ADD KEY `phim_id` (`phim_id`);

--
-- Chỉ mục cho bảng `quoc_gia`
--
ALTER TABLE `quoc_gia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tap_phim`
--
ALTER TABLE `tap_phim`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phim_id` (`phim_id`);

--
-- Chỉ mục cho bảng `the_loai`
--
ALTER TABLE `the_loai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vai_tro`
--
ALTER TABLE `vai_tro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `phim`
--
ALTER TABLE `phim`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `phim_dien_vien`
--
ALTER TABLE `phim_dien_vien`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `phim_the_loai`
--
ALTER TABLE `phim_the_loai`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `quoc_gia`
--
ALTER TABLE `quoc_gia`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tap_phim`
--
ALTER TABLE `tap_phim`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `the_loai`
--
ALTER TABLE `the_loai`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `vai_tro`
--
ALTER TABLE `vai_tro`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ràng buộc đối với các bảng kết xuất
--

--
-- Ràng buộc cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD CONSTRAINT `nguoi_dung_ibfk_1` FOREIGN KEY (`vai_tro_id`) REFERENCES `vai_tro` (`id`);

--
-- Ràng buộc cho bảng `phim`
--
ALTER TABLE `phim`
  ADD CONSTRAINT `phim_ibfk_1` FOREIGN KEY (`quoc_gia_id`) REFERENCES `quoc_gia` (`id`);

--
-- Ràng buộc cho bảng `phim_dien_vien`
--
ALTER TABLE `phim_dien_vien`
  ADD CONSTRAINT `phim_dien_vien_ibfk_1` FOREIGN KEY (`phim_id`) REFERENCES `phim` (`id`);

--
-- Ràng buộc cho bảng `phim_the_loai`
--
ALTER TABLE `phim_the_loai`
  ADD CONSTRAINT `phim_the_loai_ibfk_1` FOREIGN KEY (`the_loai_id`) REFERENCES `the_loai` (`id`),
  ADD CONSTRAINT `phim_the_loai_ibfk_2` FOREIGN KEY (`phim_id`) REFERENCES `phim` (`id`);

--
-- Ràng buộc cho bảng `tap_phim`
--
ALTER TABLE `tap_phim`
  ADD CONSTRAINT `tap_phim_ibfk_1` FOREIGN KEY (`phim_id`) REFERENCES `phim` (`id`);
COMMIT;