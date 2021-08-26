-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 24, 2021 lúc 04:07 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dangkyhoc`
--
CREATE DATABASE IF NOT EXISTS `dangkyhoc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dangkyhoc`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dsdangky`
--

CREATE TABLE `dsdangky` (
  `mamonhoc` varchar(50) NOT NULL,
  `masinhvien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dstenmonhoc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dsgiangvien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dssotinchi` int(10) NOT NULL,
  `dshocphi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dsdangky`
--

INSERT INTO `dsdangky` (`mamonhoc`, `masinhvien`, `dstenmonhoc`, `dsgiangvien`, `dssotinchi`, `dshocphi`) VALUES
('CNTT2', '68DCHT20126', 'Lập trình di động', 'Nguyễn Thái Sơn', 3, ''),
('CNTT3', '68DCHT20126', 'Lập trình trên môi trường Web', 'Trần Thị Xuân Hương', 3, ''),
('CNTT4', '68DCHT20126', 'Lập trình java', 'Nguyễn Thái Sơn', 3, ''),
('CNTT6', '68DCHT20126', 'Lập trình C++', 'Nguyễn Thái Sơn', 3, ''),
('CT1', '68DCCT21', 'Địa chất công trình', 'Lê Văn Tài', 2, ''),
('CT2', '68DCCT21', 'Thiết kế cầu thép', 'Nguyễn Tuấn Tài', 3, ''),
('CT3', '68DCCT21', 'Xây dựng nền đường', 'Hoàng Văn Vinh', 3, ''),
('CT4', '68DCCT21', 'Thiết kế cầu BTCT', 'Lê Đức Thọ', 3, ''),
('CT6', '68DCCT21', 'Môi trường trong xây dựng', 'Vũ Trọng Đại', 3, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `makhoa` varchar(50) NOT NULL,
  `tenkhoa` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`makhoa`, `tenkhoa`) VALUES
('CNTT', 'Công nghệ thông tin'),
('CT', 'Công Trình'),
('KT', 'Kế Toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc`
--

CREATE TABLE `lophoc` (
  `lop` varchar(50) NOT NULL,
  `makhoa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lophoc`
--

INSERT INTO `lophoc` (`lop`, `makhoa`) VALUES
('68DCHT21', 'CNTT'),
('68DCHT22', 'CNTT'),
('68DCHT23', 'CNTT'),
('68DCCT21', 'CT'),
('68DCCT22', 'CT'),
('68DCCT23', 'CT'),
('68DCKT21', 'KT'),
('68DCKT22', 'KT'),
('68DCKT23', 'KT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `mamonhoc` varchar(50) NOT NULL,
  `tenmonhoc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `giangvien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lichhoc` varchar(50) DEFAULT NULL,
  `sotinchi` int(10) NOT NULL,
  `hocphi` varchar(50) DEFAULT NULL,
  `makhoa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`mamonhoc`, `tenmonhoc`, `giangvien`, `lichhoc`, `sotinchi`, `hocphi`, `makhoa`) VALUES
('CNTT2', 'Lập trình di động', 'Nguyễn Thái Sơn', NULL, 3, NULL, 'CNTT'),
('CNTT3', 'Lập trình trên môi trường Web', 'Trần Thị Xuân Hương', NULL, 3, NULL, 'CNTT'),
('CNTT4', 'Lập trình java', 'Nguyễn Thái Sơn', NULL, 3, NULL, 'CNTT'),
('CT1', 'Địa chất công trình', 'Lê Văn Tài', NULL, 2, NULL, 'CT'),
('CT2', 'Thiết kế cầu thép', 'Nguyễn Tuấn Tài', NULL, 3, NULL, 'CT'),
('CT3', 'Xây dựng nền đường', 'Hoàng Văn Vinh', NULL, 3, NULL, 'CT'),
('CT4', 'Thiết kế cầu BTCT', 'Lê Đức Thọ', NULL, 3, NULL, 'CT'),
('CT5', 'Kỹ thuật thi công cầu', 'Hồ Xuân Hương', NULL, 2, NULL, 'CT'),
('CNTT5', 'Thiết kế mạng máy tính', 'Nguyễn Hoàng Anh', NULL, 2, NULL, 'CNTT'),
('CNTT6', 'Lập trình C++', 'Nguyễn Thái Sơn', NULL, 3, NULL, 'CNTT'),
('KT2', 'Marketing căn bản', 'Lê Thị Tươi', NULL, 2, NULL, 'KT'),
('CNTT7', 'Kiến trúc máy tính', 'Phạm Văn Minh', NULL, 3, NULL, 'CNTT'),
('CNTT8', 'Tin học đại cương', 'Đỗ Thu Hà', NULL, 3, NULL, 'CNTT'),
('CNTT9', 'An toàn và bảo mật hệ thống thông tin', 'Trịnh Hương Ly', NULL, 2, NULL, 'CNTT'),
('CNTT10', 'Hệ quản trị Cơ sở dữ liệu', 'Đào Thị Lê Na', NULL, 3, NULL, 'CNTT'),
('CT6', 'Môi trường trong xây dựng', 'Vũ Trọng Đại', NULL, 3, NULL, 'CT'),
('CT7', 'Định mức kinh tế kỹ thuật xây dựng', 'Lê Xuân Mai', NULL, 2, NULL, 'CT'),
('CT8', 'Phân tích hoạt động kinh tế của doanh nghiệp xây d', 'Trịnh Xuân Quyết', NULL, 3, NULL, 'CT'),
('CT9', 'Máy xây dựng', 'Nguyễn Thanh Tùng', NULL, 3, NULL, 'CT'),
('KT4', 'Pháp luật kinh tế', 'Lê Thị Hoa', NULL, 3, NULL, 'KT'),
('KT6', 'Kinh tế vĩ mô', 'Nguyễn Văn Sắc', NULL, 3, NULL, 'KT'),
('KT7', 'Kế toán xây dựng cơ bản', 'Nguyễn Hồng Đăng', NULL, 3, NULL, 'KT'),
('CNTT11', 'Kỹ thuật đồ họa máy tính', 'Nguyễn Hoài Nam', NULL, 3, NULL, 'CNTT'),
('CNTT12', 'Đồ án Hệ thống thông tin', 'Nguyễn Quang Huy', NULL, 3, NULL, 'CNTT'),
('CT13', 'Trí tuệ nhân tạo', 'Nguyễn Mạnh Thưởng', NULL, 2, NULL, 'CNTT'),
('MH22', 'abc', 'abc', NULL, 3, '', 'CNTT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `masinhvien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(50) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `lop` varchar(50) NOT NULL,
  `quequan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`masinhvien`, `username`, `password`, `hoten`, `ngaysinh`, `gioitinh`, `lop`, `quequan`, `avatar`) VALUES
('2018600651', 'xuankhanha2', 'Khanh2000', 'Vũ Xuân Khánh', '2000-06-09', 'Nam', '68DCHT21', 'Hưng Yên', ''),
('68DCCT21', 'sac', '12345', 'Nguyễn Văn Sắc', '2019-11-09', 'Nam', '68DCCT21', 'Nam Định', '../model/uploads/image-icon-24.jpg'),
('68DCHT20126', 'manhthuong', '12345', 'Nguyễn Mạnh Thưởng', '1999-06-14', 'Nam', '68DCHT21', 'Thanh Hóa', '../model/uploads/46504013_2199904010230293_3752676955611201536_o.jpg'),
('68dcht21', 'sac123', '12345', 'nguyen van sac', '2019-01-12', 'Nam', '68DCHT21', 'nam dinh', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dsdangky`
--
ALTER TABLE `dsdangky`
  ADD PRIMARY KEY (`mamonhoc`),
  ADD KEY `masinhvien` (`masinhvien`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`makhoa`);

--
-- Chỉ mục cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`lop`),
  ADD KEY `makhoa` (`makhoa`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD KEY `makhoa` (`makhoa`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`masinhvien`),
  ADD KEY `malop` (`lop`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dsdangky`
--
ALTER TABLE `dsdangky`
  ADD CONSTRAINT `dsdangky_ibfk_1` FOREIGN KEY (`masinhvien`) REFERENCES `sinhvien` (`masinhvien`);

--
-- Các ràng buộc cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD CONSTRAINT `lophoc_ibfk_1` FOREIGN KEY (`makhoa`) REFERENCES `khoa` (`makhoa`);

--
-- Các ràng buộc cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD CONSTRAINT `monhoc_ibfk_1` FOREIGN KEY (`makhoa`) REFERENCES `khoa` (`makhoa`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`lop`) REFERENCES `lophoc` (`lop`);
--
-- Cơ sở dữ liệu: `phoxinh15`
--
CREATE DATABASE IF NOT EXISTS `phoxinh15` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `phoxinh15`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `displayhomepage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `displayhomepage`) VALUES
(1, 0, 'IPhone', 0),
(2, 1, 'IPhone 13', 1),
(3, 1, 'IPhone 12', 0),
(4, 0, 'Samsung', 1),
(5, 4, 'Samsung Note X@@@', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL COMMENT 'khóa chính',
  `name` varchar(100) NOT NULL COMMENT 'Tên khách hàng',
  `email` varchar(100) NOT NULL COMMENT 'Địa chỉ mail',
  `dateOfBirth` date NOT NULL COMMENT 'Ngày sinh',
  `gender` int(1) NOT NULL COMMENT 'Giới tính',
  `phone` varchar(20) NOT NULL COMMENT 'số điện thoại',
  `address` text NOT NULL COMMENT 'Địa chỉ nhà',
  `note` text NOT NULL COMMENT 'Ghi chú thêm về khách hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `dateOfBirth`, `gender`, `phone`, `address`, `note`) VALUES
(1, 'Vũ Xuân Khánh', 'vuxuankhanh@gmail.com', '2000-04-07', 1, '0359085569', 'Mỹ Hào - Hưng Yên', 'Sở thích: Màu vàng \r\n- Hay tìm những nội thất làm từ gỗ sồi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `total` double NOT NULL,
  `create_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `fullname`, `total`, `create_at`) VALUES
(1, 'Vu Xuan Khanh', 1200000, '2021-08-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `discount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `hot`, `photo`, `price`, `discount`, `category_id`) VALUES
(4, '2 - MacBook Pro 16 Touch Bar 2.6GHz Core i7/16GB/', '<p>Khắc phục hậu quả của đại dịch Covid-19, một s&aacute;ng kiến được đưa ra giữa c&aacute;c nước ASEAN l&agrave; tổ chức &ldquo;du lịch cầu h&agrave;ng kh&ocirc;ng&rdquo; giữa &ldquo;c&aacute;c nước xanh l&aacute; c&acirc;y&rdquo; để t&aacute;i mở cửa trong khu vực&hellip;</p>\r\n', '<p>S&aacute;ng 9/9, trong khu&ocirc;n khổ chương tr&igrave;nh Đại hội đồng Li&ecirc;n nghị viện ASEAN (AIPA) 41, UB Kinh tế AIPA c&oacute; phi&ecirc;n thảo luận về vai tr&ograve; của Nghị viện trong việc th&uacute;c đẩy gắn kết v&agrave; phục hồi kinh tế ASEAN sau đại dịch Covid-19.</p>\r\n\r\n<p>L&agrave; Trưởng đo&agrave;n Việt Nam tham gia phi&ecirc;n thảo luận, Ph&oacute; Chủ tịch Quốc hội Ph&ugrave;ng Quốc Hiển nhận định, đ&acirc;y l&agrave; chủ đề mang t&iacute;nh thiết thực, c&oacute; t&iacute;nh thời sự cấp b&aacute;ch đối với mọi quốc gia th&agrave;nh vi&ecirc;n AIPA hiện nay. Trong bối cảnh khu vực v&agrave; quốc tế bị ảnh hưởng nặng nề bởi dịch bệnh Covid-19 như hiện nay, Ph&oacute; Chủ tịch Quốc hội b&agrave;y tỏ mong muốn c&aacute;c nước th&agrave;nh vi&ecirc;n sớm vượt qua kh&oacute; khăn, phục hồi nền kinh tế, ổn định đời sống x&atilde; hội v&agrave; &ldquo;kh&ocirc;ng để ai bị bỏ lại ph&iacute;a sau&rdquo;.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-3-1599635216487.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 1\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Phi&ecirc;n họp của UB Kinh tế AIPA 41 diễn ra cuối buổi s&aacute;ng ng&agrave;y 9/9/2020.</p>\r\n\r\n<p><strong>Mở cửa lại bi&ecirc;n giới, di chuyển an to&agrave;n trong ASEAN</strong></p>\r\n\r\n<p>Tham gia thảo luận, đại diện của đo&agrave;n Việt Nam n&ecirc;u r&otilde;, đại dịch Covid-19 kh&ocirc;ng chỉ l&agrave; một cuộc khủng hoảng y tế đơn thuần, m&agrave; c&ograve;n l&agrave; một cuộc khủng hoảng đối với sự ph&aacute;t triển khi c&aacute;c chuỗi cung ứng v&agrave; thương mại quốc tế bị ph&aacute; vỡ.</p>\r\n\r\n<p>Theo đ&aacute;nh gi&aacute; của Ng&acirc;n h&agrave;ng Ph&aacute;t triển ch&acirc;u &Aacute; (ADB), dự b&aacute;o tăng trưởng tổng sản phẩm quốc nội (GDP) của khu vực Đ&ocirc;ng Nam &Aacute; sẽ giảm từ 4,4% năm 2019 xuống c&ograve;n -2,7% trong năm 2020, trước khi phục hồi l&ecirc;n mức 5,2% v&agrave;o năm 2021, đặc biệt do c&aacute;c mối quan hệ thương mại v&agrave; đầu tư mạnh mẽ của khu vực n&agrave;y với Trung Quốc.</p>\r\n\r\n<p>Quan ngại s&acirc;u sắc về những tổn thất to lớn do dịch bệnh Covid-19 g&acirc;y ra ở c&aacute;c quốc gia ASEAN, trong tư c&aacute;ch chủ nh&agrave;, đo&agrave;n Việt Nam mong muốn cộng đồng ASEAN thống nhất thực hiện một chuỗi giải ph&aacute;p mang t&iacute;nh đột ph&aacute;, khả thi.</p>\r\n\r\n<p>Một l&agrave;, thực hiện th&uacute;c đẩy nhanh việc trao đổi th&ocirc;ng tin li&ecirc;n quan đến du lịch v&agrave; sức khỏe v&agrave; c&aacute;c biện ph&aacute;p cần thiết kh&aacute;c để kiểm so&aacute;t sự l&acirc;y lan của đại dịch Covid-19; củng cố sự an t&acirc;m trong di chuyển, &aacute;p dụng c&aacute;c ti&ecirc;u chuẩn an to&agrave;n v&agrave; quy tr&igrave;nh y tế hỗ trợ di chuyển xuy&ecirc;n bi&ecirc;n giới của c&ocirc;ng d&acirc;n ASEAN kh&ocirc;ng bị gi&aacute;n đoạn, đồng thời tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn an to&agrave;n v&agrave; y tế quốc tế cũng như c&aacute;c cam kết theo c&aacute;c Hiệp định c&oacute; li&ecirc;n quan giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-2-1599635215859.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 2\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Ph&oacute; Chủ tịch Quốc hội Việt Nam Ph&ugrave;ng Quốc Hiển tham gia phi&ecirc;n thảo luận.</p>\r\n\r\n<p>Hai l&agrave;, nghi&ecirc;n cứu kh&aacute;i niệm &ldquo;du lịch cầu h&agrave;ng kh&ocirc;ng&rdquo; giữa &ldquo;c&aacute;c nước xanh l&aacute; c&acirc;y&rdquo; như một s&aacute;ng kiến sơ bộ trong qu&aacute; tr&igrave;nh mở cửa lại bi&ecirc;n giới, h&igrave;nh th&agrave;nh c&aacute;c khu vực di chuyển an to&agrave;n trong ASEAN v&agrave; đề xuất hướng dẫn tham chiếu cho tất cả c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN m&agrave; kh&ocirc;ng l&agrave;m tổn hại đến những cam kết theo c&aacute;c thỏa thuận c&oacute; li&ecirc;n quan giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN.</p>\r\n\r\n<p>Ba l&agrave;, tiếp tục r&agrave; so&aacute;t v&agrave; ho&agrave;n thiện khu&ocirc;n khổ ph&aacute;p l&yacute; nhằm th&uacute;c đẩy thuận lợi h&oacute;a thương mại, bảo đảm lưu th&ocirc;ng h&agrave;ng h&oacute;a v&agrave; c&aacute;c chuỗi cung ứng trong khu vực kh&ocirc;ng bị gi&aacute;n đoạn; x&acirc;y dựng ch&iacute;nh s&aacute;ch đầu tư th&ocirc;ng tho&aacute;ng, bền vững, c&oacute; tr&aacute;ch nhiệm trong khu vực; bảo đảm an ninh lương thực v&agrave; chuỗi gi&aacute; trị n&ocirc;ng nghiệp; tăng cường sử dụng năng lượng t&aacute;i tạo; tiến tới x&acirc;y dựng kinh tế tuần ho&agrave;n.</p>\r\n\r\n<p>Bốn l&agrave;, th&uacute;c đẩy nhanh việc ph&ecirc; chuẩn c&aacute;c hiệp định, thỏa thuận thương mại trong khu vực; ưu ti&ecirc;n tăng cường c&aacute;c nỗ lực để ho&agrave;n tất đ&agrave;m ph&aacute;n v&agrave; k&yacute; kết Hiệp định Đối t&aacute;c Kinh tế To&agrave;n diện Khu vực (RCEP) trong năm 2020; tăng cường năng lực, sự tham gia v&agrave; đẩy mạnh gi&aacute;m s&aacute;t nghị viện đối với việc thực hiện c&aacute;c cam kết về đầu tư v&agrave; thương mại trong khu&ocirc;n khổ khu vực v&agrave; quốc tế, coi đ&acirc;y l&agrave; c&ocirc;ng cụ chủ yếu để th&uacute;c đẩy li&ecirc;n kết kinh tế s&acirc;u rộng hơn trong Cộng đồng ASEAN v&agrave; giữa ASEAN với c&aacute;c đối t&aacute;c kh&aacute;c.</p>\r\n\r\n<p><strong>Khai th&aacute;c t&agrave;i nguy&ecirc;n xuy&ecirc;n bi&ecirc;n giới để đảm bảo an ninh lương thực&nbsp;</strong></p>\r\n\r\n<p>Năm l&agrave;, tăng cường ph&aacute;t triển cơ sở hạ tầng số, kết nối số, an to&agrave;n dữ liệu số, kiến thức v&agrave; kỹ năng số gắn kết giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN để ph&aacute;t triển kinh tế số; chia sẻ th&ocirc;ng tin v&agrave; kinh nghiệm để xử l&yacute; c&aacute;c th&aacute;ch thức m&agrave; c&aacute;c nền tảng thương mại điện tử đang phải đối mặt; tận dụng c&aacute;c cơ hội của C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư nhằm khắc phục bất lợi từ việc đ&oacute;ng cửa nền kinh tế v&agrave; gi&atilde;n c&aacute;ch x&atilde; hội trong dịch bệnh Covid-19 v&agrave; duy tr&igrave; t&iacute;nh cạnh tranh trong kỷ nguy&ecirc;n kinh tế số.</p>\r\n\r\n<p>S&aacute;u l&agrave;, x&acirc;y dựng cơ sở hạ tầng kết nối khu vực, tăng cường kết nối giao th&ocirc;ng v&agrave; sự cần thiết của việc tăng cường hợp t&aacute;c tiểu v&ugrave;ng M&ecirc; C&ocirc;ng v&agrave; c&aacute;c tiểu v&ugrave;ng kh&aacute;c của ASEAN, đặc biệt l&agrave; về bảo vệ m&ocirc;i trường, ph&aacute;t triển n&ocirc;ng nghiệp th&ocirc;ng minh v&agrave; quản l&yacute; bền vững c&aacute;c nguồn t&agrave;i nguy&ecirc;n thi&ecirc;n nhi&ecirc;n xuy&ecirc;n bi&ecirc;n giới nhằm đảm bảo an ninh lương thực, nguồn nước v&agrave; năng lượng tại c&aacute;c tiểu v&ugrave;ng trong v&agrave; sau đại dịch Covid-19.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-5-1599635216200.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 3\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Phi&ecirc;n thảo luận diễn ra đồng thời tại điểm cầu của c&aacute;c nước trong cộng đồng ASEAN.</p>\r\n\r\n<p>Ph&aacute;t biểu tại phi&ecirc;n họp, đại diện đo&agrave;n Malaysia cho rằng, c&aacute;c nước trong ASEAN c&oacute; nhiều điểm chung n&ecirc;n ch&iacute;nh s&aacute;ch của bất cứ quốc gia n&agrave;o cũng c&oacute; thể được c&aacute;c quốc gia kh&aacute;c học tập, để c&oacute; thể tr&aacute;nh gặp sai lầm giống nhau.</p>\r\n\r\n<p>Theo nghị sỹ Malaysia, thời điểm n&agrave;y rất cần một c&aacute;ch tiếp cận chung theo hướng địa phương ho&aacute; c&aacute;c hoạt động kinh tế. Hầu hết hoạt động kinh tế đ&atilde; được t&iacute;ch hợp v&agrave;o chuối cũng ứng to&agrave;n cầu nhưng Covid- 19 đ&atilde; l&agrave;m gi&aacute;n đoạn chuỗi cung ứng n&agrave;y.</p>\r\n\r\n<p>B&agrave;i học l&agrave; cần phải giảm thiểu sự to&agrave;n cầu ho&aacute;. Nhiều doanh nghiệp đang địa phương ho&aacute; chuỗi sản xuất của m&igrave;n, ASEAN c&oacute; thể địa phương ho&aacute;, mở rộng sang khu vực ho&aacute;, xử l&yacute; chuỗi cung ứng khu vực để miễn dịch khủng hoảng trong tương lai, đại diện đo&agrave;n nghị sĩ Malaysia n&ecirc;u quan điểm.</p>\r\n\r\n<p>Chia sẻ kinh nghiệm ứng ph&oacute; với đại dịch Covid-19, đại diện Singapore cho biết nước n&agrave;y mở ra 4 loại ng&acirc;n s&aacute;ch, gồm quỹ ki&ecirc;n cường, quỹ chống chịu, quỹ đo&agrave;n kết v&agrave; quỹ thống&nbsp; nhất, bốn quỹ n&agrave;y được Ch&iacute;nh phủ hỗ trợ. B&ecirc;n cạnh đ&oacute; Singapore c&ograve;n c&oacute; ch&iacute;nh s&aacute;ch hỗ trợ để doanh nghiệp giữ việc l&agrave;m cho người lao động, ch&iacute;nh s&aacute;ch nay được gia hạn đến th&aacute;ng 3/2011.</p>\r\n\r\n<p><strong>Th&aacute;i Anh</strong></p>\r\n', 1, '1615813366_132218026418235444_8.jpg', 6000000, 30, 4),
(5, '3 - MacBook Pro 16 Touch Bar 2.6GHz Core i7/16GB/', '<p>Khắc phục hậu quả của đại dịch Covid-19, một s&aacute;ng kiến được đưa ra giữa c&aacute;c nước ASEAN l&agrave; tổ chức &ldquo;du lịch cầu h&agrave;ng kh&ocirc;ng&rdquo; giữa &ldquo;c&aacute;c nước xanh l&aacute; c&acirc;y&rdquo; để t&aacute;i mở cửa trong khu vực&hellip;</p>\r\n', '<p>S&aacute;ng 9/9, trong khu&ocirc;n khổ chương tr&igrave;nh Đại hội đồng Li&ecirc;n nghị viện ASEAN (AIPA) 41, UB Kinh tế AIPA c&oacute; phi&ecirc;n thảo luận về vai tr&ograve; của Nghị viện trong việc th&uacute;c đẩy gắn kết v&agrave; phục hồi kinh tế ASEAN sau đại dịch Covid-19.</p>\r\n\r\n<p>L&agrave; Trưởng đo&agrave;n Việt Nam tham gia phi&ecirc;n thảo luận, Ph&oacute; Chủ tịch Quốc hội Ph&ugrave;ng Quốc Hiển nhận định, đ&acirc;y l&agrave; chủ đề mang t&iacute;nh thiết thực, c&oacute; t&iacute;nh thời sự cấp b&aacute;ch đối với mọi quốc gia th&agrave;nh vi&ecirc;n AIPA hiện nay. Trong bối cảnh khu vực v&agrave; quốc tế bị ảnh hưởng nặng nề bởi dịch bệnh Covid-19 như hiện nay, Ph&oacute; Chủ tịch Quốc hội b&agrave;y tỏ mong muốn c&aacute;c nước th&agrave;nh vi&ecirc;n sớm vượt qua kh&oacute; khăn, phục hồi nền kinh tế, ổn định đời sống x&atilde; hội v&agrave; &ldquo;kh&ocirc;ng để ai bị bỏ lại ph&iacute;a sau&rdquo;.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-3-1599635216487.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 1\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Phi&ecirc;n họp của UB Kinh tế AIPA 41 diễn ra cuối buổi s&aacute;ng ng&agrave;y 9/9/2020.</p>\r\n\r\n<p><strong>Mở cửa lại bi&ecirc;n giới, di chuyển an to&agrave;n trong ASEAN</strong></p>\r\n\r\n<p>Tham gia thảo luận, đại diện của đo&agrave;n Việt Nam n&ecirc;u r&otilde;, đại dịch Covid-19 kh&ocirc;ng chỉ l&agrave; một cuộc khủng hoảng y tế đơn thuần, m&agrave; c&ograve;n l&agrave; một cuộc khủng hoảng đối với sự ph&aacute;t triển khi c&aacute;c chuỗi cung ứng v&agrave; thương mại quốc tế bị ph&aacute; vỡ.</p>\r\n\r\n<p>Theo đ&aacute;nh gi&aacute; của Ng&acirc;n h&agrave;ng Ph&aacute;t triển ch&acirc;u &Aacute; (ADB), dự b&aacute;o tăng trưởng tổng sản phẩm quốc nội (GDP) của khu vực Đ&ocirc;ng Nam &Aacute; sẽ giảm từ 4,4% năm 2019 xuống c&ograve;n -2,7% trong năm 2020, trước khi phục hồi l&ecirc;n mức 5,2% v&agrave;o năm 2021, đặc biệt do c&aacute;c mối quan hệ thương mại v&agrave; đầu tư mạnh mẽ của khu vực n&agrave;y với Trung Quốc.</p>\r\n\r\n<p>Quan ngại s&acirc;u sắc về những tổn thất to lớn do dịch bệnh Covid-19 g&acirc;y ra ở c&aacute;c quốc gia ASEAN, trong tư c&aacute;ch chủ nh&agrave;, đo&agrave;n Việt Nam mong muốn cộng đồng ASEAN thống nhất thực hiện một chuỗi giải ph&aacute;p mang t&iacute;nh đột ph&aacute;, khả thi.</p>\r\n\r\n<p>Một l&agrave;, thực hiện th&uacute;c đẩy nhanh việc trao đổi th&ocirc;ng tin li&ecirc;n quan đến du lịch v&agrave; sức khỏe v&agrave; c&aacute;c biện ph&aacute;p cần thiết kh&aacute;c để kiểm so&aacute;t sự l&acirc;y lan của đại dịch Covid-19; củng cố sự an t&acirc;m trong di chuyển, &aacute;p dụng c&aacute;c ti&ecirc;u chuẩn an to&agrave;n v&agrave; quy tr&igrave;nh y tế hỗ trợ di chuyển xuy&ecirc;n bi&ecirc;n giới của c&ocirc;ng d&acirc;n ASEAN kh&ocirc;ng bị gi&aacute;n đoạn, đồng thời tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn an to&agrave;n v&agrave; y tế quốc tế cũng như c&aacute;c cam kết theo c&aacute;c Hiệp định c&oacute; li&ecirc;n quan giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-2-1599635215859.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 2\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Ph&oacute; Chủ tịch Quốc hội Việt Nam Ph&ugrave;ng Quốc Hiển tham gia phi&ecirc;n thảo luận.</p>\r\n\r\n<p>Hai l&agrave;, nghi&ecirc;n cứu kh&aacute;i niệm &ldquo;du lịch cầu h&agrave;ng kh&ocirc;ng&rdquo; giữa &ldquo;c&aacute;c nước xanh l&aacute; c&acirc;y&rdquo; như một s&aacute;ng kiến sơ bộ trong qu&aacute; tr&igrave;nh mở cửa lại bi&ecirc;n giới, h&igrave;nh th&agrave;nh c&aacute;c khu vực di chuyển an to&agrave;n trong ASEAN v&agrave; đề xuất hướng dẫn tham chiếu cho tất cả c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN m&agrave; kh&ocirc;ng l&agrave;m tổn hại đến những cam kết theo c&aacute;c thỏa thuận c&oacute; li&ecirc;n quan giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN.</p>\r\n\r\n<p>Ba l&agrave;, tiếp tục r&agrave; so&aacute;t v&agrave; ho&agrave;n thiện khu&ocirc;n khổ ph&aacute;p l&yacute; nhằm th&uacute;c đẩy thuận lợi h&oacute;a thương mại, bảo đảm lưu th&ocirc;ng h&agrave;ng h&oacute;a v&agrave; c&aacute;c chuỗi cung ứng trong khu vực kh&ocirc;ng bị gi&aacute;n đoạn; x&acirc;y dựng ch&iacute;nh s&aacute;ch đầu tư th&ocirc;ng tho&aacute;ng, bền vững, c&oacute; tr&aacute;ch nhiệm trong khu vực; bảo đảm an ninh lương thực v&agrave; chuỗi gi&aacute; trị n&ocirc;ng nghiệp; tăng cường sử dụng năng lượng t&aacute;i tạo; tiến tới x&acirc;y dựng kinh tế tuần ho&agrave;n.</p>\r\n\r\n<p>Bốn l&agrave;, th&uacute;c đẩy nhanh việc ph&ecirc; chuẩn c&aacute;c hiệp định, thỏa thuận thương mại trong khu vực; ưu ti&ecirc;n tăng cường c&aacute;c nỗ lực để ho&agrave;n tất đ&agrave;m ph&aacute;n v&agrave; k&yacute; kết Hiệp định Đối t&aacute;c Kinh tế To&agrave;n diện Khu vực (RCEP) trong năm 2020; tăng cường năng lực, sự tham gia v&agrave; đẩy mạnh gi&aacute;m s&aacute;t nghị viện đối với việc thực hiện c&aacute;c cam kết về đầu tư v&agrave; thương mại trong khu&ocirc;n khổ khu vực v&agrave; quốc tế, coi đ&acirc;y l&agrave; c&ocirc;ng cụ chủ yếu để th&uacute;c đẩy li&ecirc;n kết kinh tế s&acirc;u rộng hơn trong Cộng đồng ASEAN v&agrave; giữa ASEAN với c&aacute;c đối t&aacute;c kh&aacute;c.</p>\r\n\r\n<p><strong>Khai th&aacute;c t&agrave;i nguy&ecirc;n xuy&ecirc;n bi&ecirc;n giới để đảm bảo an ninh lương thực&nbsp;</strong></p>\r\n\r\n<p>Năm l&agrave;, tăng cường ph&aacute;t triển cơ sở hạ tầng số, kết nối số, an to&agrave;n dữ liệu số, kiến thức v&agrave; kỹ năng số gắn kết giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN để ph&aacute;t triển kinh tế số; chia sẻ th&ocirc;ng tin v&agrave; kinh nghiệm để xử l&yacute; c&aacute;c th&aacute;ch thức m&agrave; c&aacute;c nền tảng thương mại điện tử đang phải đối mặt; tận dụng c&aacute;c cơ hội của C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư nhằm khắc phục bất lợi từ việc đ&oacute;ng cửa nền kinh tế v&agrave; gi&atilde;n c&aacute;ch x&atilde; hội trong dịch bệnh Covid-19 v&agrave; duy tr&igrave; t&iacute;nh cạnh tranh trong kỷ nguy&ecirc;n kinh tế số.</p>\r\n\r\n<p>S&aacute;u l&agrave;, x&acirc;y dựng cơ sở hạ tầng kết nối khu vực, tăng cường kết nối giao th&ocirc;ng v&agrave; sự cần thiết của việc tăng cường hợp t&aacute;c tiểu v&ugrave;ng M&ecirc; C&ocirc;ng v&agrave; c&aacute;c tiểu v&ugrave;ng kh&aacute;c của ASEAN, đặc biệt l&agrave; về bảo vệ m&ocirc;i trường, ph&aacute;t triển n&ocirc;ng nghiệp th&ocirc;ng minh v&agrave; quản l&yacute; bền vững c&aacute;c nguồn t&agrave;i nguy&ecirc;n thi&ecirc;n nhi&ecirc;n xuy&ecirc;n bi&ecirc;n giới nhằm đảm bảo an ninh lương thực, nguồn nước v&agrave; năng lượng tại c&aacute;c tiểu v&ugrave;ng trong v&agrave; sau đại dịch Covid-19.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-5-1599635216200.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 3\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Phi&ecirc;n thảo luận diễn ra đồng thời tại điểm cầu của c&aacute;c nước trong cộng đồng ASEAN.</p>\r\n\r\n<p>Ph&aacute;t biểu tại phi&ecirc;n họp, đại diện đo&agrave;n Malaysia cho rằng, c&aacute;c nước trong ASEAN c&oacute; nhiều điểm chung n&ecirc;n ch&iacute;nh s&aacute;ch của bất cứ quốc gia n&agrave;o cũng c&oacute; thể được c&aacute;c quốc gia kh&aacute;c học tập, để c&oacute; thể tr&aacute;nh gặp sai lầm giống nhau.</p>\r\n\r\n<p>Theo nghị sỹ Malaysia, thời điểm n&agrave;y rất cần một c&aacute;ch tiếp cận chung theo hướng địa phương ho&aacute; c&aacute;c hoạt động kinh tế. Hầu hết hoạt động kinh tế đ&atilde; được t&iacute;ch hợp v&agrave;o chuối cũng ứng to&agrave;n cầu nhưng Covid- 19 đ&atilde; l&agrave;m gi&aacute;n đoạn chuỗi cung ứng n&agrave;y.</p>\r\n\r\n<p>B&agrave;i học l&agrave; cần phải giảm thiểu sự to&agrave;n cầu ho&aacute;. Nhiều doanh nghiệp đang địa phương ho&aacute; chuỗi sản xuất của m&igrave;n, ASEAN c&oacute; thể địa phương ho&aacute;, mở rộng sang khu vực ho&aacute;, xử l&yacute; chuỗi cung ứng khu vực để miễn dịch khủng hoảng trong tương lai, đại diện đo&agrave;n nghị sĩ Malaysia n&ecirc;u quan điểm.</p>\r\n\r\n<p>Chia sẻ kinh nghiệm ứng ph&oacute; với đại dịch Covid-19, đại diện Singapore cho biết nước n&agrave;y mở ra 4 loại ng&acirc;n s&aacute;ch, gồm quỹ ki&ecirc;n cường, quỹ chống chịu, quỹ đo&agrave;n kết v&agrave; quỹ thống&nbsp; nhất, bốn quỹ n&agrave;y được Ch&iacute;nh phủ hỗ trợ. B&ecirc;n cạnh đ&oacute; Singapore c&ograve;n c&oacute; ch&iacute;nh s&aacute;ch hỗ trợ để doanh nghiệp giữ việc l&agrave;m cho người lao động, ch&iacute;nh s&aacute;ch nay được gia hạn đến th&aacute;ng 3/2011.</p>\r\n\r\n<p><strong>Th&aacute;i Anh</strong></p>\r\n', 0, '1615813356_132218026146647564_6.jpg', 7000000, 40, 0),
(6, '4 - MacBook Pro 16 Touch Bar 2.6GHz Core i7/16GB/', '<p>Khắc phục hậu quả của đại dịch Covid-19, một s&aacute;ng kiến được đưa ra giữa c&aacute;c nước ASEAN l&agrave; tổ chức &ldquo;du lịch cầu h&agrave;ng kh&ocirc;ng&rdquo; giữa &ldquo;c&aacute;c nước xanh l&aacute; c&acirc;y&rdquo; để t&aacute;i mở cửa trong khu vực&hellip;</p>\r\n', '<p>S&aacute;ng 9/9, trong khu&ocirc;n khổ chương tr&igrave;nh Đại hội đồng Li&ecirc;n nghị viện ASEAN (AIPA) 41, UB Kinh tế AIPA c&oacute; phi&ecirc;n thảo luận về vai tr&ograve; của Nghị viện trong việc th&uacute;c đẩy gắn kết v&agrave; phục hồi kinh tế ASEAN sau đại dịch Covid-19.</p>\r\n\r\n<p>L&agrave; Trưởng đo&agrave;n Việt Nam tham gia phi&ecirc;n thảo luận, Ph&oacute; Chủ tịch Quốc hội Ph&ugrave;ng Quốc Hiển nhận định, đ&acirc;y l&agrave; chủ đề mang t&iacute;nh thiết thực, c&oacute; t&iacute;nh thời sự cấp b&aacute;ch đối với mọi quốc gia th&agrave;nh vi&ecirc;n AIPA hiện nay. Trong bối cảnh khu vực v&agrave; quốc tế bị ảnh hưởng nặng nề bởi dịch bệnh Covid-19 như hiện nay, Ph&oacute; Chủ tịch Quốc hội b&agrave;y tỏ mong muốn c&aacute;c nước th&agrave;nh vi&ecirc;n sớm vượt qua kh&oacute; khăn, phục hồi nền kinh tế, ổn định đời sống x&atilde; hội v&agrave; &ldquo;kh&ocirc;ng để ai bị bỏ lại ph&iacute;a sau&rdquo;.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-3-1599635216487.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 1\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Phi&ecirc;n họp của UB Kinh tế AIPA 41 diễn ra cuối buổi s&aacute;ng ng&agrave;y 9/9/2020.</p>\r\n\r\n<p><strong>Mở cửa lại bi&ecirc;n giới, di chuyển an to&agrave;n trong ASEAN</strong></p>\r\n\r\n<p>Tham gia thảo luận, đại diện của đo&agrave;n Việt Nam n&ecirc;u r&otilde;, đại dịch Covid-19 kh&ocirc;ng chỉ l&agrave; một cuộc khủng hoảng y tế đơn thuần, m&agrave; c&ograve;n l&agrave; một cuộc khủng hoảng đối với sự ph&aacute;t triển khi c&aacute;c chuỗi cung ứng v&agrave; thương mại quốc tế bị ph&aacute; vỡ.</p>\r\n\r\n<p>Theo đ&aacute;nh gi&aacute; của Ng&acirc;n h&agrave;ng Ph&aacute;t triển ch&acirc;u &Aacute; (ADB), dự b&aacute;o tăng trưởng tổng sản phẩm quốc nội (GDP) của khu vực Đ&ocirc;ng Nam &Aacute; sẽ giảm từ 4,4% năm 2019 xuống c&ograve;n -2,7% trong năm 2020, trước khi phục hồi l&ecirc;n mức 5,2% v&agrave;o năm 2021, đặc biệt do c&aacute;c mối quan hệ thương mại v&agrave; đầu tư mạnh mẽ của khu vực n&agrave;y với Trung Quốc.</p>\r\n\r\n<p>Quan ngại s&acirc;u sắc về những tổn thất to lớn do dịch bệnh Covid-19 g&acirc;y ra ở c&aacute;c quốc gia ASEAN, trong tư c&aacute;ch chủ nh&agrave;, đo&agrave;n Việt Nam mong muốn cộng đồng ASEAN thống nhất thực hiện một chuỗi giải ph&aacute;p mang t&iacute;nh đột ph&aacute;, khả thi.</p>\r\n\r\n<p>Một l&agrave;, thực hiện th&uacute;c đẩy nhanh việc trao đổi th&ocirc;ng tin li&ecirc;n quan đến du lịch v&agrave; sức khỏe v&agrave; c&aacute;c biện ph&aacute;p cần thiết kh&aacute;c để kiểm so&aacute;t sự l&acirc;y lan của đại dịch Covid-19; củng cố sự an t&acirc;m trong di chuyển, &aacute;p dụng c&aacute;c ti&ecirc;u chuẩn an to&agrave;n v&agrave; quy tr&igrave;nh y tế hỗ trợ di chuyển xuy&ecirc;n bi&ecirc;n giới của c&ocirc;ng d&acirc;n ASEAN kh&ocirc;ng bị gi&aacute;n đoạn, đồng thời tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn an to&agrave;n v&agrave; y tế quốc tế cũng như c&aacute;c cam kết theo c&aacute;c Hiệp định c&oacute; li&ecirc;n quan giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-2-1599635215859.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 2\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Ph&oacute; Chủ tịch Quốc hội Việt Nam Ph&ugrave;ng Quốc Hiển tham gia phi&ecirc;n thảo luận.</p>\r\n\r\n<p>Hai l&agrave;, nghi&ecirc;n cứu kh&aacute;i niệm &ldquo;du lịch cầu h&agrave;ng kh&ocirc;ng&rdquo; giữa &ldquo;c&aacute;c nước xanh l&aacute; c&acirc;y&rdquo; như một s&aacute;ng kiến sơ bộ trong qu&aacute; tr&igrave;nh mở cửa lại bi&ecirc;n giới, h&igrave;nh th&agrave;nh c&aacute;c khu vực di chuyển an to&agrave;n trong ASEAN v&agrave; đề xuất hướng dẫn tham chiếu cho tất cả c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN m&agrave; kh&ocirc;ng l&agrave;m tổn hại đến những cam kết theo c&aacute;c thỏa thuận c&oacute; li&ecirc;n quan giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN.</p>\r\n\r\n<p>Ba l&agrave;, tiếp tục r&agrave; so&aacute;t v&agrave; ho&agrave;n thiện khu&ocirc;n khổ ph&aacute;p l&yacute; nhằm th&uacute;c đẩy thuận lợi h&oacute;a thương mại, bảo đảm lưu th&ocirc;ng h&agrave;ng h&oacute;a v&agrave; c&aacute;c chuỗi cung ứng trong khu vực kh&ocirc;ng bị gi&aacute;n đoạn; x&acirc;y dựng ch&iacute;nh s&aacute;ch đầu tư th&ocirc;ng tho&aacute;ng, bền vững, c&oacute; tr&aacute;ch nhiệm trong khu vực; bảo đảm an ninh lương thực v&agrave; chuỗi gi&aacute; trị n&ocirc;ng nghiệp; tăng cường sử dụng năng lượng t&aacute;i tạo; tiến tới x&acirc;y dựng kinh tế tuần ho&agrave;n.</p>\r\n\r\n<p>Bốn l&agrave;, th&uacute;c đẩy nhanh việc ph&ecirc; chuẩn c&aacute;c hiệp định, thỏa thuận thương mại trong khu vực; ưu ti&ecirc;n tăng cường c&aacute;c nỗ lực để ho&agrave;n tất đ&agrave;m ph&aacute;n v&agrave; k&yacute; kết Hiệp định Đối t&aacute;c Kinh tế To&agrave;n diện Khu vực (RCEP) trong năm 2020; tăng cường năng lực, sự tham gia v&agrave; đẩy mạnh gi&aacute;m s&aacute;t nghị viện đối với việc thực hiện c&aacute;c cam kết về đầu tư v&agrave; thương mại trong khu&ocirc;n khổ khu vực v&agrave; quốc tế, coi đ&acirc;y l&agrave; c&ocirc;ng cụ chủ yếu để th&uacute;c đẩy li&ecirc;n kết kinh tế s&acirc;u rộng hơn trong Cộng đồng ASEAN v&agrave; giữa ASEAN với c&aacute;c đối t&aacute;c kh&aacute;c.</p>\r\n\r\n<p><strong>Khai th&aacute;c t&agrave;i nguy&ecirc;n xuy&ecirc;n bi&ecirc;n giới để đảm bảo an ninh lương thực&nbsp;</strong></p>\r\n\r\n<p>Năm l&agrave;, tăng cường ph&aacute;t triển cơ sở hạ tầng số, kết nối số, an to&agrave;n dữ liệu số, kiến thức v&agrave; kỹ năng số gắn kết giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN để ph&aacute;t triển kinh tế số; chia sẻ th&ocirc;ng tin v&agrave; kinh nghiệm để xử l&yacute; c&aacute;c th&aacute;ch thức m&agrave; c&aacute;c nền tảng thương mại điện tử đang phải đối mặt; tận dụng c&aacute;c cơ hội của C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư nhằm khắc phục bất lợi từ việc đ&oacute;ng cửa nền kinh tế v&agrave; gi&atilde;n c&aacute;ch x&atilde; hội trong dịch bệnh Covid-19 v&agrave; duy tr&igrave; t&iacute;nh cạnh tranh trong kỷ nguy&ecirc;n kinh tế số.</p>\r\n\r\n<p>S&aacute;u l&agrave;, x&acirc;y dựng cơ sở hạ tầng kết nối khu vực, tăng cường kết nối giao th&ocirc;ng v&agrave; sự cần thiết của việc tăng cường hợp t&aacute;c tiểu v&ugrave;ng M&ecirc; C&ocirc;ng v&agrave; c&aacute;c tiểu v&ugrave;ng kh&aacute;c của ASEAN, đặc biệt l&agrave; về bảo vệ m&ocirc;i trường, ph&aacute;t triển n&ocirc;ng nghiệp th&ocirc;ng minh v&agrave; quản l&yacute; bền vững c&aacute;c nguồn t&agrave;i nguy&ecirc;n thi&ecirc;n nhi&ecirc;n xuy&ecirc;n bi&ecirc;n giới nhằm đảm bảo an ninh lương thực, nguồn nước v&agrave; năng lượng tại c&aacute;c tiểu v&ugrave;ng trong v&agrave; sau đại dịch Covid-19.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-5-1599635216200.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 3\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Phi&ecirc;n thảo luận diễn ra đồng thời tại điểm cầu của c&aacute;c nước trong cộng đồng ASEAN.</p>\r\n\r\n<p>Ph&aacute;t biểu tại phi&ecirc;n họp, đại diện đo&agrave;n Malaysia cho rằng, c&aacute;c nước trong ASEAN c&oacute; nhiều điểm chung n&ecirc;n ch&iacute;nh s&aacute;ch của bất cứ quốc gia n&agrave;o cũng c&oacute; thể được c&aacute;c quốc gia kh&aacute;c học tập, để c&oacute; thể tr&aacute;nh gặp sai lầm giống nhau.</p>\r\n\r\n<p>Theo nghị sỹ Malaysia, thời điểm n&agrave;y rất cần một c&aacute;ch tiếp cận chung theo hướng địa phương ho&aacute; c&aacute;c hoạt động kinh tế. Hầu hết hoạt động kinh tế đ&atilde; được t&iacute;ch hợp v&agrave;o chuối cũng ứng to&agrave;n cầu nhưng Covid- 19 đ&atilde; l&agrave;m gi&aacute;n đoạn chuỗi cung ứng n&agrave;y.</p>\r\n\r\n<p>B&agrave;i học l&agrave; cần phải giảm thiểu sự to&agrave;n cầu ho&aacute;. Nhiều doanh nghiệp đang địa phương ho&aacute; chuỗi sản xuất của m&igrave;n, ASEAN c&oacute; thể địa phương ho&aacute;, mở rộng sang khu vực ho&aacute;, xử l&yacute; chuỗi cung ứng khu vực để miễn dịch khủng hoảng trong tương lai, đại diện đo&agrave;n nghị sĩ Malaysia n&ecirc;u quan điểm.</p>\r\n\r\n<p>Chia sẻ kinh nghiệm ứng ph&oacute; với đại dịch Covid-19, đại diện Singapore cho biết nước n&agrave;y mở ra 4 loại ng&acirc;n s&aacute;ch, gồm quỹ ki&ecirc;n cường, quỹ chống chịu, quỹ đo&agrave;n kết v&agrave; quỹ thống&nbsp; nhất, bốn quỹ n&agrave;y được Ch&iacute;nh phủ hỗ trợ. B&ecirc;n cạnh đ&oacute; Singapore c&ograve;n c&oacute; ch&iacute;nh s&aacute;ch hỗ trợ để doanh nghiệp giữ việc l&agrave;m cho người lao động, ch&iacute;nh s&aacute;ch nay được gia hạn đến th&aacute;ng 3/2011.</p>\r\n\r\n<p><strong>Th&aacute;i Anh</strong></p>\r\n', 1, '1615813347_132218025766776697_7.jpg', 8000000, 50, 4),
(7, '5 - MacBook Pro 16 Touch Bar 2.6GHz Core i7/16GB/', '<p>Khắc phục hậu quả của đại dịch Covid-19, một s&aacute;ng kiến được đưa ra giữa c&aacute;c nước ASEAN l&agrave; tổ chức &ldquo;du lịch cầu h&agrave;ng kh&ocirc;ng&rdquo; giữa &ldquo;c&aacute;c nước xanh l&aacute; c&acirc;y&rdquo; để t&aacute;i mở cửa trong khu vực&hellip;</p>\r\n', '<p>S&aacute;ng 9/9, trong khu&ocirc;n khổ chương tr&igrave;nh Đại hội đồng Li&ecirc;n nghị viện ASEAN (AIPA) 41, UB Kinh tế AIPA c&oacute; phi&ecirc;n thảo luận về vai tr&ograve; của Nghị viện trong việc th&uacute;c đẩy gắn kết v&agrave; phục hồi kinh tế ASEAN sau đại dịch Covid-19.</p>\r\n\r\n<p>L&agrave; Trưởng đo&agrave;n Việt Nam tham gia phi&ecirc;n thảo luận, Ph&oacute; Chủ tịch Quốc hội Ph&ugrave;ng Quốc Hiển nhận định, đ&acirc;y l&agrave; chủ đề mang t&iacute;nh thiết thực, c&oacute; t&iacute;nh thời sự cấp b&aacute;ch đối với mọi quốc gia th&agrave;nh vi&ecirc;n AIPA hiện nay. Trong bối cảnh khu vực v&agrave; quốc tế bị ảnh hưởng nặng nề bởi dịch bệnh Covid-19 như hiện nay, Ph&oacute; Chủ tịch Quốc hội b&agrave;y tỏ mong muốn c&aacute;c nước th&agrave;nh vi&ecirc;n sớm vượt qua kh&oacute; khăn, phục hồi nền kinh tế, ổn định đời sống x&atilde; hội v&agrave; &ldquo;kh&ocirc;ng để ai bị bỏ lại ph&iacute;a sau&rdquo;.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-3-1599635216487.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 1\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Phi&ecirc;n họp của UB Kinh tế AIPA 41 diễn ra cuối buổi s&aacute;ng ng&agrave;y 9/9/2020.</p>\r\n\r\n<p><strong>Mở cửa lại bi&ecirc;n giới, di chuyển an to&agrave;n trong ASEAN</strong></p>\r\n\r\n<p>Tham gia thảo luận, đại diện của đo&agrave;n Việt Nam n&ecirc;u r&otilde;, đại dịch Covid-19 kh&ocirc;ng chỉ l&agrave; một cuộc khủng hoảng y tế đơn thuần, m&agrave; c&ograve;n l&agrave; một cuộc khủng hoảng đối với sự ph&aacute;t triển khi c&aacute;c chuỗi cung ứng v&agrave; thương mại quốc tế bị ph&aacute; vỡ.</p>\r\n\r\n<p>Theo đ&aacute;nh gi&aacute; của Ng&acirc;n h&agrave;ng Ph&aacute;t triển ch&acirc;u &Aacute; (ADB), dự b&aacute;o tăng trưởng tổng sản phẩm quốc nội (GDP) của khu vực Đ&ocirc;ng Nam &Aacute; sẽ giảm từ 4,4% năm 2019 xuống c&ograve;n -2,7% trong năm 2020, trước khi phục hồi l&ecirc;n mức 5,2% v&agrave;o năm 2021, đặc biệt do c&aacute;c mối quan hệ thương mại v&agrave; đầu tư mạnh mẽ của khu vực n&agrave;y với Trung Quốc.</p>\r\n\r\n<p>Quan ngại s&acirc;u sắc về những tổn thất to lớn do dịch bệnh Covid-19 g&acirc;y ra ở c&aacute;c quốc gia ASEAN, trong tư c&aacute;ch chủ nh&agrave;, đo&agrave;n Việt Nam mong muốn cộng đồng ASEAN thống nhất thực hiện một chuỗi giải ph&aacute;p mang t&iacute;nh đột ph&aacute;, khả thi.</p>\r\n\r\n<p>Một l&agrave;, thực hiện th&uacute;c đẩy nhanh việc trao đổi th&ocirc;ng tin li&ecirc;n quan đến du lịch v&agrave; sức khỏe v&agrave; c&aacute;c biện ph&aacute;p cần thiết kh&aacute;c để kiểm so&aacute;t sự l&acirc;y lan của đại dịch Covid-19; củng cố sự an t&acirc;m trong di chuyển, &aacute;p dụng c&aacute;c ti&ecirc;u chuẩn an to&agrave;n v&agrave; quy tr&igrave;nh y tế hỗ trợ di chuyển xuy&ecirc;n bi&ecirc;n giới của c&ocirc;ng d&acirc;n ASEAN kh&ocirc;ng bị gi&aacute;n đoạn, đồng thời tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn an to&agrave;n v&agrave; y tế quốc tế cũng như c&aacute;c cam kết theo c&aacute;c Hiệp định c&oacute; li&ecirc;n quan giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-2-1599635215859.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 2\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Ph&oacute; Chủ tịch Quốc hội Việt Nam Ph&ugrave;ng Quốc Hiển tham gia phi&ecirc;n thảo luận.</p>\r\n\r\n<p>Hai l&agrave;, nghi&ecirc;n cứu kh&aacute;i niệm &ldquo;du lịch cầu h&agrave;ng kh&ocirc;ng&rdquo; giữa &ldquo;c&aacute;c nước xanh l&aacute; c&acirc;y&rdquo; như một s&aacute;ng kiến sơ bộ trong qu&aacute; tr&igrave;nh mở cửa lại bi&ecirc;n giới, h&igrave;nh th&agrave;nh c&aacute;c khu vực di chuyển an to&agrave;n trong ASEAN v&agrave; đề xuất hướng dẫn tham chiếu cho tất cả c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN m&agrave; kh&ocirc;ng l&agrave;m tổn hại đến những cam kết theo c&aacute;c thỏa thuận c&oacute; li&ecirc;n quan giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN.</p>\r\n\r\n<p>Ba l&agrave;, tiếp tục r&agrave; so&aacute;t v&agrave; ho&agrave;n thiện khu&ocirc;n khổ ph&aacute;p l&yacute; nhằm th&uacute;c đẩy thuận lợi h&oacute;a thương mại, bảo đảm lưu th&ocirc;ng h&agrave;ng h&oacute;a v&agrave; c&aacute;c chuỗi cung ứng trong khu vực kh&ocirc;ng bị gi&aacute;n đoạn; x&acirc;y dựng ch&iacute;nh s&aacute;ch đầu tư th&ocirc;ng tho&aacute;ng, bền vững, c&oacute; tr&aacute;ch nhiệm trong khu vực; bảo đảm an ninh lương thực v&agrave; chuỗi gi&aacute; trị n&ocirc;ng nghiệp; tăng cường sử dụng năng lượng t&aacute;i tạo; tiến tới x&acirc;y dựng kinh tế tuần ho&agrave;n.</p>\r\n\r\n<p>Bốn l&agrave;, th&uacute;c đẩy nhanh việc ph&ecirc; chuẩn c&aacute;c hiệp định, thỏa thuận thương mại trong khu vực; ưu ti&ecirc;n tăng cường c&aacute;c nỗ lực để ho&agrave;n tất đ&agrave;m ph&aacute;n v&agrave; k&yacute; kết Hiệp định Đối t&aacute;c Kinh tế To&agrave;n diện Khu vực (RCEP) trong năm 2020; tăng cường năng lực, sự tham gia v&agrave; đẩy mạnh gi&aacute;m s&aacute;t nghị viện đối với việc thực hiện c&aacute;c cam kết về đầu tư v&agrave; thương mại trong khu&ocirc;n khổ khu vực v&agrave; quốc tế, coi đ&acirc;y l&agrave; c&ocirc;ng cụ chủ yếu để th&uacute;c đẩy li&ecirc;n kết kinh tế s&acirc;u rộng hơn trong Cộng đồng ASEAN v&agrave; giữa ASEAN với c&aacute;c đối t&aacute;c kh&aacute;c.</p>\r\n\r\n<p><strong>Khai th&aacute;c t&agrave;i nguy&ecirc;n xuy&ecirc;n bi&ecirc;n giới để đảm bảo an ninh lương thực&nbsp;</strong></p>\r\n\r\n<p>Năm l&agrave;, tăng cường ph&aacute;t triển cơ sở hạ tầng số, kết nối số, an to&agrave;n dữ liệu số, kiến thức v&agrave; kỹ năng số gắn kết giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN để ph&aacute;t triển kinh tế số; chia sẻ th&ocirc;ng tin v&agrave; kinh nghiệm để xử l&yacute; c&aacute;c th&aacute;ch thức m&agrave; c&aacute;c nền tảng thương mại điện tử đang phải đối mặt; tận dụng c&aacute;c cơ hội của C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư nhằm khắc phục bất lợi từ việc đ&oacute;ng cửa nền kinh tế v&agrave; gi&atilde;n c&aacute;ch x&atilde; hội trong dịch bệnh Covid-19 v&agrave; duy tr&igrave; t&iacute;nh cạnh tranh trong kỷ nguy&ecirc;n kinh tế số.</p>\r\n\r\n<p>S&aacute;u l&agrave;, x&acirc;y dựng cơ sở hạ tầng kết nối khu vực, tăng cường kết nối giao th&ocirc;ng v&agrave; sự cần thiết của việc tăng cường hợp t&aacute;c tiểu v&ugrave;ng M&ecirc; C&ocirc;ng v&agrave; c&aacute;c tiểu v&ugrave;ng kh&aacute;c của ASEAN, đặc biệt l&agrave; về bảo vệ m&ocirc;i trường, ph&aacute;t triển n&ocirc;ng nghiệp th&ocirc;ng minh v&agrave; quản l&yacute; bền vững c&aacute;c nguồn t&agrave;i nguy&ecirc;n thi&ecirc;n nhi&ecirc;n xuy&ecirc;n bi&ecirc;n giới nhằm đảm bảo an ninh lương thực, nguồn nước v&agrave; năng lượng tại c&aacute;c tiểu v&ugrave;ng trong v&agrave; sau đại dịch Covid-19.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-5-1599635216200.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 3\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Phi&ecirc;n thảo luận diễn ra đồng thời tại điểm cầu của c&aacute;c nước trong cộng đồng ASEAN.</p>\r\n\r\n<p>Ph&aacute;t biểu tại phi&ecirc;n họp, đại diện đo&agrave;n Malaysia cho rằng, c&aacute;c nước trong ASEAN c&oacute; nhiều điểm chung n&ecirc;n ch&iacute;nh s&aacute;ch của bất cứ quốc gia n&agrave;o cũng c&oacute; thể được c&aacute;c quốc gia kh&aacute;c học tập, để c&oacute; thể tr&aacute;nh gặp sai lầm giống nhau.</p>\r\n\r\n<p>Theo nghị sỹ Malaysia, thời điểm n&agrave;y rất cần một c&aacute;ch tiếp cận chung theo hướng địa phương ho&aacute; c&aacute;c hoạt động kinh tế. Hầu hết hoạt động kinh tế đ&atilde; được t&iacute;ch hợp v&agrave;o chuối cũng ứng to&agrave;n cầu nhưng Covid- 19 đ&atilde; l&agrave;m gi&aacute;n đoạn chuỗi cung ứng n&agrave;y.</p>\r\n\r\n<p>B&agrave;i học l&agrave; cần phải giảm thiểu sự to&agrave;n cầu ho&aacute;. Nhiều doanh nghiệp đang địa phương ho&aacute; chuỗi sản xuất của m&igrave;n, ASEAN c&oacute; thể địa phương ho&aacute;, mở rộng sang khu vực ho&aacute;, xử l&yacute; chuỗi cung ứng khu vực để miễn dịch khủng hoảng trong tương lai, đại diện đo&agrave;n nghị sĩ Malaysia n&ecirc;u quan điểm.</p>\r\n\r\n<p>Chia sẻ kinh nghiệm ứng ph&oacute; với đại dịch Covid-19, đại diện Singapore cho biết nước n&agrave;y mở ra 4 loại ng&acirc;n s&aacute;ch, gồm quỹ ki&ecirc;n cường, quỹ chống chịu, quỹ đo&agrave;n kết v&agrave; quỹ thống&nbsp; nhất, bốn quỹ n&agrave;y được Ch&iacute;nh phủ hỗ trợ. B&ecirc;n cạnh đ&oacute; Singapore c&ograve;n c&oacute; ch&iacute;nh s&aacute;ch hỗ trợ để doanh nghiệp giữ việc l&agrave;m cho người lao động, ch&iacute;nh s&aacute;ch nay được gia hạn đến th&aacute;ng 3/2011.</p>\r\n\r\n<p><strong>Th&aacute;i Anh</strong></p>\r\n', 1, '1615813331_132218025766776697_7.jpg', 9000000, 20, 0),
(8, '6 - MacBook Pro 16 Touch Bar 2.6GHz Core i7/16GB/', '<p>Khắc phục hậu quả của đại dịch Covid-19, một s&aacute;ng kiến được đưa ra giữa c&aacute;c nước ASEAN l&agrave; tổ chức &ldquo;du lịch cầu h&agrave;ng kh&ocirc;ng&rdquo; giữa &ldquo;c&aacute;c nước xanh l&aacute; c&acirc;y&rdquo; để t&aacute;i mở cửa trong khu vực&hellip;</p>\r\n', '<p>S&aacute;ng 9/9, trong khu&ocirc;n khổ chương tr&igrave;nh Đại hội đồng Li&ecirc;n nghị viện ASEAN (AIPA) 41, UB Kinh tế AIPA c&oacute; phi&ecirc;n thảo luận về vai tr&ograve; của Nghị viện trong việc th&uacute;c đẩy gắn kết v&agrave; phục hồi kinh tế ASEAN sau đại dịch Covid-19.</p>\r\n\r\n<p>L&agrave; Trưởng đo&agrave;n Việt Nam tham gia phi&ecirc;n thảo luận, Ph&oacute; Chủ tịch Quốc hội Ph&ugrave;ng Quốc Hiển nhận định, đ&acirc;y l&agrave; chủ đề mang t&iacute;nh thiết thực, c&oacute; t&iacute;nh thời sự cấp b&aacute;ch đối với mọi quốc gia th&agrave;nh vi&ecirc;n AIPA hiện nay. Trong bối cảnh khu vực v&agrave; quốc tế bị ảnh hưởng nặng nề bởi dịch bệnh Covid-19 như hiện nay, Ph&oacute; Chủ tịch Quốc hội b&agrave;y tỏ mong muốn c&aacute;c nước th&agrave;nh vi&ecirc;n sớm vượt qua kh&oacute; khăn, phục hồi nền kinh tế, ổn định đời sống x&atilde; hội v&agrave; &ldquo;kh&ocirc;ng để ai bị bỏ lại ph&iacute;a sau&rdquo;.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-3-1599635216487.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 1\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Phi&ecirc;n họp của UB Kinh tế AIPA 41 diễn ra cuối buổi s&aacute;ng ng&agrave;y 9/9/2020.</p>\r\n\r\n<p><strong>Mở cửa lại bi&ecirc;n giới, di chuyển an to&agrave;n trong ASEAN</strong></p>\r\n\r\n<p>Tham gia thảo luận, đại diện của đo&agrave;n Việt Nam n&ecirc;u r&otilde;, đại dịch Covid-19 kh&ocirc;ng chỉ l&agrave; một cuộc khủng hoảng y tế đơn thuần, m&agrave; c&ograve;n l&agrave; một cuộc khủng hoảng đối với sự ph&aacute;t triển khi c&aacute;c chuỗi cung ứng v&agrave; thương mại quốc tế bị ph&aacute; vỡ.</p>\r\n\r\n<p>Theo đ&aacute;nh gi&aacute; của Ng&acirc;n h&agrave;ng Ph&aacute;t triển ch&acirc;u &Aacute; (ADB), dự b&aacute;o tăng trưởng tổng sản phẩm quốc nội (GDP) của khu vực Đ&ocirc;ng Nam &Aacute; sẽ giảm từ 4,4% năm 2019 xuống c&ograve;n -2,7% trong năm 2020, trước khi phục hồi l&ecirc;n mức 5,2% v&agrave;o năm 2021, đặc biệt do c&aacute;c mối quan hệ thương mại v&agrave; đầu tư mạnh mẽ của khu vực n&agrave;y với Trung Quốc.</p>\r\n\r\n<p>Quan ngại s&acirc;u sắc về những tổn thất to lớn do dịch bệnh Covid-19 g&acirc;y ra ở c&aacute;c quốc gia ASEAN, trong tư c&aacute;ch chủ nh&agrave;, đo&agrave;n Việt Nam mong muốn cộng đồng ASEAN thống nhất thực hiện một chuỗi giải ph&aacute;p mang t&iacute;nh đột ph&aacute;, khả thi.</p>\r\n\r\n<p>Một l&agrave;, thực hiện th&uacute;c đẩy nhanh việc trao đổi th&ocirc;ng tin li&ecirc;n quan đến du lịch v&agrave; sức khỏe v&agrave; c&aacute;c biện ph&aacute;p cần thiết kh&aacute;c để kiểm so&aacute;t sự l&acirc;y lan của đại dịch Covid-19; củng cố sự an t&acirc;m trong di chuyển, &aacute;p dụng c&aacute;c ti&ecirc;u chuẩn an to&agrave;n v&agrave; quy tr&igrave;nh y tế hỗ trợ di chuyển xuy&ecirc;n bi&ecirc;n giới của c&ocirc;ng d&acirc;n ASEAN kh&ocirc;ng bị gi&aacute;n đoạn, đồng thời tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn an to&agrave;n v&agrave; y tế quốc tế cũng như c&aacute;c cam kết theo c&aacute;c Hiệp định c&oacute; li&ecirc;n quan giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-2-1599635215859.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 2\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Ph&oacute; Chủ tịch Quốc hội Việt Nam Ph&ugrave;ng Quốc Hiển tham gia phi&ecirc;n thảo luận.</p>\r\n\r\n<p>Hai l&agrave;, nghi&ecirc;n cứu kh&aacute;i niệm &ldquo;du lịch cầu h&agrave;ng kh&ocirc;ng&rdquo; giữa &ldquo;c&aacute;c nước xanh l&aacute; c&acirc;y&rdquo; như một s&aacute;ng kiến sơ bộ trong qu&aacute; tr&igrave;nh mở cửa lại bi&ecirc;n giới, h&igrave;nh th&agrave;nh c&aacute;c khu vực di chuyển an to&agrave;n trong ASEAN v&agrave; đề xuất hướng dẫn tham chiếu cho tất cả c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN m&agrave; kh&ocirc;ng l&agrave;m tổn hại đến những cam kết theo c&aacute;c thỏa thuận c&oacute; li&ecirc;n quan giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN.</p>\r\n\r\n<p>Ba l&agrave;, tiếp tục r&agrave; so&aacute;t v&agrave; ho&agrave;n thiện khu&ocirc;n khổ ph&aacute;p l&yacute; nhằm th&uacute;c đẩy thuận lợi h&oacute;a thương mại, bảo đảm lưu th&ocirc;ng h&agrave;ng h&oacute;a v&agrave; c&aacute;c chuỗi cung ứng trong khu vực kh&ocirc;ng bị gi&aacute;n đoạn; x&acirc;y dựng ch&iacute;nh s&aacute;ch đầu tư th&ocirc;ng tho&aacute;ng, bền vững, c&oacute; tr&aacute;ch nhiệm trong khu vực; bảo đảm an ninh lương thực v&agrave; chuỗi gi&aacute; trị n&ocirc;ng nghiệp; tăng cường sử dụng năng lượng t&aacute;i tạo; tiến tới x&acirc;y dựng kinh tế tuần ho&agrave;n.</p>\r\n\r\n<p>Bốn l&agrave;, th&uacute;c đẩy nhanh việc ph&ecirc; chuẩn c&aacute;c hiệp định, thỏa thuận thương mại trong khu vực; ưu ti&ecirc;n tăng cường c&aacute;c nỗ lực để ho&agrave;n tất đ&agrave;m ph&aacute;n v&agrave; k&yacute; kết Hiệp định Đối t&aacute;c Kinh tế To&agrave;n diện Khu vực (RCEP) trong năm 2020; tăng cường năng lực, sự tham gia v&agrave; đẩy mạnh gi&aacute;m s&aacute;t nghị viện đối với việc thực hiện c&aacute;c cam kết về đầu tư v&agrave; thương mại trong khu&ocirc;n khổ khu vực v&agrave; quốc tế, coi đ&acirc;y l&agrave; c&ocirc;ng cụ chủ yếu để th&uacute;c đẩy li&ecirc;n kết kinh tế s&acirc;u rộng hơn trong Cộng đồng ASEAN v&agrave; giữa ASEAN với c&aacute;c đối t&aacute;c kh&aacute;c.</p>\r\n\r\n<p><strong>Khai th&aacute;c t&agrave;i nguy&ecirc;n xuy&ecirc;n bi&ecirc;n giới để đảm bảo an ninh lương thực&nbsp;</strong></p>\r\n\r\n<p>Năm l&agrave;, tăng cường ph&aacute;t triển cơ sở hạ tầng số, kết nối số, an to&agrave;n dữ liệu số, kiến thức v&agrave; kỹ năng số gắn kết giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN để ph&aacute;t triển kinh tế số; chia sẻ th&ocirc;ng tin v&agrave; kinh nghiệm để xử l&yacute; c&aacute;c th&aacute;ch thức m&agrave; c&aacute;c nền tảng thương mại điện tử đang phải đối mặt; tận dụng c&aacute;c cơ hội của C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư nhằm khắc phục bất lợi từ việc đ&oacute;ng cửa nền kinh tế v&agrave; gi&atilde;n c&aacute;ch x&atilde; hội trong dịch bệnh Covid-19 v&agrave; duy tr&igrave; t&iacute;nh cạnh tranh trong kỷ nguy&ecirc;n kinh tế số.</p>\r\n\r\n<p>S&aacute;u l&agrave;, x&acirc;y dựng cơ sở hạ tầng kết nối khu vực, tăng cường kết nối giao th&ocirc;ng v&agrave; sự cần thiết của việc tăng cường hợp t&aacute;c tiểu v&ugrave;ng M&ecirc; C&ocirc;ng v&agrave; c&aacute;c tiểu v&ugrave;ng kh&aacute;c của ASEAN, đặc biệt l&agrave; về bảo vệ m&ocirc;i trường, ph&aacute;t triển n&ocirc;ng nghiệp th&ocirc;ng minh v&agrave; quản l&yacute; bền vững c&aacute;c nguồn t&agrave;i nguy&ecirc;n thi&ecirc;n nhi&ecirc;n xuy&ecirc;n bi&ecirc;n giới nhằm đảm bảo an ninh lương thực, nguồn nước v&agrave; năng lượng tại c&aacute;c tiểu v&ugrave;ng trong v&agrave; sau đại dịch Covid-19.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-5-1599635216200.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 3\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Phi&ecirc;n thảo luận diễn ra đồng thời tại điểm cầu của c&aacute;c nước trong cộng đồng ASEAN.</p>\r\n\r\n<p>Ph&aacute;t biểu tại phi&ecirc;n họp, đại diện đo&agrave;n Malaysia cho rằng, c&aacute;c nước trong ASEAN c&oacute; nhiều điểm chung n&ecirc;n ch&iacute;nh s&aacute;ch của bất cứ quốc gia n&agrave;o cũng c&oacute; thể được c&aacute;c quốc gia kh&aacute;c học tập, để c&oacute; thể tr&aacute;nh gặp sai lầm giống nhau.</p>\r\n\r\n<p>Theo nghị sỹ Malaysia, thời điểm n&agrave;y rất cần một c&aacute;ch tiếp cận chung theo hướng địa phương ho&aacute; c&aacute;c hoạt động kinh tế. Hầu hết hoạt động kinh tế đ&atilde; được t&iacute;ch hợp v&agrave;o chuối cũng ứng to&agrave;n cầu nhưng Covid- 19 đ&atilde; l&agrave;m gi&aacute;n đoạn chuỗi cung ứng n&agrave;y.</p>\r\n\r\n<p>B&agrave;i học l&agrave; cần phải giảm thiểu sự to&agrave;n cầu ho&aacute;. Nhiều doanh nghiệp đang địa phương ho&aacute; chuỗi sản xuất của m&igrave;n, ASEAN c&oacute; thể địa phương ho&aacute;, mở rộng sang khu vực ho&aacute;, xử l&yacute; chuỗi cung ứng khu vực để miễn dịch khủng hoảng trong tương lai, đại diện đo&agrave;n nghị sĩ Malaysia n&ecirc;u quan điểm.</p>\r\n\r\n<p>Chia sẻ kinh nghiệm ứng ph&oacute; với đại dịch Covid-19, đại diện Singapore cho biết nước n&agrave;y mở ra 4 loại ng&acirc;n s&aacute;ch, gồm quỹ ki&ecirc;n cường, quỹ chống chịu, quỹ đo&agrave;n kết v&agrave; quỹ thống&nbsp; nhất, bốn quỹ n&agrave;y được Ch&iacute;nh phủ hỗ trợ. B&ecirc;n cạnh đ&oacute; Singapore c&ograve;n c&oacute; ch&iacute;nh s&aacute;ch hỗ trợ để doanh nghiệp giữ việc l&agrave;m cho người lao động, ch&iacute;nh s&aacute;ch nay được gia hạn đến th&aacute;ng 3/2011.</p>\r\n\r\n<p><strong>Th&aacute;i Anh</strong></p>\r\n', 0, '1615813320_132218025263764024_5.jpg', 10000000, 20, 4);
INSERT INTO `products` (`id`, `name`, `description`, `content`, `hot`, `photo`, `price`, `discount`, `category_id`) VALUES
(11, '9 - MacBook Pro 16 Touch Bar 2.6GHz Core i7/16GB/', '<p>Khắc phục hậu quả của đại dịch Covid-19, một s&aacute;ng kiến được đưa ra giữa c&aacute;c nước ASEAN l&agrave; tổ chức &ldquo;du lịch cầu h&agrave;ng kh&ocirc;ng&rdquo; giữa &ldquo;c&aacute;c nước xanh l&aacute; c&acirc;y&rdquo; để t&aacute;i mở cửa trong khu vực&hellip;</p>\r\n', '<p>S&aacute;ng 9/9, trong khu&ocirc;n khổ chương tr&igrave;nh Đại hội đồng Li&ecirc;n nghị viện ASEAN (AIPA) 41, UB Kinh tế AIPA c&oacute; phi&ecirc;n thảo luận về vai tr&ograve; của Nghị viện trong việc th&uacute;c đẩy gắn kết v&agrave; phục hồi kinh tế ASEAN sau đại dịch Covid-19.</p>\r\n\r\n<p>L&agrave; Trưởng đo&agrave;n Việt Nam tham gia phi&ecirc;n thảo luận, Ph&oacute; Chủ tịch Quốc hội Ph&ugrave;ng Quốc Hiển nhận định, đ&acirc;y l&agrave; chủ đề mang t&iacute;nh thiết thực, c&oacute; t&iacute;nh thời sự cấp b&aacute;ch đối với mọi quốc gia th&agrave;nh vi&ecirc;n AIPA hiện nay. Trong bối cảnh khu vực v&agrave; quốc tế bị ảnh hưởng nặng nề bởi dịch bệnh Covid-19 như hiện nay, Ph&oacute; Chủ tịch Quốc hội b&agrave;y tỏ mong muốn c&aacute;c nước th&agrave;nh vi&ecirc;n sớm vượt qua kh&oacute; khăn, phục hồi nền kinh tế, ổn định đời sống x&atilde; hội v&agrave; &ldquo;kh&ocirc;ng để ai bị bỏ lại ph&iacute;a sau&rdquo;.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-3-1599635216487.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 1\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Phi&ecirc;n họp của UB Kinh tế AIPA 41 diễn ra cuối buổi s&aacute;ng ng&agrave;y 9/9/2020.</p>\r\n\r\n<p><strong>Mở cửa lại bi&ecirc;n giới, di chuyển an to&agrave;n trong ASEAN</strong></p>\r\n\r\n<p>Tham gia thảo luận, đại diện của đo&agrave;n Việt Nam n&ecirc;u r&otilde;, đại dịch Covid-19 kh&ocirc;ng chỉ l&agrave; một cuộc khủng hoảng y tế đơn thuần, m&agrave; c&ograve;n l&agrave; một cuộc khủng hoảng đối với sự ph&aacute;t triển khi c&aacute;c chuỗi cung ứng v&agrave; thương mại quốc tế bị ph&aacute; vỡ.</p>\r\n\r\n<p>Theo đ&aacute;nh gi&aacute; của Ng&acirc;n h&agrave;ng Ph&aacute;t triển ch&acirc;u &Aacute; (ADB), dự b&aacute;o tăng trưởng tổng sản phẩm quốc nội (GDP) của khu vực Đ&ocirc;ng Nam &Aacute; sẽ giảm từ 4,4% năm 2019 xuống c&ograve;n -2,7% trong năm 2020, trước khi phục hồi l&ecirc;n mức 5,2% v&agrave;o năm 2021, đặc biệt do c&aacute;c mối quan hệ thương mại v&agrave; đầu tư mạnh mẽ của khu vực n&agrave;y với Trung Quốc.</p>\r\n\r\n<p>Quan ngại s&acirc;u sắc về những tổn thất to lớn do dịch bệnh Covid-19 g&acirc;y ra ở c&aacute;c quốc gia ASEAN, trong tư c&aacute;ch chủ nh&agrave;, đo&agrave;n Việt Nam mong muốn cộng đồng ASEAN thống nhất thực hiện một chuỗi giải ph&aacute;p mang t&iacute;nh đột ph&aacute;, khả thi.</p>\r\n\r\n<p>Một l&agrave;, thực hiện th&uacute;c đẩy nhanh việc trao đổi th&ocirc;ng tin li&ecirc;n quan đến du lịch v&agrave; sức khỏe v&agrave; c&aacute;c biện ph&aacute;p cần thiết kh&aacute;c để kiểm so&aacute;t sự l&acirc;y lan của đại dịch Covid-19; củng cố sự an t&acirc;m trong di chuyển, &aacute;p dụng c&aacute;c ti&ecirc;u chuẩn an to&agrave;n v&agrave; quy tr&igrave;nh y tế hỗ trợ di chuyển xuy&ecirc;n bi&ecirc;n giới của c&ocirc;ng d&acirc;n ASEAN kh&ocirc;ng bị gi&aacute;n đoạn, đồng thời tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn an to&agrave;n v&agrave; y tế quốc tế cũng như c&aacute;c cam kết theo c&aacute;c Hiệp định c&oacute; li&ecirc;n quan giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-2-1599635215859.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 2\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Ph&oacute; Chủ tịch Quốc hội Việt Nam Ph&ugrave;ng Quốc Hiển tham gia phi&ecirc;n thảo luận.</p>\r\n\r\n<p>Hai l&agrave;, nghi&ecirc;n cứu kh&aacute;i niệm &ldquo;du lịch cầu h&agrave;ng kh&ocirc;ng&rdquo; giữa &ldquo;c&aacute;c nước xanh l&aacute; c&acirc;y&rdquo; như một s&aacute;ng kiến sơ bộ trong qu&aacute; tr&igrave;nh mở cửa lại bi&ecirc;n giới, h&igrave;nh th&agrave;nh c&aacute;c khu vực di chuyển an to&agrave;n trong ASEAN v&agrave; đề xuất hướng dẫn tham chiếu cho tất cả c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN m&agrave; kh&ocirc;ng l&agrave;m tổn hại đến những cam kết theo c&aacute;c thỏa thuận c&oacute; li&ecirc;n quan giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN.</p>\r\n\r\n<p>Ba l&agrave;, tiếp tục r&agrave; so&aacute;t v&agrave; ho&agrave;n thiện khu&ocirc;n khổ ph&aacute;p l&yacute; nhằm th&uacute;c đẩy thuận lợi h&oacute;a thương mại, bảo đảm lưu th&ocirc;ng h&agrave;ng h&oacute;a v&agrave; c&aacute;c chuỗi cung ứng trong khu vực kh&ocirc;ng bị gi&aacute;n đoạn; x&acirc;y dựng ch&iacute;nh s&aacute;ch đầu tư th&ocirc;ng tho&aacute;ng, bền vững, c&oacute; tr&aacute;ch nhiệm trong khu vực; bảo đảm an ninh lương thực v&agrave; chuỗi gi&aacute; trị n&ocirc;ng nghiệp; tăng cường sử dụng năng lượng t&aacute;i tạo; tiến tới x&acirc;y dựng kinh tế tuần ho&agrave;n.</p>\r\n\r\n<p>Bốn l&agrave;, th&uacute;c đẩy nhanh việc ph&ecirc; chuẩn c&aacute;c hiệp định, thỏa thuận thương mại trong khu vực; ưu ti&ecirc;n tăng cường c&aacute;c nỗ lực để ho&agrave;n tất đ&agrave;m ph&aacute;n v&agrave; k&yacute; kết Hiệp định Đối t&aacute;c Kinh tế To&agrave;n diện Khu vực (RCEP) trong năm 2020; tăng cường năng lực, sự tham gia v&agrave; đẩy mạnh gi&aacute;m s&aacute;t nghị viện đối với việc thực hiện c&aacute;c cam kết về đầu tư v&agrave; thương mại trong khu&ocirc;n khổ khu vực v&agrave; quốc tế, coi đ&acirc;y l&agrave; c&ocirc;ng cụ chủ yếu để th&uacute;c đẩy li&ecirc;n kết kinh tế s&acirc;u rộng hơn trong Cộng đồng ASEAN v&agrave; giữa ASEAN với c&aacute;c đối t&aacute;c kh&aacute;c.</p>\r\n\r\n<p><strong>Khai th&aacute;c t&agrave;i nguy&ecirc;n xuy&ecirc;n bi&ecirc;n giới để đảm bảo an ninh lương thực&nbsp;</strong></p>\r\n\r\n<p>Năm l&agrave;, tăng cường ph&aacute;t triển cơ sở hạ tầng số, kết nối số, an to&agrave;n dữ liệu số, kiến thức v&agrave; kỹ năng số gắn kết giữa c&aacute;c nước th&agrave;nh vi&ecirc;n ASEAN để ph&aacute;t triển kinh tế số; chia sẻ th&ocirc;ng tin v&agrave; kinh nghiệm để xử l&yacute; c&aacute;c th&aacute;ch thức m&agrave; c&aacute;c nền tảng thương mại điện tử đang phải đối mặt; tận dụng c&aacute;c cơ hội của C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư nhằm khắc phục bất lợi từ việc đ&oacute;ng cửa nền kinh tế v&agrave; gi&atilde;n c&aacute;ch x&atilde; hội trong dịch bệnh Covid-19 v&agrave; duy tr&igrave; t&iacute;nh cạnh tranh trong kỷ nguy&ecirc;n kinh tế số.</p>\r\n\r\n<p>S&aacute;u l&agrave;, x&acirc;y dựng cơ sở hạ tầng kết nối khu vực, tăng cường kết nối giao th&ocirc;ng v&agrave; sự cần thiết của việc tăng cường hợp t&aacute;c tiểu v&ugrave;ng M&ecirc; C&ocirc;ng v&agrave; c&aacute;c tiểu v&ugrave;ng kh&aacute;c của ASEAN, đặc biệt l&agrave; về bảo vệ m&ocirc;i trường, ph&aacute;t triển n&ocirc;ng nghiệp th&ocirc;ng minh v&agrave; quản l&yacute; bền vững c&aacute;c nguồn t&agrave;i nguy&ecirc;n thi&ecirc;n nhi&ecirc;n xuy&ecirc;n bi&ecirc;n giới nhằm đảm bảo an ninh lương thực, nguồn nước v&agrave; năng lượng tại c&aacute;c tiểu v&ugrave;ng trong v&agrave; sau đại dịch Covid-19.</p>\r\n\r\n<p><img alt=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/09/09/ub-kinh-te-5-1599635216200.jpg\" title=\"Du lịch cầu hàng không giữa “các nước xanh lá cây” để tái mở cửa ASEAN - 3\" /></p>\r\n\r\n<p>Nhấn để ph&oacute;ng to ảnh</p>\r\n\r\n<p>Phi&ecirc;n thảo luận diễn ra đồng thời tại điểm cầu của c&aacute;c nước trong cộng đồng ASEAN.</p>\r\n\r\n<p>Ph&aacute;t biểu tại phi&ecirc;n họp, đại diện đo&agrave;n Malaysia cho rằng, c&aacute;c nước trong ASEAN c&oacute; nhiều điểm chung n&ecirc;n ch&iacute;nh s&aacute;ch của bất cứ quốc gia n&agrave;o cũng c&oacute; thể được c&aacute;c quốc gia kh&aacute;c học tập, để c&oacute; thể tr&aacute;nh gặp sai lầm giống nhau.</p>\r\n\r\n<p>Theo nghị sỹ Malaysia, thời điểm n&agrave;y rất cần một c&aacute;ch tiếp cận chung theo hướng địa phương ho&aacute; c&aacute;c hoạt động kinh tế. Hầu hết hoạt động kinh tế đ&atilde; được t&iacute;ch hợp v&agrave;o chuối cũng ứng to&agrave;n cầu nhưng Covid- 19 đ&atilde; l&agrave;m gi&aacute;n đoạn chuỗi cung ứng n&agrave;y.</p>\r\n\r\n<p>B&agrave;i học l&agrave; cần phải giảm thiểu sự to&agrave;n cầu ho&aacute;. Nhiều doanh nghiệp đang địa phương ho&aacute; chuỗi sản xuất của m&igrave;n, ASEAN c&oacute; thể địa phương ho&aacute;, mở rộng sang khu vực ho&aacute;, xử l&yacute; chuỗi cung ứng khu vực để miễn dịch khủng hoảng trong tương lai, đại diện đo&agrave;n nghị sĩ Malaysia n&ecirc;u quan điểm.</p>\r\n\r\n<p>Chia sẻ kinh nghiệm ứng ph&oacute; với đại dịch Covid-19, đại diện Singapore cho biết nước n&agrave;y mở ra 4 loại ng&acirc;n s&aacute;ch, gồm quỹ ki&ecirc;n cường, quỹ chống chịu, quỹ đo&agrave;n kết v&agrave; quỹ thống&nbsp; nhất, bốn quỹ n&agrave;y được Ch&iacute;nh phủ hỗ trợ. B&ecirc;n cạnh đ&oacute; Singapore c&ograve;n c&oacute; ch&iacute;nh s&aacute;ch hỗ trợ để doanh nghiệp giữ việc l&agrave;m cho người lao động, ch&iacute;nh s&aacute;ch nay được gia hạn đến th&aacute;ng 3/2011.</p>\r\n\r\n<p><strong>Th&aacute;i Anh</strong></p>\r\n', 1, '1615813286_132218024222456931_2.jpg', 5000000, 20, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `report_revenues`
--

CREATE TABLE `report_revenues` (
  `id` int(11) NOT NULL COMMENT 'Khóa chính',
  `date` int(11) NOT NULL COMMENT 'Ngày lập hóa đơn',
  `numberOfBill` int(11) NOT NULL COMMENT 'Số lượng hóa đơn',
  `numberOfCustomer` int(11) NOT NULL COMMENT 'Số lượng khách',
  `total` int(11) NOT NULL COMMENT 'tổng doanh thu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `report_revenues`
--

INSERT INTO `report_revenues` (`id`, `date`, `numberOfBill`, `numberOfCustomer`, `total`) VALUES
(1, 2021, 1, 1, 1200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Nguyễn Văn A', 'nva@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Nguyễn Văn B', 'nvb@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'Nguyễn Văn C', 'nvc@gmail.com', '202cb962ac59075b964b07152d234b70'),
(4, 'Nguyễn Văn D', 'nvd@gmail.com', '202cb962ac59075b964b07152d234b70'),
(5, 'Nguyễn Văn E', 'nve@gmail.com', '202cb962ac59075b964b07152d234b70'),
(7, 'Nguyễn Văn F', 'nvf@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `report_revenues`
--
ALTER TABLE `report_revenues`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'khóa chính', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `report_revenues`
--
ALTER TABLE `report_revenues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Khóa chính', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Cơ sở dữ liệu: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Đang đổ dữ liệu cho bảng `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'sqk_Khanh', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"dangkyhoc\",\"phoxinh15\",\"phpmyadmin\",\"ql_kh\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Cấu trúc của bảng @TABLE@\",\"latex_structure_continued_caption\":\"Cấu trúc của bảng @TABLE@ (còn nữa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Nội dung của bảng @TABLE@\",\"latex_data_continued_caption\":\"Nội dung của bảng @TABLE@ (còn nữa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Đang đổ dữ liệu cho bảng `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"phoxinh15\",\"table\":\"orderdetail\"},{\"db\":\"phoxinh15\",\"table\":\"report_revenues\"},{\"db\":\"phoxinh15\",\"table\":\"customers\"},{\"db\":\"phoxinh15\",\"table\":\"products\"},{\"db\":\"phoxinh15\",\"table\":\"report_evenues\"},{\"db\":\"phoxinh15\",\"table\":\"categories\"},{\"db\":\"ql_kh\",\"table\":\"khachhang\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-08-24 14:06:56', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"vi\",\"NavigationWidth\":233}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `ql_kh`
--
CREATE DATABASE IF NOT EXISTS `ql_kh` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ql_kh`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(20) NOT NULL,
  `Phai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Phai`) VALUES
(1, 'Adam Hamigtern', 0),
(2, 'Golden Paintison', 1),
(3, 'John C Jena', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);
--
-- Cơ sở dữ liệu: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
