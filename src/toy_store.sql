-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 09, 2023 lúc 11:04 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ban_sach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_chi_tiet_hoadon` bigint(10) NOT NULL,
  `sodh` bigint(20) NOT NULL,
  `masp` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` float NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL,
  `madv` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_chi_tiet_hoadon`, `sodh`, `masp`, `soluong`, `dongia`, `thanhtien`, `madv`) VALUES
(144, 127, 214, 1, 214, '214.00', '15'),
(145, 128, 214, 2, 268, '536.00', ''),
(146, 129, 214, 1, 268, '268.00', ''),
(147, 130, 220, 1, 459, '459.00', ''),
(148, 131, 220, 1, 459, '459.00', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `madv` bigint(20) NOT NULL,
  `tendv` varchar(200) NOT NULL,
  `gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`madv`, `tendv`, `gia`) VALUES
(15, 'Bọc túi', 10),
(16, 'Gói quà tặng', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `sodh` bigint(20) NOT NULL,
  `emailkh` varchar(50) NOT NULL,
  `ngaygiao` date NOT NULL,
  `tenkh` varchar(100) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `dienthoai` varchar(50) NOT NULL,
  `hinhthucthanhtoan` varchar(100) NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`sodh`, `emailkh`, `ngaygiao`, `tenkh`, `diachi`, `dienthoai`, `hinhthucthanhtoan`, `thanhtien`) VALUES
(127, 'thanh@gmail.com', '2021-06-26', 'Thanh Truong', 'Hà Nội', '1234567890', 'ATM', '224.00'),
(128, 'tranhoanganh@gmail.com', '2023-04-09', 'Hoang Anh Tran', 'q', '0934282329', 'ATM', '0.00'),
(129, 'tranhoanganh@gmail.com', '2023-04-09', 'Hoang Anh Tran', 'q', '0934282329', 'ATM', '0.00'),
(130, 'tranhoanganh@gmail.com', '2023-04-09', 'Hoang Anh Tran', 'q', '0934282329', 'ATM', '0.00'),
(131, 'tranhoanganh@gmail.com', '2023-04-09', 'Hoang Anh Tran', 'q', '0934282329', 'ATM', '0.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginadmin`
--

CREATE TABLE `loginadmin` (
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginadmin`
--

INSERT INTO `loginadmin` (`tendangnhap`, `matkhau`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginuser`
--

CREATE TABLE `loginuser` (
  `email` varchar(50) NOT NULL,
  `matkhau` int(200) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `DienThoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginuser`
--

INSERT INTO `loginuser` (`email`, `matkhau`, `HoTen`, `DienThoai`) VALUES
('thanh@gmail.com', 123, 'Thanh Truong', '1234567890'),
('tungvu@gmail.com', 123, 'Vũ Đình Tùng', '0123456789');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`ID`, `Ten`) VALUES
(19, 'Vehicle Toy'),
(20, 'Lego'),
(21, 'Doll '),
(22, 'Robot'),
(23, 'Gun Toy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(200) NOT NULL,
  `Gia` double NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `Manhasx` bigint(10) NOT NULL,
  `Mota` text NOT NULL,
  `date` date NOT NULL,
  `KhuyenMai` tinyint(1) NOT NULL,
  `giakhuyenmai` double NOT NULL,
  `tacgia` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `Ten`, `Gia`, `HinhAnh`, `Manhasx`, `Mota`, `date`, `KhuyenMai`, `giakhuyenmai`, `tacgia`) VALUES
(221, 'New generation off-road vehicle', 459, 'vt1918-gr_2_.jpg', 19, '<h2>Đồ Chơi VECTO Xe Vượt Địa H&igrave;nh Thế Hệ Mới (Xanh L&aacute;) VT1918/GR</h2>\r\n\r\n<p>L&agrave; phi&ecirc;n bản n&acirc;ng cấp của c&aacute;c mẫu xe vượt địa h&igrave;nh điều khiển từ xa trước đ&acirc;y. Xe vượt địa h&igrave;nh thế hệ mới được cải tiến cả từ b&ecirc;n ngo&agrave;i lẫn b&ecirc;n trong, tạo n&ecirc;n một phi&ecirc;n bản ho&agrave;n hảo m&agrave; b&eacute; trai n&agrave;o cũng muốn sở hữu cho m&igrave;nh một chiếc.</p>\r\n\r\n<p>- Vẻ ngo&agrave;i độc đ&aacute;o với c&aacute;c đường n&eacute;t được cắt dọc th&acirc;n xe một c&aacute;ch mạnh mẽ, kết hợp c&ugrave;ng phong c&aacute;ch phối m&agrave;u theo trường ph&aacute;i hiện đại tạo n&ecirc;n một vẻ ngoại quan độc nhất, m&agrave; kh&oacute; c&oacute; d&ograve;ng xe n&agrave;o tr&ecirc;n thị trường sở hữu được.</p>\r\n\r\n<p>- Chưa dừng lại ở đ&oacute;, với hệ thống c&ocirc;ng nghệ t&acirc;n tiến b&ecirc;n trong gi&uacute;p xe di chuyển v&ocirc; c&ugrave;ng mượt m&agrave; khi b&eacute; điều khiển. Chắc chắn gi&uacute;p b&eacute; dễ d&agrave;ng chinh phục mọi địa h&igrave;nh tr&ecirc;n đường đua.</p>\r\n\r\n<p><strong>Bộ sản phẩm Xe vượt địa h&igrave;nh thế hệ mới bao gồm:</strong></p>\r\n\r\n<p>1 x Xe điều khiển (sử dụng pin sạc/ c&oacute; đi k&egrave;m)</p>\r\n\r\n<p>1 x Remote điều khiển (Sử dụng pin tiểu/ kh&ocirc;ng đi k&egrave;m)</p>\r\n\r\n<p>1 x C&aacute;p sạc USB</p>\r\n\r\n<p><strong>VECTO - THẾ GIỚI ĐỒ CHƠI B&Eacute; TRAI CỰC ĐỈNH</strong></p>\r\n\r\n<p>VECTO l&agrave; thương hiệu đồ chơi d&agrave;nh ri&ecirc;ng cho c&aacute;c b&eacute; trai, với c&aacute;c d&ograve;ng đồ chơi trải d&agrave;i từ đồ chơi m&ocirc; h&igrave;nh cho đến c&aacute;c đồ chơi điều khiển từ xa. Với mong muốn gi&uacute;p c&aacute;c b&eacute; trai c&oacute; một sự ph&aacute;t triển to&agrave;n diện từ tr&iacute; n&atilde;o đến thể chất, Vecto đ&atilde; ph&aacute;t triển đa dạng c&aacute;c loại đồ chơi để đem đến cho b&eacute; nhiều lựa chọn nhất c&oacute; thể, c&oacute; thể kể đến như:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- ROBOT ĐIỀU KHIỂN &ndash; PH&Aacute;T TRIỂN TƯ DUY S&Aacute;NG TẠO</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- XE ĐIỀU KHIỂN &ndash; PH&Aacute;T TRIỂN TƯ DUY PHƯƠNG HƯỚNG</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- ĐỒ CHƠI BAY ĐIỀU KHIỂN &ndash; PH&Aacute;T TRIỂN TƯ DUY LOGIC</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- BỘ ĐỒ CHƠI LẮP R&Aacute;P DIY &ndash; PH&Aacute;T TRIỂN KỸ NĂNG VẬN ĐỘNG TINH</p>\r\n', '2023-04-09', 1, 344, 'VECTO'),
(222, 'Xe Lamborghini Sesto', 479, '10-200411133009_1_.jpg', 19, '<h2>Đồ Chơi RASTAR Xe Lamborghini Sesto R48200</h2>\r\n\r\n<p>Đồ chơi xe điều khiển Lamborghini Sesto c&oacute; bản quyền ch&iacute;nh h&atilde;ng từ Lamborghini, m&ocirc; phỏng d&ograve;ng xe si&ecirc;u phẩm, chiếc xe như c&oacute; hồn hơn bởi những n&eacute;t tinh tế sắc xảo trong từng chi tiết nhỏ nhất. Xe được l&agrave;m từ chất liệu kim loại v&agrave; nhựa cao cấp, tuyệt đối an to&agrave;n cho sức khỏe của b&eacute;. Lamborghini Sesto c&oacute; thiết kế vững chắc để giảm thiểu thiệt hại khi va chạm v&agrave; lốp cao su thực sự tạo n&ecirc;n độ b&aacute;m đường tốt v&agrave; độ bền sản phẩm cho thời gian sử dụng cao.</p>\r\n\r\n<p>Hệ thống điều khiển xe cực kỳ đơn giản, tiến trước, l&ugrave;i sau, rẽ tr&aacute;i, rẽ phải cực nhạy. Đồ chơi xe điều khiển Lamborghini Sesto với những đặc điểm nổi bật:<br />\r\n- BẢN QUYỀN CH&Iacute;NH H&Atilde;NG: Bản quyền ch&iacute;nh thức từ h&atilde;ng xe nổi tiếng thế giới Lamborghini<br />\r\n- THIẾT KẾ NỔI BẬT: M&ocirc; phỏng tỉ mỉ, tinh xảo đến từng chi tiết so với mẫu xe ngo&agrave;i đời thật. Thiết kế sang trọng, m&agrave;u sắc trang nh&atilde;. Vỏ ngo&agrave;i được sơn tĩnh điện, ph&ugrave; hợp để trưng b&agrave;y ở ph&ograve;ng kh&aacute;ch hoặc ngay tr&ecirc;n b&agrave;n l&agrave;m việc của bạn.<br />\r\n- ĐẢM BẢO CHẤT LƯỢNG: Xe điều khiển Rastar được sản xuất với nhựa v&agrave; kim loại cao cấp, đảm bảo an to&agrave;n cho b&eacute; v&agrave; độ bền của sản phẩm theo thời gian<br />\r\n- GI&Aacute; TRỊ GI&Aacute;O DỤC: Gi&uacute;p b&eacute; c&oacute; c&aacute;i nh&igrave;n ch&iacute;nh x&aacute;c về những phương tiện đi lại trong cuộc sống, bồi dưỡng &yacute; thức kh&aacute;m ph&aacute; học hỏi, t&igrave;m t&ograve;i những thứ xung quanh.</p>\r\n\r\n<p><strong>C&aacute;ch chơi:</strong>&nbsp;Gắn pin v&agrave;o bộ điều khiển từ xa v&agrave; m&ocirc; h&igrave;nh xe, mở n&uacute;t khởi động, d&ugrave;ng bộ điều khiển để l&aacute;i chiếc xe rẽ tr&aacute;i, phải, tiến trước, l&ugrave;i sau theo &yacute; th&iacute;ch của b&eacute;. Tham khảo th&ecirc;m hướng dẫn sử dụng đ&iacute;nh k&egrave;m.</p>\r\n\r\n<p><strong>Bộ sản phẩm đồ chơi điều khiển Lamborghini Sesto gồm:</strong><br />\r\n01 bộ điều khiển.<br />\r\n01 xe điều khiển Lamborghini Sesto</p>\r\n\r\n<p><strong>Lưu &yacute;:</strong><br />\r\nSản phẩm th&iacute;ch hợp cho trẻ từ 6 tuổi trở l&ecirc;n.<br />\r\nSản phẩm kh&ocirc;ng k&egrave;m pin<br />\r\nBảo h&agrave;nh 30 ng&agrave;y, miễn ph&iacute; đổi trả khi c&oacute; lỗi từ nh&agrave; sản xuất</p>\r\n\r\n<p><strong>V&agrave;i n&eacute;t về thương hiệu:</strong><br />\r\nRastar l&agrave; thương hiệu chuy&ecirc;n sản xuất m&ocirc; h&igrave;nh điều khiển từ xa với hơn 20 năm kinh nghiệm theo ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u, hiện đại h&oacute;a quy tr&igrave;nh m&aacute;y m&oacute;c sản xuất thuộc c&ocirc;ng ty Xinghui Auto Model Co. Ltd. Đ&acirc;y l&agrave; d&ograve;ng xe điều khiển cao cấp nhất, do được ph&ecirc; duyệt gắn logo bản quyền của những thương hiệu nổi tiếng thế giới v&igrave; vậy cần đ&aacute;p ứng được những y&ecirc;u cầu khắt khe về chất lượng, kiểu d&aacute;ng giống hệt so với nguy&ecirc;n bản h&atilde;ng xe đưa ra v&agrave; Rastar ứng dụng c&ocirc;ng nghệ sơn hiện đại, sử dụng robot ABB ti&ecirc;n tiến để phun sơn đảm bảo đ&uacute;ng y&ecirc;u cầu về m&agrave;u sắc v&agrave; chi tiết tinh xảo từ c&aacute;c h&atilde;ng xe kh&oacute; t&iacute;nh nhất.</p>\r\n', '2023-04-09', 0, 0, 'RASTAR'),
(223, 'Xe Lamborghini Aventador J', 1.198, 'r57500.jpg', 19, '<h2>Đồ chơi RASTAR Xe Lamborghini Aventador J R57500</h2>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>Chiếc Aventador J l&agrave; chiếc xe độc nhất tr&ecirc;n thế giới mắt tại triển l&atilde;m Geneva Motor Show 2012.&nbsp;Đồ chơi RASTAR Xe Lamborghini Aventador J R57500&nbsp;m&ocirc; phỏng ch&iacute;nh x&aacute;c chiếc si&ecirc;u xe sẽ l&agrave; sản phẩm tuyệt vời d&agrave;nh cho b&eacute; y&ecirc;u th&iacute;ch si&ecirc;u xe thể thao.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đồ chơi RASTAR xe Lamborghini Aventador J R57500&nbsp;l&agrave; phi&ecirc;n bản mới được ph&aacute;t triển tr&ecirc;n nền tảng của những chiếc xe Aventador.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Chiếc&nbsp;<strong>xe điều khiển</strong>&nbsp;c&oacute; thiết kế như thật với những đường n&eacute;t m&ocirc; phỏng chi tiết, được sơn tĩnh điện tinh tế rất ph&ugrave; hợp để trưng b&agrave;y ở ph&ograve;ng kh&aacute;ch, ph&ograve;ng l&agrave;m việc.</li>\r\n	<li>L&agrave; m&oacute;n đồ chơi điều khiển từ xa sẽ cho b&eacute; cảm gi&aacute;c th&iacute;ch th&uacute; khi được tự tay điều khiển c&aacute;c phương tiện, b&eacute; sẽ m&ecirc; t&iacute;t v&agrave; c&oacute; những giờ chơi thoải m&aacute;i b&ecirc;n &ldquo;xế hộp&rdquo; sau giờ học căng thẳng.</li>\r\n	<li>C&aacute;c bộ phận đều được l&agrave;m ho&agrave;n to&agrave;n bởi chất liệu nhựa v&agrave; kim loại cao cấp, tuyệt đối an to&agrave;n đến sức khỏe của b&eacute;.</li>\r\n	<li>Cho b&eacute; được thỏa sức chơi đ&ugrave;a c&ugrave;ng chiếc xe m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, t&igrave;m hiểu th&ecirc;m về c&aacute;c d&ograve;ng xe &ocirc; t&ocirc; ngo&agrave;i cuộc sống, r&egrave;n luyện kỹ năng kh&eacute;o l&eacute;o nhanh nhạy khi điều khiển.</li>\r\n	<li>Xe c&oacute; t&iacute;nh năng sẵn s&agrave;ng tiến l&ecirc;n ph&iacute;a trước, l&ugrave;i về ph&iacute;a sau, rẽ tr&aacute;i&nbsp;phải, dừng xe.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sản phẩm d&agrave;nh cho b&eacute; từ 6 tuổi trở l&ecirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img src=\"https://u6wdnj9wggobj.vcdn.cloud/media/wysiwyg/content/r57500_3__1_.jpg\" style=\"height:auto; margin-left:auto; margin-right:auto; width:600px\" /></strong></p>\r\n\r\n<p><strong>Đồ chơi RASTAR xe Lamborghini Aventador J R57500</strong>&nbsp;bao gồm:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>01 hộp đồ chơi gồm xe v&agrave; điều khiển xe.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>V&agrave;i n&eacute;t về thương hiệu:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Rastar&nbsp;l&agrave; thương hiệu chuy&ecirc;n sản xuất m&ocirc; h&igrave;nh điều khiển từ xa với hơn 20 năm kinh nghiệm theo ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u, hiện đại h&oacute;a quy tr&igrave;nh m&aacute;y m&oacute;c sản xuất thuộc c&ocirc;ng ty Xinghui Auto Model Co. Ltd. Đ&acirc;y l&agrave; d&ograve;ng xe điều khiển cao cấp nhất, do được ph&ecirc; duyệt gắn logo bản quyền của những thương hiệu nổi tiếng thế giới v&igrave; vậy cần đ&aacute;p ứng được những y&ecirc;u cầu khắt khe về chất lượng, kiểu d&aacute;ng giống hệt so với nguy&ecirc;n bản h&atilde;ng xe đưa ra v&agrave;&nbsp;Rastar&nbsp;ứng dụng c&ocirc;ng nghệ sơn hiện đại, sử dụng robot ABB ti&ecirc;n tiến để phun sơn đảm bảo đ&uacute;ng y&ecirc;u cầu về m&agrave;u sắc v&agrave; chi tiết tinh xảo từ c&aacute;c h&atilde;ng xe kh&oacute; t&iacute;nh nhất.</p>\r\n', '2023-04-09', 0, 0, 'RASTAR'),
(224, 'Xe điều khiển tỷ lệ 1:18 Bugatti màu Đen', 719, 'r53900n-bla_1_.jpg', 19, '<h2>Đồ Chơi&nbsp;Rastar&nbsp;Xe M&ocirc; H&igrave;nh Điều Khiển-R/C 1:18 Bugatti Grand Sport V R53900N/BLA</h2>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p><strong>Đồ chơi Rastar xe m&ocirc; h&igrave;nh điều khiển-R/C 1:18 Bugatti Grand Sport V R53900N/BLA</strong>&nbsp;c&oacute; thiết kế độc đ&aacute;o, ấn tượng. Đ&acirc;y l&agrave; m&ocirc; h&igrave;nh xe điều khiển với bản quyền thiết kế của Bugatti Veyron Grand Sport Vitesse. Thiết kế m&ocirc; phỏng tinh xảo, ch&iacute;nh x&aacute;c đến từng chi tiết, m&ocirc; phỏng thực tế với tỉ lệ 1:18. Đ&acirc;y l&agrave; m&oacute;n đồ chơi l&yacute; tưởng d&agrave;nh cho c&aacute;c b&eacute; trai hay những người đam m&ecirc; xe cộ.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>Xe đi&ecirc;̀u khi&ecirc;̉n&nbsp;c&oacute; 3 loại m&agrave;u đen, trắng xanh v&agrave; cam đầy phong ph&uacute; Tay cầm chạy bằng pin dễ d&agrave;ng điều khiển.</p>\r\n\r\n<p><strong>Xe m&ocirc; h&igrave;nh điều khiển-R/C 1:18 Bugatti Grand Sport V R53900N/BLA</strong>&nbsp;&nbsp;bao gồm những đặc điểm v&agrave; chức năng sau:</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Tốc độ 7-8 km/h.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Khoảng c&aacute;ch điều khiển 30-40 m.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Rẽ tr&aacute;i/phải, tiến/l&ugrave;i.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Lốp xe cao su nguy&ecirc;n chất, th&aacute;o rời được.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Hệ thống giảm x&oacute;c gi&uacute;p xe vận h&agrave;nh &ecirc;m &aacute;i đối với mọi địa h&igrave;nh.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Bền bỉ với thời gian.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Nhựa cao cấp ABS chơi được trong nh&agrave; v&agrave; ngo&agrave;i trời.</p>\r\n\r\n<p>Đồ chơi&nbsp;Rastar&nbsp;<strong>xe m&ocirc; h&igrave;nh điều khiển-R/C 1:18 Bugatti Grand Sport V R53900N/BLA</strong>&nbsp;bao&nbsp;gồm:</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>01 hộp đồ chơi gồm xe Bugatti Grand Sport V v&agrave; điều khiển xe.<img src=\"https://u6wdnj9wggobj.vcdn.cloud/media//wysiwyg/content/R53900N-BLA_1_.jpg\" style=\"height:auto; margin-left:auto; margin-right:auto; width:600px\" /></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p><strong>V&agrave;i n&eacute;t về thương hiệu:</strong></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>Rastar l&agrave; thương hiệu chuy&ecirc;n sản xuất m&ocirc; h&igrave;nh điều khiển từ xa với hơn 20 năm kinh nghiệm theo ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u, hiện đại h&oacute;a quy tr&igrave;nh m&aacute;y m&oacute;c sản xuất thuộc c&ocirc;ng ty Xinghui Auto Model Co. Ltd. Đ&acirc;y l&agrave; d&ograve;ng xe điều khiển cao cấp nhất, do được ph&ecirc; duyệt gắn logo bản quyền của những thương hiệu nổi tiếng thế giới v&igrave; vậy cần đ&aacute;p ứng được những y&ecirc;u cầu khắt khe về chất lượng, kiểu d&aacute;ng giống hệt so với nguy&ecirc;n bản h&atilde;ng xe đưa ra v&agrave; Rastar ứng dụng c&ocirc;ng nghệ sơn hiện đại, sử dụng robot ABB ti&ecirc;n tiến để phun sơn đảm bảo đ&uacute;ng y&ecirc;u cầu về m&agrave;u sắc v&agrave; chi tiết tinh xảo từ c&aacute;c h&atilde;ng xe kh&oacute; t&iacute;nh nhất.</p>\r\n', '2023-04-09', 0, 0, 'RASTAR'),
(225, 'Xe điều khiển 1:24 BMW New Z4 màu Đen', 459, 'R96200___BLA_1.jpg', 19, '<h2>Đồ Chơi RASTAR Xe Điều Khiển 1:24 BMW New Z4_M&agrave;u Đen R96200/BLA</h2>\r\n\r\n<p>Đồ chơi&nbsp;<strong>xe điều khiển&nbsp;BMW New Z4_M&agrave;u Đen R96200/BLA&nbsp;</strong>m&ocirc; phỏng ch&iacute;nh x&aacute;c như xe ngo&agrave;i đời thật được l&agrave;m từ chất liệu nhựa v&agrave; hợp kim cao cấp, tuyệt đối an to&agrave;n cho sức khỏe của b&eacute;. Hệ thống điều khiển xe cực kỳ đơn giản, c&oacute; thể tiến trước, l&ugrave;i sau, rẽ tr&aacute;i, rẽ phải chỉ bằng c&aacute;ch gạt tay tr&ecirc;n bộ điều khiển, ngo&agrave;i ra, xe cũng c&oacute; thể dễ d&agrave;ng vượt qua c&aacute;c chướng ngại vật một c&aacute;ch rất linh hoạt. Nhắc đến&nbsp;đồ chơi điều khiển xe BMW New&nbsp;Z4&nbsp;phải kể đến những đặc điểm nổi bật như:</p>\r\n\r\n<ul>\r\n	<li>Thể hiện ch&iacute;nh x&aacute;c đến từng chi tiết theo tỷ lệ 1:24</li>\r\n	<li>Thiết kế sang trọng, m&agrave;u sắc trang nh&atilde;. Mỗi khi chơi c&ugrave;ng chiếc si&ecirc;u xe n&agrave;y sẽ gi&uacute;p b&eacute; c&oacute; c&aacute;i nh&igrave;n tổng quan về những phương tiện đi lại trong cuộc sống, bồi dưỡng &yacute; thức kh&aacute;m ph&aacute; học hỏi, t&igrave;m t&ograve;i những thứ xung quanh.</li>\r\n	<li>Bảo h&agrave;nh 30 ng&agrave;y. Chất lượng cao cấp &amp; an to&agrave;n nhất trong ph&acirc;n kh&uacute;c xe điều khiển cho b&eacute;. Vận tốc 6-7km/h với khoảng c&aacute;ch điều khiển l&ecirc;n đến 15m.&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đ&acirc;y kh&ocirc;ng chỉ l&agrave; m&oacute;n đồ chơi y&ecirc;u th&iacute;ch của hầu hết c&aacute;c b&eacute; trai m&agrave; c&ograve;n l&agrave; vật trang tr&iacute; cho t&iacute;n đồ đam m&ecirc; sưu tầm m&ocirc; h&igrave;nh xe điều khiển n&oacute;i chung. Với thiết kế nhỏ gọn, bao bọc b&ecirc;n ngo&agrave;i&nbsp;si&ecirc;u xe&nbsp;l&agrave; lớp sơn tĩnh điện tinh tế rất ph&ugrave; hợp để trưng b&agrave;y ở ph&ograve;ng kh&aacute;ch hoặc ngay tr&ecirc;n b&agrave;n l&agrave;m việc của bạn.</p>\r\n\r\n<p>Bộ sản phẩm&nbsp;<strong>xe&nbsp;</strong><strong>điều khiển BMW New Z4_M&agrave;u Đen R96200/BLA</strong>&nbsp;gồm:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>01 bộ điều khiển v&agrave; 01 xe&nbsp;BMW New Z4</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>V&agrave;i n&eacute;t về thương hiệu RASTAR:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>RASTAR l&agrave; thương hiệu chuy&ecirc;n sản xuất m&ocirc; h&igrave;nh điều khiển từ xa thuộc c&ocirc;ng ty Xinghui Auto Model Co. Ltd. Nh&agrave; sản xuất đến từ Trung Quốc n&agrave;y nổi tiếng với những m&ocirc; h&igrave;nh điều khiển từ xa được sản xuất với chất liệu nhựa ABS cao cấp, đạt ti&ecirc;u chuẩn chất lượng khắc khe của Mỹ, an to&agrave;n tuyệt đối cho con trẻ.&nbsp;</p>\r\n', '2023-04-09', 1, 321, 'RASTAR'),
(226, 'Mô hình Scraphook EV Deluxe', 1.169, 'f7191.f2990_copy.jpg', 22, '<h2>Đồ Chơi TRANSFORMERS M&ocirc; H&igrave;nh Scraphook EV Deluxe</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp;F7191/F2990</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&ocirc; H&igrave;nh Scraphook EV Deluxe F7191/F2990&nbsp;l&agrave; d&ograve;ng si&ecirc;u robot Kỷ niệm Di sản: Transformers Legacy Evolution kỷ niệm 40 năm qua của lịch sử Transformers. Nh&acirc;n vật h&agrave;nh động Breakdown được lấy cảm hứng từ The Transformers phim v&ocirc; c&ugrave;ng nổi tiếng tr&ecirc;n to&agrave;n thế giới.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nh&acirc;n vật Scraphook trong phi&ecirc;n bản mới nhất của Generations - Studio Series đặc trưng bởi c&aacute;c chi tiết về ngoại h&igrave;nh:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Nh&acirc;n vật h&agrave;nh động Transformers chuyển đổi từ chế độ r&ocirc;-bốt sang xe tải trong 17 bước. Scraphook&nbsp; c&oacute; thể t&aacute;ch ra v&agrave; hợp nhất với c&aacute;c nh&acirc;n vật Transformers: Legacy Evolution kh&aacute;c dưới dạng &aacute;o gi&aacute;p Junkion kh&ocirc;ng thể ph&aacute; hủy!</li>\r\n	<li>Robot đồ chơi Transformers được n&acirc;ng cấp với c&aacute;c t&iacute;nh năng chiến đấu v&ocirc; c&ugrave;ng si&ecirc;u việt. Biến đổi cần trục v&agrave; b&aacute;nh răng ph&iacute;a sau l&agrave;m vũ kh&iacute;, tấn c&ocirc;ng kẻ th&ugrave;.</li>\r\n	<li>Qu&eacute;t m&atilde; tr&ecirc;n mỗi g&oacute;i để tiết lộ th&ocirc;ng số kỹ thuật của nh&acirc;n vật Thu thập c&aacute;c nh&acirc;n vật Transformers kh&aacute;c để kh&aacute;m ph&aacute; th&ocirc;ng tin v&agrave; khả năng</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>V&agrave;i n&eacute;t về thương hiệu đồ chơi:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thương hiệu đồ chơi trẻ em Transformers đến từ Mỹ nổi tiếng với những sản phẩm đồ chơi được sản xuất dựa tr&ecirc;n bộ phim Transformers ăn kh&aacute;ch. Transformers gồm những m&ocirc; h&igrave;nh robot biến h&igrave;nh tinh xảo, c&oacute; thể lắp r&aacute;p th&agrave;nh nhiều nh&acirc;n vật rất được c&aacute;c b&eacute; trai&nbsp; y&ecirc;u th&iacute;ch v&agrave; say m&ecirc;. Kh&ocirc;ng những thế, đồ chơi Transformer được kiểm định, đ&aacute;nh gi&aacute; cao l&agrave; đồ chơi an to&agrave;n cho trẻ em khi sử dụng. Với Transformer, trẻ sẽ kh&ocirc;ng ngừng ham học hỏi cũng ph&aacute;t huy khả năng s&aacute;ng tạo v&agrave; tư duy th&ocirc;ng minh th&ocirc;ng qua tr&ograve; chơi hấp dẫn n&agrave;y.&nbsp;</p>\r\n', '2023-04-09', 0, 0, ' TRANSFORMERS'),
(227, 'Đồ chơi Robot khủng long vui nhộn điều khiển từ xa (trắng)', 599, 'vt28312-wh_1.jpg', 22, '<h2>Đồ Chơi VECTO Robot Khủng Long Vui Nhộn Điều Khiển Từ Xa (Trắng) VT28312/WH</h2>\r\n\r\n<p>B&eacute; đ&atilde; sẵn s&agrave;ng ch&agrave;o đ&oacute;n sự xuất hiện của người bạn thời tiền sử chưa n&agrave;o? Với nhiều t&iacute;nh năng th&uacute; vị c&oacute; thể kể đến như:</p>\r\n\r\n<p>-Di chuyển ở nhiều hướng kh&aacute;c nhau</p>\r\n\r\n<p>-Ch&uacute; c&ograve;n c&oacute; thể trượt về trước v&agrave; sau thay v&igrave; đi từng bước như th&ocirc;ng thường</p>\r\n\r\n<p>-M&ocirc; phỏng tiếng gầm như khủng long thật</p>\r\n\r\n<p>-Khả năng lập tr&igrave;nh động t&aacute;c cực mới mẻ</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN VỀ SẢN PHẨM:</strong></p>\r\n\r\n<p>K&iacute;ch thước hộp h&agrave;ng:&nbsp;31 x 16 x 48 cm</p>\r\n\r\n<p>Chủ đề:&nbsp;VECTO ROBOT</p>\r\n\r\n<p>Năm sản xuất:&nbsp;2022</p>\r\n\r\n<p>Xuất xứ thương hiệu:&nbsp;Việt Nam</p>\r\n\r\n<p>Chất liệu:&nbsp;Nhựa v&agrave; kim loại &nbsp;(An to&agrave;n tuyệt đối với b&eacute;)</p>\r\n\r\n<p>Bộ sản phẩm đồ chơi Robot sứ giả c&ocirc;ng l&yacute; điều khiển từ xa&nbsp;bao gồm:</p>\r\n\r\n<p>1 x Robot điều khiển từ xa Sứ giả c&ocirc;ng l&yacute; (sử dụng pin tiểu, kh&ocirc;ng k&egrave;m pin)</p>\r\n\r\n<p>1 x Remote điều khiển (sử dụng pin tiểu, kh&ocirc;ng k&egrave;m pin)</p>\r\n\r\n<p>Khoảng c&aacute;ch điều khiển tối ưu: 10 ~ 15m (Kh&ocirc;ng bị ngăn c&aacute;ch bởi tường hoặc vật cản)</p>\r\n\r\n<p><strong>VECTO - THẾ GIỚI ĐỒ CHƠI B&Eacute; TRAI CỰC ĐỈNH</strong></p>\r\n\r\n<p>VECTO l&agrave; thương hiệu đồ chơi d&agrave;nh ri&ecirc;ng cho c&aacute;c b&eacute; trai, với c&aacute;c d&ograve;ng đồ chơi trải d&agrave;i từ đồ chơi điều khiển từ xa cho đến c&aacute;c d&ograve;ng đồ chơi lắp r&aacute;p. Với mong muốn gi&uacute;p c&aacute;c b&eacute; trai c&oacute; một sự ph&aacute;t triển to&agrave;n diện từ tr&iacute; n&atilde;o đến thể chất, Vecto đ&atilde; ph&aacute;t triển đa dạng c&aacute;c loại đồ chơi để đem đến cho b&eacute; nhiều lựa chọn nhất c&oacute; thể, c&oacute; thể kể đến như:</p>\r\n\r\n<p>- ROBOT ĐIỀU KHIỂN &ndash; PH&Aacute;T TRIỂN TƯ DUY S&Aacute;NG TẠO</p>\r\n\r\n<p>- XE ĐIỀU KHIỂN &ndash; PH&Aacute;T TRIỂN TƯ DUY PHƯƠNG HƯỚNG</p>\r\n\r\n<p>- ĐỒ CHƠI BAY &ndash; PH&Aacute;T TRIỂN TƯ DUY LOGIC</p>\r\n\r\n<p>- ĐỒ CHƠI LẮP R&Aacute;P DIY &ndash; PH&Aacute;T TRIỂN KỸ NĂNG VẬN ĐỘNG TINH</p>\r\n\r\n<p>V&agrave; c&ograve;n nhiều d&ograve;ng đồ chơi kh&aacute;c đang đợi b&eacute; kh&aacute;m ph&aacute;</p>\r\n', '2023-04-09', 0, 0, 'VECTO'),
(228, 'Đồ chơi robot chú chó kháu khỉnh điều khiển từ xa', 599, 'group-1.jpg', 22, '<h2>Đồ Chơi VECTO Robot Ch&uacute; Ch&oacute; Kh&aacute;u Khỉnh Điều Khiển Từ Xa VTK21</h2>\r\n\r\n<p>L&agrave; d&ograve;ng Robot th&uacute; cưng thế hệ mới của Vecto, với ngoại h&igrave;nh cực kỳ dễ thương, c&ugrave;ng khu&ocirc;n mặt đ&aacute;ng y&ecirc;u chắc chắn l&agrave;m c&aacute;c b&eacute; th&iacute;ch m&ecirc; khi lần đầu nh&igrave;n thấy. B&ecirc;n cạnh đ&oacute;, c&ograve;n c&oacute; h&agrave;ng loạt chức năng hiện đại c&oacute; thể kể đến như:</p>\r\n\r\n<p>-Tương t&aacute;c với tiếng vỗ tay</p>\r\n\r\n<p>-Hệ thống lập tr&igrave;nh th&ocirc;ng minh</p>\r\n\r\n<p>-Di chuyển nhiều hướng kh&aacute;c nhau</p>\r\n\r\n<p>-Ch&uacute; Robot c&ograve;n c&oacute; thể trồng c&acirc;y chuối, h&iacute;t đất.</p>\r\n\r\n<p>-Nhảy m&uacute;a theo nhạc cực kỳ đi&ecirc;u luyện</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN VỀ SẢN PHẨM:</strong></p>\r\n\r\n<p>K&iacute;ch thước hộp h&agrave;ng:&nbsp;39 x 17 x 28 cm</p>\r\n\r\n<p>Chủ đề:&nbsp;VECTO ROBOT</p>\r\n\r\n<p>Năm sản xuất:&nbsp;2022</p>\r\n\r\n<p>Xuất xứ thương hiệu:&nbsp;Việt Nam</p>\r\n\r\n<p>Chất liệu:&nbsp;Nhựa v&agrave; kim loại &nbsp;(An to&agrave;n tuyệt đối với b&eacute;)</p>\r\n\r\n<p>Bộ sản phẩm đồ chơi Robot ch&uacute; khủng long vui nhộn điều khiển từ xa&nbsp;bao gồm:</p>\r\n\r\n<p>1 x Robot khủng long vui nhộn điều khiển từ xa (dụng pin tiểu, kh&ocirc;ng k&egrave;m pin)</p>\r\n\r\n<p>1 x Remote điều khiển (sử dụng pin tiểu, kh&ocirc;ng k&egrave;m pin)</p>\r\n\r\n<p>Khoảng c&aacute;ch điều khiển tối ưu: 10 ~ 15m (Kh&ocirc;ng bị ngăn c&aacute;ch bởi tường hoặc vật cản)</p>\r\n\r\n<p><strong>VECTO - THẾ GIỚI ĐỒ CHƠI B&Eacute; TRAI CỰC ĐỈNH</strong></p>\r\n\r\n<p>VECTO l&agrave; thương hiệu đồ chơi d&agrave;nh ri&ecirc;ng cho c&aacute;c b&eacute; trai, với c&aacute;c d&ograve;ng đồ chơi trải d&agrave;i từ đồ chơi điều khiển từ xa cho đến c&aacute;c d&ograve;ng đồ chơi lắp r&aacute;p. Với mong muốn gi&uacute;p c&aacute;c b&eacute; trai c&oacute; một sự ph&aacute;t triển to&agrave;n diện từ tr&iacute; n&atilde;o đến thể chất, Vecto đ&atilde; ph&aacute;t triển đa dạng c&aacute;c loại đồ chơi để đem đến cho b&eacute; nhiều lựa chọn nhất c&oacute; thể, c&oacute; thể kể đến như:</p>\r\n\r\n<p>- ROBOT ĐIỀU KHIỂN &ndash; PH&Aacute;T TRIỂN TƯ DUY S&Aacute;NG TẠO</p>\r\n\r\n<p>- XE ĐIỀU KHIỂN &ndash; PH&Aacute;T TRIỂN TƯ DUY PHƯƠNG HƯỚNG</p>\r\n\r\n<p>- ĐỒ CHƠI BAY &ndash; PH&Aacute;T TRIỂN TƯ DUY LOGIC</p>\r\n\r\n<p>- ĐỒ CHƠI LẮP R&Aacute;P DIY &ndash; PH&Aacute;T TRIỂN KỸ NĂNG VẬN ĐỘNG TINH</p>\r\n\r\n<p>V&agrave; c&ograve;n nhiều d&ograve;ng đồ chơi kh&aacute;c đang đợi b&eacute; kh&aacute;m ph&aacute;</p>\r\n', '2023-04-09', 0, 0, 'VECTO'),
(229, 'Trạm Cảnh Sát', 6.399, '10278_1_.jpg', 20, '<h2><strong>LEGO ICONS 10278 (2923 chi tiết)</strong></h2>\r\n\r\n<p>Tận hưởng h&agrave;ng giờ vui chơi nhập vai với m&ocirc; h&igrave;nh LEGO&reg; (10278). Xem chiếc cầu thang lắp r&aacute;p bằng gạch uốn lượn qua c&aacute;c tầng nh&agrave; tinh xảo c&oacute; thể th&aacute;o rời để bạn kh&aacute;m ph&aacute; b&ecirc;n trong. B&ecirc;n cạnh l&agrave; một cửa h&agrave;ng b&aacute;nh r&aacute;n đầy ắp đồ ăn vặt v&agrave; ở ph&iacute;a b&ecirc;n kia l&agrave; một ki-ốt b&aacute;n b&aacute;o. M&ocirc; h&igrave;nh ấn tượng n&agrave;y được thiết kế với c&aacute;c t&iacute;nh năng ẩn v&agrave; thiết kế th&ocirc;ng minh.</p>\r\n\r\n<p>Một dự &aacute;n lắp r&aacute;p d&agrave;nh cho bạn. Sản phẩm một phần của bộ sưu tập c&aacute;c m&ocirc;-đun t&ograve;a nh&agrave; gi&agrave;u tr&iacute; tưởng tượng. Cho d&ugrave; bạn đang lắp r&aacute;p một m&igrave;nh hay với gia đ&igrave;nh, đ&acirc;y l&agrave; một th&aacute;ch thức để tập trung t&acirc;m tr&iacute; v&agrave; một t&aacute;c phẩm trưng b&agrave;y bắt mắt để thưởng thức c&ugrave;ng với c&aacute;c m&ocirc;-đun t&ograve;a nh&agrave; LEGO kh&aacute;c.</p>\r\n\r\n<p>&bull; Được thiết kế với c&aacute;c t&iacute;nh năng thiết kế th&ocirc;ng minh v&agrave; những điều bất ngờ ngo&agrave;i mong đợi, bộ lắp r&aacute;p m&ocirc; h&igrave;nh LEGO (10278) n&agrave;y ho&agrave;n hảo cho những người đang t&igrave;m kiếm một dự &aacute;n lắp r&aacute;p thư gi&atilde;n.</p>\r\n\r\n<p>&bull; L&yacute; tưởng cho những người h&acirc;m mộ tr&ograve; chơi tội phạm đ&iacute;ch thực cũng như những người y&ecirc;u th&iacute;ch LEGO&reg;, bộ lắp r&aacute;p n&agrave;y mang đến nhiều giờ tận hưởng v&agrave; trải nghiệm s&aacute;ng tạo sẽ thu h&uacute;t nhiều độ tuổi .</p>\r\n\r\n<p><strong><em>Th&ocirc;ng tin chi tiết:</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Chất liệu nhựa an to&agrave;n kh&ocirc;ng g&acirc;y hại cho sức khỏe khi sử dụng.</p>\r\n\r\n<p>- Độ tuổi ph&ugrave; hợp: 18+</p>\r\n\r\n<p>- Bộ gồm: 2923 chi tiết</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://vn-live-01.slatic.net/p/1490f8286c16dbe2ba499790b214a868.jpg\" style=\"height:auto; width:1346px\" /></p>\r\n\r\n<p><img src=\"https://vn-live-01.slatic.net/p/0c01a3b1f216356df1914094f8d5a7c6.jpg\" style=\"height:auto; width:1346px\" /></p>\r\n\r\n<p><img src=\"https://vn-live-01.slatic.net/p/182d8a94a3cc867fc6ea6c1ce0285c26.jpg\" style=\"height:auto; width:1346px\" /></p>\r\n\r\n<p><img src=\"https://vn-live-01.slatic.net/p/3c24a689fce4ad664891e7bcd5893123.jpg\" style=\"height:auto; width:1346px\" /></p>\r\n\r\n<p><img src=\"https://vn-live-01.slatic.net/p/1d8f7dd909beab9261c0a662481f25dc.jpg\" style=\"height:auto; width:1346px\" /></p>\r\n\r\n<p><img src=\"https://vn-live-01.slatic.net/p/7494815a22262d183312cb964e22789d.jpg\" style=\"height:auto; width:1346px\" /></p>\r\n\r\n<p><img src=\"https://vn-live-01.slatic.net/p/0074868b8cf7f1e09f6dc963b39ef40e.jpg\" style=\"height:auto; width:1346px\" /></p>\r\n', '2023-04-09', 0, 0, 'LEGO ADULTS'),
(230, 'LEGO Star Wars Millennium Falcon 7965', 8.947, '71XSK10rPrL._AC_UL600_FMwebp_QL65_.png', 20, '<p>Kids ages 9 to 14 will be happy the old man got the tractor beam out of commission when they blast off with the Millennium Falcon LEGO Star Wars Set. Straight from the Death Star escape scene of Episode IV: A New Hope, this replica of Han Solo&#39;s iconic starship is crafted from more than 1,200 LEGO pieces for a detailed, articulating display. With twin flick missiles, rotating laser cannons, and detachable cockpit cover, this Millennium Falcon set&#39;s got more than a few surprises left in it.</p>\r\n\r\n<p><br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Millennium Falcon</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Ages: 9 to 14 years</li>\r\n	<li>Pieces: 1,254</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At a Glance:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Detailed, articulating model ideal for Star Wars fans</li>\r\n	<li>Measures more than 15 inches wide and 4 inches tall</li>\r\n	<li>Includes six mini-figures to recreate scenes</li>\r\n	<li>Features opening hull, twin flick missiles, and rotating laser cannons</li>\r\n	<li>Opening cockpit with detailed interior provides more play options</li>\r\n</ul>\r\n\r\n<p><br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\nSix mini-figures from the movie let you recreate your favorite scenes. View larger.<br />\r\n<br />\r\n<br />\r\n<br />\r\nTop panels open up to reveal detailed interior of ship. View larger.<br />\r\n&nbsp;</p>\r\n\r\n<p>Detailed Design Features Articulating Panels and Turrets</p>\r\n\r\n<p>The numerous details on this modified Corellian Engineering Corporation YT-1300 freighter would impress even Luke Skywalker. Measuring more than 15 inches wide and 4 inches tall when completed, this model accurately depicts the famous Millennium Falcon, from its distinctive round shape to its right-hand cylindrical cockpit.</p>\r\n\r\n<p>Rotating top- and bottom-mounted quad-laser turrets, detachable cockpit cover, and firing twin flick rockets are just some of the cool features included in this model.</p>\r\n\r\n<p>Mini-Figures Let Kids Recreate Scenes</p>\r\n\r\n<p>This set includes LEGO mini-figures of Han Solo, Chewbacca, Obi-Wan Kenobi, Luke Skywalker, Princess Leia Organa, and Darth Vader, so you can replay your favorite scenes from the movie.</p>\r\n\r\n<p>Place figures outside the ship to have Obi-Wan and Vader duel, or place them inside the opening hull to play chess, hide in the smuggling compartments, or observe Luke&#39;s remote training. For enhanced play, the set includes three lightsabers, three blasters, and one crossbow.</p>\r\n\r\n<p>Building Your Own Millennium Falcon</p>\r\n\r\n<p>With 1,254 LEGO pieces, the Millennium Falcon took more than four hours for our testers to construct. Split between two adult builders, these hours provided a fun time to reminisce about favorite Star Wars moments.</p>\r\n\r\n<p>A large percentage of the pieces come in shades of gray, and approaching construction requires a bit of organization and discipline. Detailed step-by-step instructions help ensure that construction is a relatively straightforward process, despite the complexity of the finished model.</p>\r\n\r\n<p>As impressive as the finished model may be, our testers noted a few minor oversights worth mentioning. For starters, there are no mini-figures of C-3PO or R2D2 included, making the scene reconstruction feel incomplete. Also, only Han Solo and Chewbacca are capable of fitting in the cockpit. However, considering the amount of overall detail included in this model, any Star Wars fan would be delighted to proudly put it on display.</p>\r\n\r\n<p>What&#39;s in the Box</p>\r\n\r\n<p>LEGO Star Wars Millennium Falcon set (1,254 pieces), two instruction booklets, and sticker sheet.</p>\r\n\r\n<p><img src=\"https://m.media-amazon.com/images/I/61cf65IFrOL._AC_SX679_.jpg\" /></p>\r\n\r\n<p><img src=\"https://m.media-amazon.com/images/I/61LYJvxLnWL._AC_SX679_.jpg\" /></p>\r\n\r\n<p><img src=\"https://m.media-amazon.com/images/I/61q-bPtQ20L._AC_SX679_.jpg\" /></p>\r\n\r\n<p><img src=\"https://m.media-amazon.com/images/I/61roUTS5I7L._AC_SX679_.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2011-08-01', 0, 0, 'LEGO Star Wars'),
(231, 'Ulanlan Military Vehicle Building Blocks Sets with 6 Mini Sodiers', 552, '61H+liBUfZL._AC_SX679_.jpg', 20, '<ul>\r\n	<li>UNIQUE DESIGN -Easy-installation small bricks makes amazing 3D art Military Vehicle Car that fits in the palm of your hand. 2 visions of creative stickers can be choosed at will. 6 fully armed military soldiers ready to go. Detailed instruction included.</li>\r\n	<li>FUN ASSEMBLE -Build and experience a quintessential collectible model set! Immerse yourself in putting these blocks together, and feel proud of the delicate buildings you have built. 4 in 1 design, you can choose the model you prefer to build. Easily to transfer to another model.</li>\r\n	<li>HIGH QUALITY PLAY TIME -This building toy will inspires creativity and brain development. It also could enhance STEM ability. Perfect addition to any adult or kids&#39; blocks sets collection.</li>\r\n	<li>IDEAL GIFT -Let your imagination run wild the building toy. Creative building set is an ideal birthday or Xmas gift for kids. Teenagers and adults who are keen to DIY are also crazy for it. The military car measures over 4.72 in. (12 cm) high, 6.10 in. (15.5 cm) long and 2.56 in. (6.5 cm) wide &ndash; the perfect decent size to play with at home or to take to a friend&rsquo;s house.</li>\r\n	<li>SERVICE WARRANTY &ndash; 30-days-charge-back if you unsatisfy with purchase. Every blocks is picked up by machine, but if your sets are still missing pieces, please contact us for free replacement.</li>\r\n</ul>\r\n\r\n<h3>Black Hummer model car</h3>\r\n\r\n<p><img alt=\"1.\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/a99fdccd-4f6a-4322-acef-bc3eb9936c78.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"margin-bottom:14px !important\" /></p>\r\n\r\n<p>This is the best gift for children who like collecting cars.</p>\r\n\r\n<h3>Various forms can be changed</h3>\r\n\r\n<table style=\"width:969px\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"height:234px; text-align:center; vertical-align:middle; width:220px\">\r\n			<p><img alt=\"2.\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/3e008b0e-3e61-436b-b91f-27cd8c9cd88d.__CR0,0,300,300_PT0_SX220_V1___.jpg\" style=\"margin:0px auto\" /></p>\r\n			</th>\r\n			<th style=\"height:234px; text-align:center; vertical-align:middle; width:220px\">\r\n			<p><img alt=\"3.\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/ac7b8ffd-1e3c-4eb0-921a-686ce4116c0a.__CR0,0,300,300_PT0_SX220_V1___.jpg\" style=\"margin:0px auto\" /></p>\r\n			</th>\r\n			<th style=\"height:234px; text-align:center; vertical-align:middle; width:220px\">\r\n			<p><img alt=\"4.\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/5fd8f1cb-ff23-452a-88a3-0d8ed4e2b5b7.__CR0,0,300,300_PT0_SX220_V1___.jpg\" style=\"margin:0px auto\" /></p>\r\n			</th>\r\n			<th style=\"height:234px; text-align:center; vertical-align:middle; width:220px\">\r\n			<p><img alt=\"5.\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/406ff4fc-82db-48bc-b033-717109c7071d.__CR0,0,300,300_PT0_SX220_V1___.jpg\" style=\"margin:0px auto\" /></p>\r\n			</th>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:30.325px; vertical-align:top\">\r\n			<p>Styling 1</p>\r\n			</td>\r\n			<td style=\"height:30.325px; vertical-align:top\">\r\n			<p>Styling 2</p>\r\n			</td>\r\n			<td style=\"height:30.325px; vertical-align:top\">\r\n			<p>Styling 3</p>\r\n			</td>\r\n			<td style=\"height:30.325px; vertical-align:top\">\r\n			<p>Styling 4</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>Variety of forms and fun</h3>\r\n\r\n<p><img alt=\"6.\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/17888ee6-63ef-48f5-9444-7905f7d9e923.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"margin-bottom:14px !important\" /></p>\r\n\r\n<h3>Exquisite details and safe materials</h3>\r\n\r\n<table style=\"width:969px\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"height:234px; text-align:center; vertical-align:middle; width:220px\">\r\n			<p><img alt=\"7.\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/c5847379-c2f0-442e-ad35-993e811f0782.__CR0,0,220,220_PT0_SX220_V1___.jpg\" style=\"margin:0px auto\" /></p>\r\n			</th>\r\n			<th style=\"height:234px; text-align:center; vertical-align:middle; width:220px\">\r\n			<p><img alt=\"8.\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/71570654-7038-4d07-ba47-3b563ee54a4f.__CR0,0,220,220_PT0_SX220_V1___.jpg\" style=\"margin:0px auto\" /></p>\r\n			</th>\r\n			<th style=\"height:234px; text-align:center; vertical-align:middle; width:220px\">\r\n			<p><img alt=\"9.\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/f2b6a37c-100f-47d9-93e4-bb8d82b77522.__CR0,0,220,220_PT0_SX220_V1___.jpg\" style=\"margin:0px auto\" /></p>\r\n			</th>\r\n			<th style=\"height:234px; text-align:center; vertical-align:middle; width:220px\">\r\n			<p><img alt=\"10.\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/06f4fd57-aa38-46e2-8042-52f725718f33.__CR0,0,220,220_PT0_SX220_V1___.jpg\" style=\"margin:0px auto\" /></p>\r\n			</th>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:60.325px; vertical-align:top\">\r\n			<p>trunk</p>\r\n\r\n			<p>Free switching</p>\r\n			</td>\r\n			<td style=\"height:60.325px; vertical-align:top\">\r\n			<p>car door</p>\r\n\r\n			<p>Free switching</p>\r\n			</td>\r\n			<td style=\"height:60.325px; vertical-align:top\">\r\n			<p>Spare tire and tent</p>\r\n\r\n			<p>Free access</p>\r\n			</td>\r\n			<td style=\"height:60.325px; vertical-align:top\">\r\n			<p>Car hood</p>\r\n\r\n			<p>Free switching</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>Product size</h3>\r\n\r\n<p><img alt=\"11.\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/945cae61-64b2-493b-8499-0a378f120f8d.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"margin-bottom:14px !important\" /></p>\r\n\r\n<h3>2.56 in * 5.91 in * 5.12 in</h3>\r\n\r\n<p>Perfect design, suitable size, suitable for children&#39;s small hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2016-12-05', 0, 0, 'GUANGDONG KAIYU SCIENCE & EDUCATION CULTURE CO.,LTD'),
(232, 'LEGO Icons Chevrolet Camaro Z28 10304', 3.908, '10304-6.jpg', 20, '<p>Ready to push the limits of performance and style? Then start your creative engine. It&rsquo;s time to pay homage to a vintage classic with this Chevrolet Camaro Z28 (10304) model car building kit for adults. Take your time. This is an experience to savor. Make your choices. Create your perfect model. Then place on display to admire the impressive looks of an iconic car. Just like the classic 1969 Chevrolet Camaro Z28, this highly accurate collectible LEGO classic car model comes with a host of options so you can personalize your car, your way. With the roof or convertible? Classic or hideaway front headlights? White, grey or red racing stripes? The choice is yours. But this car&rsquo;s impressive looks are just the start. Authentic features of this American muscle car model include a detailed V8 engine, working steering and opening doors, plus opening hood and trunk. Build creativity. Build concentration. Build your dream vehicle collection with LEGO sets for Adults. Treat a lover of classic cars and vintage model cars to a special gift - great for birthdays. Model car measures over 3.5 in. (10 cm.) high, 14 in. (36 cm) long and 5.5 in. (14 cm) wide. Contains 1,458 Pieces.</p>\r\n\r\n<p><img alt=\"10304\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/c0ca2316-ac60-404b-9286-172a6e395a16.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"margin-bottom:14px !important\" /></p>\r\n\r\n<h3>Drive your passion</h3>\r\n\r\n<p>Travel back to the heyday of American muscle cars as you assemble and customize your own Chevrolet Camaro Z28.</p>\r\n\r\n<p><img alt=\"10304\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/6a9195db-57f7-4b20-9afe-44401951cb41.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"margin-bottom:14px !important\" /></p>\r\n\r\n<h3>Built for display</h3>\r\n\r\n<p>This car looks great from all angles, making it a display piece to cherish for anyone who loves muscle cars.</p>\r\n\r\n<h3>LEGO Chevrolet Camaro Z28</h3>\r\n\r\n<table style=\"width:969px\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"height:320px; text-align:center; vertical-align:middle; width:300px\">\r\n			<p><img alt=\"10304\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/c0963a75-4fb5-495a-8916-06468eef89eb.__CR0,0,1500,1500_PT0_SX300_V1___.jpg\" style=\"margin-bottom:6px !important\" /></p>\r\n			</th>\r\n			<th style=\"height:320px; text-align:center; vertical-align:middle; width:300px\">\r\n			<p><img alt=\"10304\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/bcaea424-e3ac-4195-bc8e-4cebeaba1d92.__CR0,0,1500,1500_PT0_SX300_V1___.jpg\" style=\"margin-bottom:6px !important\" /></p>\r\n			</th>\r\n			<th style=\"height:320px; text-align:center; vertical-align:middle; width:300px\">\r\n			<p><img alt=\"10304\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/432916b9-c087-43f6-b242-89ffa3a5921f.__CR0,0,1500,1500_PT0_SX300_V1___.jpg\" style=\"margin-bottom:6px !important\" /></p>\r\n			</th>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:84.325px; vertical-align:top\">\r\n			<p>Removable roof</p>\r\n\r\n			<p>Will you add the roof or build a convertible?</p>\r\n			</td>\r\n			<td style=\"height:84.325px; vertical-align:top\">\r\n			<p>Choose your stripes</p>\r\n\r\n			<p>White, gray or red racing stripes? The choice is yours.</p>\r\n			</td>\r\n			<td style=\"height:84.325px; vertical-align:top\">\r\n			<p>Headlight options</p>\r\n\r\n			<p>Choose from classic or hideaway front headlights.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"10304\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/c1afcb41-f70a-4a30-80bd-01d955fa6ec7.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"margin-bottom:14px !important\" /></p>\r\n\r\n<h3>Admire the details</h3>\r\n\r\n<p>True-to-life features include a detailed V8 engine, working steering and opening doors, plus an opening hood and trunk.</p>\r\n\r\n<p><img alt=\"10304\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/2e07e4ca-8832-4f68-8a8d-b8f4a6731235.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"margin-bottom:14px !important\" /></p>\r\n\r\n<h3>A gift for muscle car fans</h3>\r\n\r\n<p>Drive the passion with this building kit for adults. It makes a great gift idea for car lovers or a rewarding project for you.</p>\r\n', '2023-01-01', 0, 0, 'LEGO'),
(233, 'LEGO Pirates Imperial Flagship (10210) (Discontinued by manufacturer)', 37.95, '81oZHyw9IVL._AC_UL600_QL65_.jpg', 20, '<ul>\r\n	<li>Includes 9 minifigures: The ship&#39;s captain, his daughter, a pirate captain prisoner with shackles, the ship&#39;s cook, a lieutenant, and 4 soldiers; amazingly detailed and realistic ship features 3 removable sections</li>\r\n	<li>Main hull contains 4 firing cannons, ammunition crates, muskets, torches, cannonballs, prison with a rat, saw shark minifigurehead, a moving rudder and a fully-equipped ship?s kitchen with fish, turkey legs and a carrot</li>\r\n	<li>Raise and lower the working anchor; open the front deck&#39;s working doors and play inside; Imperial Flagship is equipped with masts and rigging</li>\r\n	<li>Open the back house deck&#39;s doors to reveal the captain?s chambers complete with a map, poison bottle, organ and even a treasure chest filled with jewels and gold; features 6 opening windows, a telescope and sextant as well as 3 deck lanterns</li>\r\n	<li>1,664 pieces</li>\r\n</ul>\r\n\r\n<p><img src=\"https://m.media-amazon.com/images/I/81abPWR5-YL._AC_SX679_.jpg\" /></p>\r\n\r\n<p><img src=\"https://m.media-amazon.com/images/I/91jxd8LprvL._AC_SX679_.jpg\" /></p>\r\n', '2018-08-25', 1, 36, 'Lego'),
(234, 'NERF Ultra Strike Motorized Blaster', 1.034, '61NfL0n7uPL._AC_UL600_FMwebp_QL65_.png', 23, '<ul>\r\n	<li>MOTORIZED 10-DART BLASTING: Charge into competitive Nerf games with the motorized Nerf Ultra Strike blaster that fires 10 darts in a row . Requires 6x 1.5v AA alkaline batteries (not included)</li>\r\n	<li>THE MOST ACCURATE NERF ULTRA DARTS: Includes 10 Nerf AccuStrike Ultra darts, the most accurate Nerf Ultra darts. Blaster compatible only with Nerf Ultra darts</li>\r\n	<li>CLIP-FED BLASTING: The Nerf Ultra Strike blaster includes a 10-dart clip so you can power into clip-fed dart blasting. Darts and clip compatible only with Nerf Ultra blasters</li>\r\n	<li>POWER UP AND START BLASTING: Load the clip into the blaster, hold down the acceleration button to rev up the motor, and pull the trigger to unleash 1 dart</li>\r\n</ul>\r\n\r\n<p>Power into motorized 10-dart blasting with the Nerf Ultra Strike blaster! You have the advantage in battle with this blaster that includes 10 Nerf AccuStrike Ultra darts, the most accurate Nerf Ultra darts. The blaster comes with a removable 10-dart clip so you can unleash 10 darts in a row at your opponents. Strike fast and strike with accuracy as you challenge the competition in Nerf games. Take the lead in Nerf battles as you leverage the power, performance, and accuracy of the Nerf Ultra Strike blaster. Load the clip into the blaster, hold down the acceleration button to power up the motor, and pull the trigger to blast 1 dart. Nerf Ultra blasters work only with Nerf Ultra darts. Nerf Ultra clips are compatible only with Nerf Ultra blasters and Nerf Ultra darts. Eyewear recommended (not included). Requires 6x 1.5v AA alkaline batteries (not included). Nerf and all related properties are trademarks of Hasbro.</p>\r\n\r\n<p><img src=\"https://m.media-amazon.com/images/I/81sN2eyP1AL._AC_SL1500_.jpg\" /></p>\r\n\r\n<p><img src=\"https://m.media-amazon.com/images/I/61OS4A6G9ZL._AC_SL1500_.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://m.media-amazon.com/images/I/81XLyGzjOyL._AC_SL1500_.jpg\" /></p>\r\n', '2022-05-01', 1, 436, 'Hasbro'),
(235, 'Nerf Rival Nemesis MXVII-10K, Red', 2.552, '71HpBSSFNJL._AC_UL600_FMwebp_QL65_.png', 23, '<p>Experience intense head-to-head competition with the precision and power of the Nerf Rival Nemesis MXVII-10K blaster. This fully motorized blaster has a high-capacity hopper that holds up to 100 high-impact rounds. Fill the easy-loading hopper and unleash a blistering blast of rounds at a velocity of 100 feet per second (30 meters per second). The blaster is available in blue and red (each sold separately), so choose a color and go into battle as Team Red or Team Blue. Power it with batteries or the Nerf Rival Rechargeable Battery Pack (batteries not included and battery pack sold separately). Includes 100 high-impact rounds. Experience the intensity of Nerf Rival with the Nemesis MXVII-10K blaster! Nerf and all related properties are trademarks of Hasbro.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2017-06-28', 0, 0, 'Hasbro'),
(236, 'Melissa & Doug Mine to Love Jenna 12-Inch Soft Body Baby Doll', 758, '61zFECxDt4L._AC_UL600_FMwebp_QL65_.png', 21, '<ul>\r\n	<li>Sweet baby cheeks and soft, cuddly body inspire kids for hours of pretend play</li>\r\n	<li>Wipe-clean arms and legs</li>\r\n	<li>Removable smocked romper and matching cap</li>\r\n	<li>Eyes open and close, and able to suck thumb or pacifier</li>\r\n	<li>Certified Frustration-Free packaging -- plain brown Melissa &amp; Doug box, less packaging, easy to open</li>\r\n</ul>\r\n\r\n<p><img src=\"https://m.media-amazon.com/images/I/71CbS5tZLNL._AC_SL1500_.jpg\" /></p>\r\n\r\n<p><img src=\"https://m.media-amazon.com/images/I/91SZ48-xKcL._AC_SL1500_.jpg\" /></p>\r\n\r\n<p><img src=\"https://m.media-amazon.com/images/I/61FxUWDWt4L._AC_SL1500_.jpg\" /></p>\r\n', '2018-08-21', 1, 551, 'Melissa & Doug'),
(237, 'Disney Encanto Dolores Mirabel Fashion Doll 11 Inches', 298, '71qGQpWSx8L._AC_UL600_FMwebp_QL65_.png', 19, '<ul>\r\n	<li>Relive your favorite scenes and story moments!</li>\r\n	<li>Includes iconic hair bow, earrings, necklace, and espadrille shoes to complete Dolores&rsquo; signature look</li>\r\n	<li>Doll features Dolores gorgeous curly hairstyle from the film for added play</li>\r\n	<li>Doll is 11 inches tall, and articulated at the neck, shoulders, and hips, perfect for posing!</li>\r\n	<li>Suggested for kids ages 3 years and up</li>\r\n</ul>\r\n\r\n<p><img src=\"https://m.media-amazon.com/images/I/61HZixhazZL._AC_SX679_.jpg\" /></p>\r\n', '2020-06-30', 1, 229, 'Jakks Pacific Inc.'),
(238, 'NERF Modulus Recon MKIII Blaster, Removable Stock and Barrel Extension, Dart Shield', 764, '61iDHWtnDyS._AC_UL600_FMwebp_QL65_.png', 23, '<ul>\r\n	<li>4-IN-1 CUSTOMIZING WITH INCLUDED STOCK AND BARREL: Customize the Nerf Modulus Recon MKIII blaster with the removable stock and barrel extension to create 4 different blaster configurations. Customizable Nerf attachments.</li>\r\n	<li>DART SHIELD: Includes a dart shield that attaches to the blaster to create a defensive barrier against oncoming darts. Defensive Nerf accessories for battle.</li>\r\n	<li>INCLUDES 12-DART CLIP AND 12 NERF DARTS: Fire 12 darts in a row! The Nerf Recon MKIII dart blaster comes with a 12-dart clip and 12 Official Nerf Elite foam darts that are great for indoor and outdoor battles</li>\r\n	<li>FIRES DARTS UP TO 90 FEET (27 METERS): Take on targets up to 90 feet (27 meters) away with the Amazon exclusive Nerf Modulus Recon MKIII blaster. With that distance, It makes it one of the coolest sports &amp; outdoor play toys for 8 year old boys and girls and up.</li>\r\n	<li>SUSTAINABLE PACKAGING: Ships in simple, recyclable packaging that&rsquo;s easy to open and frustration free</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '2021-07-01', 0, 0, 'Hasbro');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_chi_tiet_hoadon`),
  ADD KEY `chitiethoadon` (`sodh`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`madv`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`sodh`);

--
-- Chỉ mục cho bảng `loginadmin`
--
ALTER TABLE `loginadmin`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- Chỉ mục cho bảng `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`Ten`),
  ADD KEY `sanpham` (`Manhasx`),
  ADD KEY `giakhuyenmai` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_2` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_3` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_4` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_5` (`giakhuyenmai`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `Ten_2` (`Ten`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_chi_tiet_hoadon` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `madv` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `sodh` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon` FOREIGN KEY (`sodh`) REFERENCES `hoadon` (`sodh`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham` FOREIGN KEY (`Manhasx`) REFERENCES `nhaxuatban` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
