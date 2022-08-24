-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 16, 2022 at 03:47 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanaonam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$DnodTevmz9cIQrzlyKal1eeaYzK2CDgoWBvNNa5kX2AQASCNVf2vS', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `seo_title` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `status`, `seo_title`, `seo_description`, `seo_keyword`, `created_at`, `updated_at`) VALUES
(12, 'ÁO POLO', 'ao-polo', 0, 1, 'ÁO POLO', 'ÁO POLO', 'ÁO POLO', '2021-05-21 21:43:10', '2022-01-22 21:14:13'),
(13, 'ÁO KHOÁC NAM', 'ao-khoac-nam', 0, 1, 'ÁO KHOÁC NAM', 'ÁO KHOÁC NAM', 'ÁO KHOÁC NAM', '2021-05-21 22:20:33', '2022-01-22 21:14:28'),
(14, 'QUẦN NAM', 'quan-nam', 0, 1, 'QUẦN NAM', 'QUẦN NAM', 'QUẦN NAM', '2021-05-21 22:32:10', '2022-01-22 21:14:41'),
(15, 'ÁO THUN NAM CỔ TRÒN', 'ao-thun-nam-co-tron', 0, 1, 'ÁO THUN NAM CỔ TRÒN', 'ÁO THUN NAM CỔ TRÒN', 'ÁO THUN NAM CỔ TRÒN', '2021-05-21 22:38:24', '2022-01-22 21:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Trương Quang Việt', 'truongvietbg@gmail.com', '0359334045', 'Web rất tốt', '2020-07-03 16:14:57', '2020-07-03 16:14:57'),
(3, 'truong quang viet', 'truongvietbg@gmail.com', '0359334045', 'noi dung', '2021-05-21 18:33:59', '2021-05-21 18:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'truong quang viet', 'truongvietbg@gmail.com', NULL, '$2y$10$V41w.PaxVzwWECzKAlg01ejUVFu8ZrLaFof2NwHqEDKiquntm8XKm', NULL, '2021-05-21 13:21:32', '2021-05-21 13:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `type` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `vnp_TxnRef` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `qty`, `total`, `status`, `type`, `note`, `name`, `phone`, `email`, `address`, `vnp_TxnRef`, `created_at`, `updated_at`) VALUES
(44, 1, 1185000, 0, 'cod', 'Ghi chú', 'truong quang viet', '0359334045', NULL, 'HN', NULL, '2022-06-16 03:59:26', '2022-06-16 03:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `pro_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `qty`, `pro_id`, `order_id`, `created_at`, `updated_at`) VALUES
(20, 3, 36, 44, '2022-06-16 03:59:26', '2022-06-16 03:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `hot` tinyint(4) NOT NULL DEFAULT '0',
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `description`, `hot`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Cách lái xe tiết kiệm xăng', 'cach-lai-xe-tiet-kiem-xang', '<p>Trong thời buổi xăng tăng gi&aacute; như hiện nay, việc l&agrave;m sao để tiết kiệm xăng để giảm bớt chi ph&iacute; cho t&uacute;i tiền của m&igrave;nh l&agrave;m c&aacute;c l&aacute;i xe &ocirc; t&ocirc; hết sức quan t&acirc;m. Xin giới thiệu 10 mẹo để tiết kiệm xăng đối với &ocirc; t&ocirc;.</p>\r\n\r\n<p><img alt=\"\" src=\"http://caronline.com.vn/Image.ashx/image=jpeg/0dea9cb490d74e5cbc3ecd84f0eb4da9-car-save-gas-lg.jpg/car-save-gas-lg.jpg\" /><br />\r\n<br />\r\n1. Lốp phải lu&ocirc;n căng hơi<br />\r\n<br />\r\nGiữ cho lốp xe trong t&igrave;nh trạng đủ hơi l&agrave; một trong những c&aacute;ch tốt nhất để tiết kiệm nhi&ecirc;n liệu, đồng thời đ&oacute; l&agrave; c&aacute;ch để đảm bảo an to&agrave;n t&iacute;nh mạng cho người sử dụng xe bởi lốp xe non. Bơm cho lốp xe đạt đến ngưỡng tối đa theo đề nghị của nh&agrave; sản xuất. C&aacute;c l&aacute;i xe n&ecirc;n kiểm tra &iacute;t nhất một th&aacute;ng một lần.<br />\r\n<br />\r\nNếu c&oacute; hiện tượng yếu hơi th&igrave; phải bơm ngay kh&ocirc;ng n&ecirc;n chần chừ. Trước khi cho xe lăn b&aacute;nh tr&ecirc;n đường, cần sử dụng m&aacute;y đo &aacute;p suất kỹ thuật số để kiểm tra độ căng. Lốp no hơi sẽ vừa gi&uacute;p cho xe chạy &ecirc;m &aacute;i lại vừa vận h&agrave;nh tối ưu.<br />\r\n<br />\r\n2. L&aacute;i ở tốc độ vừa phải<br />\r\n<br />\r\nL&aacute;i xe n&ecirc;n ch&uacute; &yacute; tr&aacute;nh l&aacute;i tốc độ cao tr&ecirc;n những con đường gồ ghề, gập ghềnh. Tr&ecirc;n đường cao tốc, mức ti&ecirc;u thụ nhi&ecirc;n liệu khi xe đi ở tốc độ dưới 100 km/h v&agrave; tr&ecirc;n 100km/h l&agrave; rất kh&aacute;c nhau, c&oacute; thể ch&ecirc;nh nhau 10% hoặc hơn t&ugrave;y từng loại xe.<br />\r\n<br />\r\nThay v&igrave; việc li&ecirc;n tục đứng khựng v&agrave; tăng tốc đột ngột, đặc biệt ở những đoạn đ&egrave;n giao th&ocirc;ng, người l&aacute;i n&ecirc;n ước lượng khoảng c&aacute;ch với đ&egrave;n đỏ v&agrave; lưu lượng người tham gia giao th&ocirc;ng đằng trước để xe giữ được vận tốc đều. Tuy nhi&ecirc;n, kh&ocirc;ng phải cứ vận tốc thấp l&agrave; c&oacute; thể tiết kiệm xăng. Theo c&aacute;c chuy&ecirc;n gia về xe hơi th&igrave; vận tốc xuống dưới 50 km/h l&agrave;m tốn th&ecirc;m 10% nhi&ecirc;n liệu.<br />\r\n<br />\r\n3. Hạn chế sử dụng điều h&ograve;a<br />\r\n<br />\r\nNếu như thời tiết dễ chịu, người sử dụng n&ecirc;n tắt điều h&ograve;a. Việc n&agrave;y sẽ gi&uacute;p tiết kiệm được năng lượng cho xe. Điều ho&agrave; kh&ocirc;ng kh&iacute; c&oacute; thể ti&ecirc;u tốn 10% nhi&ecirc;n liệu. Tuy nhi&ecirc;n, ở tốc độ tr&ecirc;n 80km/h sử dụng điều ho&agrave; kh&ocirc;ng kh&iacute; tốt hơn cho việc mở một cửa sổ.</p>\r\n\r\n<p><img alt=\"\" src=\"http://media.thethaovanhoa.vn/Images/Uploaded/Share/2010/04/14/oto.jpg\" style=\"width:450px\" /><br />\r\nHạn chế sử dụng điều h&ograve;a l&agrave; một c&aacute;ch tiết kiệm xăng hiệu quả. Ảnh chỉ c&oacute; t&iacute;nh chất minh họa</p>\r\n\r\n<p>4. Tắt động cơ khi kh&ocirc;ng sử dụng<br />\r\n<br />\r\nKhi chiếc xe dừng lại hoặc tạm ngừng hoạt động th&igrave; n&ecirc;n tắt động cơ để nhằm giảm hao ph&iacute; nhi&ecirc;n liệu v&ocirc; &iacute;ch. Tr&aacute;nh việc h&acirc;m n&oacute;ng động cơ qu&aacute; l&acirc;u (v&iacute; dụ như tới 30-45 gi&acirc;y) v&agrave; tr&aacute;nh việc để động cơ chạy một c&aacute;ch nh&agrave;n rỗi.<br />\r\n<br />\r\n5. Sử dụng chế độ cruise control<br />\r\n<br />\r\nĐ&acirc;y l&agrave; một hệ thống kiểm so&aacute;t vận tốc tự động. V&iacute; dụ, khi c&agrave;i đặt ở tốc độ 112km/h tr&ecirc;n đường cao tốc, m&aacute;y t&iacute;nh sẽ t&iacute;nh to&aacute;n v&agrave; điều chỉnh van tiết lưu để duy tr&igrave; tốc độ ấy, gi&uacute;p tiết kiệm nhi&ecirc;n liệu cho xe. Hiệu quả hơn nữa l&agrave; hệ thống Adaptive Cruise, sử dụng ra-đa để giữ khoảng c&aacute;ch với xe đằng sau v&agrave; đằng trước.<br />\r\n<br />\r\n6. L&agrave;m sạch bộ lọc kh&ocirc;ng kh&iacute; thường xuy&ecirc;n<br />\r\n<br />\r\nT&igrave;nh trạng bộ lọc kh&ocirc;ng kh&iacute; trong xe bị nghẽn sẽ g&acirc;y tốn nhi&ecirc;n liệu. Theo t&iacute;nh to&aacute;n của chuy&ecirc;n gia, nếu bộ lọc bị tắc l&agrave;m tốn 10% nhi&ecirc;n liệu. Bộ lọc kh&iacute; rất dễ th&aacute;o rời. H&atilde;y vệ sinh v&agrave; phơi dưới &aacute;nh nắng mặt trời, nếu kh&ocirc;ng thấy &aacute;nh s&aacute;ng xuy&ecirc;n qua n&oacute; th&igrave; c&oacute; nghĩa l&agrave; cần phải thay bộ lọc mới. Nếu bộ lọc bị nghẽn nhiều lần n&ecirc;n thay bộ lọc mới để đảm bảo cho qu&aacute; tr&igrave;nh lọc kh&ocirc;ng kh&iacute; được th&ocirc;ng suốt v&agrave; tiết kiệm nhi&ecirc;n liệu.<br />\r\n<br />\r\n7. Nhấn ga từ từ<br />\r\n<br />\r\nNhiều người vẫn c&ograve;n c&oacute; th&oacute;i quen đạp mạnh ch&acirc;n ga nhằm tăng tốc đột ngột cho chiếc xe, đồng thời trước khi đỗ xe vẫn giữ ở tốc độ cao rồi phanh đột ngột. Điều n&agrave;y c&oacute; thể mang lại cảm gi&aacute;c mạnh cho người l&aacute;i, tuy nhi&ecirc;n n&oacute; cũng ch&iacute;nh l&agrave; thủ phạm &ldquo;m&oacute;c&rdquo; khỏi t&uacute;i tiền của bạn một khoản nho nhỏ khi cộng dồn lại.<br />\r\n<br />\r\nDo đ&oacute;, cố gắng nhấn ga từ từ khi xuất ph&aacute;t v&agrave; trước khi dừng xe, cần duy tr&igrave; khoảng c&aacute;ch an to&agrave;n giữa c&aacute;c phương tiện v&agrave; ph&aacute;n đo&aacute;n điều kiện giao th&ocirc;ng để kịp tăng ga v&agrave; nhấn phanh đều đặn.<br />\r\n<br />\r\n8. X&acirc;y dựng lịch tr&igrave;nh trước<br />\r\n<br />\r\nTrước khi bắt đầu đi đ&acirc;u, l&aacute;i xe n&ecirc;n t&iacute;nh to&aacute;n trước lịch tr&igrave;nh sẽ đi, thời gian đi để tr&aacute;nh t&igrave;nh trạng l&ograve;ng v&ograve;ng, nhầm đường hay lạc đường g&acirc;y ra nhiều điều phiền to&aacute;i hoặc tốn nhi&ecirc;n liệu.<br />\r\n<br />\r\n9. Kh&ocirc;ng mang qu&aacute; nhiều đồ đạc<br />\r\n<br />\r\nNếu kh&ocirc;ng cần thiết trong h&agrave;nh tr&igrave;nh kh&ocirc;ng n&ecirc;n mang nhiều đồ đạc, chỉ mang theo những thứ cần thiết. Những thứ kh&ocirc;ng cần thiết kh&ocirc;ng n&ecirc;n đưa l&ecirc;n xe. Bởi v&igrave;, cứ 50 kg h&agrave;nh l&yacute; sẽ ti&ecirc;u tốn th&ecirc;m 2% nhi&ecirc;n liệu v&agrave; g&acirc;y l&atilde;ng ph&iacute; nhi&ecirc;n liệu một c&aacute;ch kh&ocirc;ng cần thiết.<br />\r\n<br />\r\n10. Đổ xăng l&uacute;c n&agrave;o?<br />\r\n<br />\r\nMua xăng v&agrave;o s&aacute;ng sớm hoặc chiều tối, đ&acirc;y l&agrave; thời điểm xăng đặc nhất. Kh&ocirc;ng n&ecirc;n đổ qu&aacute; đầy l&agrave;m cho xăng bị r&ograve; ra ngo&agrave;i g&acirc;y nguy hiểm.</p>', '<p>Trong thời buổi xăng tăng gi&aacute; như hiện nay, việc l&agrave;m sao để tiết kiệm xăng để giảm bớt chi ph&iacute; cho t&uacute;i tiền của m&igrave;nh l&agrave;m c&aacute;c l&aacute;i xe &ocirc; t&ocirc; hết sức quan t&acirc;m. Xin giới thiệu 10 mẹo để tiết...</p>', 1, '1593762831_xang.jpg', '2020-07-03 00:53:51', '2020-07-03 01:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot` tinyint(4) NOT NULL DEFAULT '0',
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `promotion` tinyint(4) NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT '0',
  `supplier` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `cate_id`, `price`, `slug`, `image`, `description`, `hot`, `seo_title`, `seo_description`, `seo_keyword`, `status`, `promotion`, `qty`, `supplier`, `created_at`, `updated_at`) VALUES
(27, 'Áo polo nam tay raglan phối màu', 12, 325000, 'ao-polo-nam-tay-raglan-phoi-mau', '1642912276_ao-polo-nam-tay-raglan-phoi-mau-hi-ao-thun-nam-co-be-cao-cap-chat-cotton-9.jpg', '<p>Trong cuộc sống đầy m&agrave;u sắc như thế n&agrave;y,&nbsp;<strong>chiếc &aacute;o thun Polo nam tay raglan phối m&agrave;u</strong>&nbsp;được Hiddle thiết kế đầy tinh tế. Khi &quot;fix&quot; ho&agrave;n hảo m&agrave;u trắng chủ đạo với m&agrave;u xanh đen kh&ocirc;ng qu&aacute; nổi bật, tạo n&ecirc;n sự h&ograve;a hợp đến ho&agrave;n hảo cho mẫu &aacute;o Polo nam tay Raglan n&agrave;y. Ngo&agrave;i ra, &aacute;o polo tay Raglan phối m&agrave;u to&aacute;t l&ecirc;n được n&eacute;t đẹp thanh lịch v&agrave; sang trọng cho người mặc. Với những t&iacute;n đồ thời trang nam c&aacute; t&iacute;nh say m&ecirc; những bảng m&agrave;u đơn sắc, những đồ vật basic, th&igrave; mẫu &aacute;o thun nam Polo tay Raglan phối m&agrave;u l&agrave; item m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua.</p>\r\n\r\n<p>Mẫu &aacute;o thun Polo nam tay Raglan rất tiện dụng bởi m&agrave;u sắc &aacute;o kh&aacute; đơn giản, căn bản, h&agrave;i h&ograve;a kh&ocirc;ng lo bị lỗi mốt thời trang. V&agrave; dễ d&agrave;ng phối c&ugrave;ng với nhiều loại phụ kiện, quần &aacute;o, gi&agrave;y d&eacute;p hay mặc được ở mọi ho&agrave;n cảnh kh&aacute;c nhau. V&igrave; vậy m&agrave; mẫu &aacute;o thun nam Polo tay Raglan phối m&agrave;u của Hiddle rất được nhiều kh&aacute;ch h&agrave;ng Việt y&ecirc;u chuộng v&agrave; lựa chọn.&nbsp;</p>\r\n\r\n<p>- Form d&aacute;ng &aacute;o Polo nam Hiddle tay Raglan phối m&agrave;u đẹp v&agrave; vừa vặn với h&igrave;nh thể đ&agrave;n &ocirc;ng Việt.&nbsp;</p>\r\n\r\n<p>- Size: Mẫu &aacute;o n&agrave;y c&oacute; 3 size S,M,L gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; thể dễ d&agrave;ng lựa chọn size &aacute;o Raglan tay ngắn ph&ugrave; hợp với m&igrave;nh.&nbsp;</p>\r\n\r\n<p>- Chất vải: Hiddle rất tinh tế trong kh&acirc;u lựa chọn chất vải thun c&aacute; sấu, co gi&atilde;n linh hoạt, d&agrave;y dặn nhưng vẫn giữ được độ mềm mại tự nhi&ecirc;n cho &aacute;o Polo nam tay Raglan cổ bẻ phối m&agrave;u HIDDLE. Gi&uacute;p người sử dụng &aacute;o Polo nam tay Raglan c&oacute; cổ thoải m&aacute;i, kh&ocirc;ng bị g&ograve; b&oacute; khi vận động trong mọi hoạt động. Ngo&agrave;i ra, chất vải thun c&aacute; sấu được sử dụng cho mẫu &aacute;o n&agrave;y c&ograve;n gi&uacute;p&nbsp;<a href=\"https://quanaonam.vn/\">&aacute;o Polo nam</a>&nbsp;bền đẹp, kh&ocirc;ng lo bị bong tr&oacute;c v&agrave; sờn r&aacute;ch trong khi giặt giũ hoặc ủi &aacute;o. Gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng giặt v&agrave; bảo quản &aacute;o Polo nam tay Raglan phối m&agrave;u của Hiddle.</p>', 1, NULL, NULL, NULL, 1, 0, 10, NULL, '2021-05-21 21:54:18', '2022-01-22 21:31:16'),
(28, 'Áo polo nam sọc ngang HIDDLE - ELE Đen', 12, 395000, 'ao-polo-nam-soc-ngang-hiddle-ele-den', '1642912162_2-1.jpg', '<p>Mẫu &aacute;o polo nam sọc ngang Hiddle Ele m&agrave;u đen c&oacute; thể gi&uacute;p bạn biến đổi được nhiều phong c&aacute;ch từ chỉn chu, lịch thiệp cho đến trẻ trung, ph&oacute;ng kho&aacute;ng. D&ugrave; l&agrave; trong dịp n&agrave;o hoặc đi đến bất cứ nơi đ&acirc;u nếu bạn muốn tạo được dấu ấn ri&ecirc;ng về c&aacute;ch ăn mặc với mọi người xung quanh, th&igrave; h&atilde;y thử sắm ngay một item &aacute;o Polo nam sọc ngang Hiddle Đen trong tủ đồ của m&igrave;nh nh&eacute;. Khi bạn biết kết hợp&nbsp;<a href=\"https://quanaonam.vn/\">&aacute;o polo nam Hiddle</a>&nbsp;c&ugrave;ng với nhiều loại trang phục v&agrave; phụ kiện kh&aacute;c nhau, sẽ khiến bản th&acirc;n trở n&ecirc;n mới mẻ, nổi bật v&agrave; thu h&uacute;t hơn trong mắt mọi người.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/399/392/files/ao-polo-soc-ngang-nam-hiddle.jpg?v=1634884717017\" /></p>\r\n\r\n<h2><strong>M&Ocirc; TẢ CHI TIẾT &Aacute;O POLO SỌC NGANG NAM HIDDLE ELE ĐEN</strong></h2>\r\n\r\n<p>- Chất liệu vải được Hiddle sử dụng may cho &aacute;o Polo nam sọc ngang HIDDLE ELE Đen l&agrave; cotton c&aacute; sấu co gi&atilde;n 4 chiều si&ecirc;u tốt,c&ugrave;ng với khả năng tho&aacute;ng kh&iacute; nhờ c&aacute;c mắt vải to. Đem đến cho người sử dụng cảm gi&aacute;c m&aacute;t mẻ, mềm mại. Mẫu &aacute;o n&agrave;y c&ograve;n c&oacute; khả năng thấm h&uacute;t mồ h&ocirc;i cao, kh&ocirc;ng bị nhăn. Gi&uacute;p kh&aacute;ch h&agrave;ng sử dụng &aacute;o c&oacute; thể thoải m&aacute;i hoạt động m&agrave; kh&ocirc;ng sợ lưu lại mồ h&ocirc;i tr&ecirc;n &aacute;o.</p>\r\n\r\n<p>- Hiddle c&ograve;n sử dụng c&ocirc;ng nghệ in su cho Logo cao cấp gi&uacute;p h&igrave;nh in ở tr&ecirc;n &aacute;o được chắc chắn v&agrave; sắc n&eacute;t. Đ&acirc;y l&agrave; điểm cộng cho mẫu &aacute;o polo sọc ngang của Hiddle, gi&uacute;p kh&aacute;ch h&agrave;ng y&ecirc;n t&acirc;m hơn, kh&ocirc;ng c&ograve;n phải lo h&igrave;nh in sẽ bị bong tr&oacute;c hay sờn r&aacute;ch.</p>\r\n\r\n<p>- H&igrave;nh kẻ ngang trước ngực được thiết kế đơn giản với 2 m&agrave;u sắc nổi bật đỏ v&agrave; xanh tạo điểm nhấn ri&ecirc;ng cho &aacute;o thun nam sọc ngang Polo Hiddle Ele v&agrave; tăng th&ecirc;m phần trẻ trung, c&aacute; t&iacute;nh cho c&aacute;c ch&agrave;ng trai.</p>\r\n\r\n<p>- Mẫu &aacute;o n&agrave;y l&ecirc;n form si&ecirc;u đẹp, vừa vặn với h&igrave;nh thể nam giới Việt, n&ecirc;n rất được c&aacute;c t&iacute;n đồ thời trang Việt lựa chọn.</p>\r\n\r\n<p>- Ngo&agrave;i ra, mẫu &aacute;o n&agrave;y cực kỳ dễ phối đồ do thiết kế &aacute;o basic n&ecirc;n khi kết hợp c&ugrave;ng phụ kiện hay trang phục kh&aacute;c dễ tạo ra một outfit đẹp, h&agrave;i h&ograve;a v&agrave; thu h&uacute;t mọi &aacute;nh nh&igrave;n, kh&ocirc;ng lo bị lỗi mốt. D&ugrave; bạn mặc &aacute;o Polo đen kẻ ngang ở đ&acirc;u th&igrave; cũng sẽ ph&ugrave; hợp bởi t&iacute;nh tiện dụng của n&oacute; mang lại cho người sử dụng.</p>\r\n\r\n<p>- &Aacute;o thun nam sọc ngang Polo được Hiddle tung ra thị trường 2 m&agrave;u sắc: Trắng v&agrave; Đen cực kỳ basic v&agrave; dễ phối đồ.</p>\r\n\r\n<p>- Sản phẩm &aacute;o Polo đen kẻ ngang sản xuất v&agrave; ph&acirc;n phối độc quyền từ Hiddle Việt Nam. Hiện nay tr&ecirc;n Shopee mẫu &aacute;o đang c&oacute; chương tr&igrave;nh khuyến m&atilde;i tri &acirc;n kh&aacute;ch h&agrave;ng đ&atilde; tin tưởng Hiddle trong thời gian qua n&ecirc;n được Sale với deal hời chỉ 175.000 VNĐ l&agrave; bạn c&oacute; thể sắm ngay em n&oacute;. Gi&aacute; gốc mẫu &aacute;o n&agrave;y tới 290.000 VNĐ ngại g&igrave; m&agrave; kh&ocirc;ng mau mau nhấn v&agrave;o link ở b&ecirc;n dưới để được mua &aacute;o với gi&aacute; sale si&ecirc;u rẻ như vậy.</p>\r\n\r\n<p><a href=\"https://shopee.vn/%C3%81o-thun-nam-c%E1%BB%95-b%E1%BA%BB-BASIC-v%E1%BA%A3i-c%C3%A1-s%E1%BA%A5u-Cotton-tr%E1%BA%BB-trung-nhi%E1%BB%81u-m%C3%A0u-HIDDLE-3011207-3011208-i.275570035.8251662864\">https://shopee.vn/%C3%81o-thun-nam-c%E1%BB%95-b%E1%BA%BB-BASIC-v%E1%BA%A3i-c%C3%A1-s%E1%BA%A5u-Cotton-tr%E1%BA%BB-trung-nhi%E1%BB%81u-m%C3%A0u-HIDDLE-3011207-3011208-i.275570035.8251662864</a></p>\r\n\r\n<h2><strong>K&Iacute;CH THƯỚC &Aacute;O POLO NAM SỌC NGANG HIDDLE&nbsp;</strong><strong>M&Agrave;U ĐEN</strong></h2>\r\n\r\n<p>Hiddle sẽ cung cấp bảng size &aacute;o thun nam sọc ngang c&oacute; cổ m&agrave;u đen ở dưới đ&acirc;y, hy vọng sẽ gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; thể lựa chọn được form &aacute;o đ&uacute;ng nhất.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Size S</strong>&nbsp;&aacute;o polo kẻ ngang m&agrave;u đen Hiddle: Chiều dọc ( từ cổ &aacute;o ) 66cm, chiều ngang ( giữa th&acirc;n &aacute;o) 50cm, chiều d&agrave;i tay &aacute;o ( từ vai &aacute;o ) 20,5cm.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Size M</strong>&nbsp;&aacute;o polo kẻ ngang m&agrave;u đen Hiddle: Chiều dọc ( từ cổ &aacute;o ) 72cm, chiều ngang ( giữa th&acirc;n &aacute;o) 50cm, chiều d&agrave;i tay &aacute;o ( từ vai &aacute;o ) 22cm.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Size L</strong>&nbsp;&aacute;o polo kẻ ngang m&agrave;u đen Hiddle: Chiều dọc ( từ cổ &aacute;o ) 73cm, chiều ngang ( giữa th&acirc;n &aacute;o) 53cm, chiều d&agrave;i tay &aacute;o ( từ vai &aacute;o ) 23cm.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Size XL</strong>&nbsp;&aacute;o polo kẻ ngang m&agrave;u đen Hiddle: Chiều dọc ( từ cổ &aacute;o ) 75cm, chiều ngang ( giữa th&acirc;n &aacute;o) 54cm, chiều d&agrave;i tay &aacute;o ( từ vai &aacute;o ) 24cm.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Gợi &yacute;:</strong>&nbsp;Bạn mẫu trong h&igrave;nh mặc &aacute;o polo sọc ngang nam m&agrave;u đen mặc size L c&oacute; chiều cao 1m75, nặng 68 kg.</p>\r\n\r\n<p>Nếu bạn đang ph&acirc;n v&acirc;n kh&ocirc;ng biết lựa size &aacute;o thun nam kẻ sọc ngang m&agrave;u đen Hiddle n&agrave;o ph&ugrave; hợp cho m&igrave;nh v&agrave; người th&acirc;n. Th&igrave; h&atilde;y Li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i để được hỗ trợ tư vấn size nh&eacute;.</p>\r\n\r\n<h2><strong>HƯỚNG DẪN BẢO QUẢN &Aacute;O POLO NAM SỌC NGANG HIDDLE ELE</strong></h2>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; c&aacute;ch hướng dẫn bảo quản gi&uacute;p &aacute;o polo nam sọc ngang HIDDLE ELE m&agrave;u đen được sử dụng l&acirc;u hơn.</p>\r\n\r\n<p>1. N&ecirc;n giặt &aacute;o Polo ở nhiệt độ thường, chu kỳ ngắn ( kh&ocirc;ng giặt &aacute;o ở nhiệt độ tr&ecirc;n 40 độ)</p>\r\n\r\n<p>2. Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy rửa hoặc c&aacute;c h&oacute;a chất tương tự cho &aacute;o.</p>\r\n\r\n<p>3. Sau khi giặt, kh&ocirc;ng n&ecirc;n vắt &aacute;o Polo đen kẻ ngang qu&aacute; mạnh.</p>\r\n\r\n<p>4. Tr&aacute;nh sử dụng c&aacute;c m&aacute;y tương tự như m&aacute;y sấy để l&agrave;m kh&ocirc; &aacute;o thun nam sọc ngang polo m&agrave;u đen Hiddle.&nbsp;</p>\r\n\r\n<p>5. Kh&ocirc;ng để &aacute;o ở nơi mốc meo, ẩm thấp.</p>\r\n\r\n<p>6. Khi sử dụng b&agrave;n l&agrave;, n&ecirc;n l&agrave; ở nhiệt độ th&iacute;ch hợp v&agrave; lộn tr&aacute;i &aacute;o thun Polo lại.</p>\r\n\r\n<h2><strong>CH&Iacute;NH S&Aacute;CH V&Agrave;&nbsp;CAM KẾT</strong></h2>\r\n\r\n<p>- Sản phẩm &aacute;o thun nam sọc ngang c&oacute; cổ m&agrave;u đen cam kết ch&iacute;nh h&atilde;ng v&agrave; giống h&igrave;nh 100%. Do Hiddle TỰ THIẾT KẾ v&agrave;&nbsp; SẢN XUẤT độc quyền tại nh&agrave; m&aacute;y.&nbsp;</p>\r\n\r\n<p>-&nbsp;Cam kết&nbsp;đổi size &aacute;o nếu sản phẩm kh&aacute;ch đặt kh&ocirc;ng vừa với v&oacute;c d&aacute;ng của m&igrave;nh ( Lưu &yacute;: &aacute;o vẫn giữ nguy&ecirc;n Tem m&aacute;c v&agrave; chưa được sử dụng ).</p>\r\n\r\n<p>-&nbsp;Cam kết&nbsp;hỗ trợ chi ph&iacute; 100% nếu shop gửi nhầm sản phẩm tới kh&aacute;ch h&agrave;ng.&nbsp;</p>\r\n\r\n<p>- Nếu kh&aacute;ch h&agrave;ng c&oacute; bất kỳ khiếu nại cần Shop hỗ trợ 100% về sản phẩm. Th&igrave; khi mở sản phẩm, anh/chị vui l&ograve;ng quay lại video về qu&aacute; tr&igrave;nh mở &aacute;o Polo.</p>\r\n\r\n<p>- GIẢM GI&Aacute; cho kh&aacute;ch h&agrave;ng trải nghiệm &aacute;o tr&ecirc;n Shopee rồi quay trở về gi&aacute; cũ.</p>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; những th&ocirc;ng tin về mẫu &aacute;o polo nam sọc ngang HIDDLE ELE m&agrave;u đen, hy vọng sẽ gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về mẫu &aacute;o n&agrave;y. Nếu bạn chưa biết chọn mua &aacute;o thun polo ở đ&acirc;u ch&iacute;nh h&atilde;ng, chất lượng tốt th&igrave; h&atilde;y gh&eacute; ngay Hiddle để sắm cho m&igrave;nh một chiếc &aacute;o polo nam chất lượng tốt nhất nh&eacute;.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 1, NULL, NULL, NULL, 1, 0, 1000, NULL, '2021-05-21 21:57:57', '2022-01-22 21:29:22'),
(29, 'Áo polo nam HIDDLE LUX màu đen cao cấp', 12, 375000, 'ao-polo-nam-hiddle-lux-mau-den-cao-cap', '1642912089_ao-polo-nam-nhieu-mau-hiddle-lux-2.jpg', '<p>Mẫu &aacute;o thun nam Polo HIDDLE LUX m&agrave;u đen do h&atilde;ng sản xuất được rất nhiều kh&aacute;ch h&agrave;ng ưa chuộng. Bởi kiểu d&aacute;ng &aacute;o thun nam Polo m&agrave;u đen rất đơn giản, kh&ocirc;ng qu&aacute; cầu kỳ, dễ phối với nhiều loại trang phục kh&aacute;c nhau. C&ugrave;ng với chất liệu Poly th&aacute;i co gi&atilde;n si&ecirc;u tốt được Hiddle tinh tế sử dụng tạo n&ecirc;n sự kết hợp ho&agrave;n hảo cho mẫu &aacute;o Polo nam m&agrave;u đen n&agrave;y. Mang lại cho bạn cảm gi&aacute;c thời thượng, hiện đại v&agrave; thanh lịch.</p>\r\n\r\n<h2><strong>M&Ocirc; TẢ CHI TIẾT &Aacute;O THUN POLO NAM LUX HIDDLE&nbsp;</strong><strong>M&Agrave;U ĐEN</strong></h2>\r\n\r\n<p><a href=\"https://quanaonam.vn/\">&Aacute;o thun nam Polo</a>&nbsp;l&agrave; c&aacute;i t&ecirc;n đ&atilde; kh&aacute; quen thuộc đối với c&aacute;nh m&agrave;y r&acirc;u. Mặc d&ugrave; đ&atilde; ra đời từ rất l&acirc;u nhưng hiện nay mẫu trang phục n&agrave;y vẫn lu&ocirc;n nhận được sự đ&oacute;n nhận v&agrave; l&agrave; lựa chọn h&agrave;ng đầu của đ&ocirc;ng đảo ph&aacute;i mạnh. Hiddle hiểu được t&acirc;m l&yacute; đ&oacute; từ kh&aacute;ch h&agrave;ng n&ecirc;n đ&atilde; cho ra bộ sưu tập &aacute;o thun nam Polo HIDDLE LUX v&ocirc; c&ugrave;ng thời thượng v&agrave; thanh lịch.</p>\r\n\r\n<p>- Chất vải: &Aacute;o Polo nam m&agrave;u đen được Hiddle sử dụng chất vải Poly th&aacute;i co gi&atilde;n linh hoạt, si&ecirc;u tốt, vừa d&agrave;y dặn nhưng vẫn mềm mại tự nhi&ecirc;n. Mang lại cảm gi&aacute;c thoải m&aacute;i nhất cho người mặc trong mọi hoạt động.</p>\r\n\r\n<p>- Form d&aacute;ng &aacute;o Polo nam HIDDLE LUX m&agrave;u đen: được thiết kế vừa vặn v&agrave; đẹp mắt, đ&uacute;ng với ti&ecirc;u chuẩn h&igrave;nh thể của c&aacute;c ch&agrave;ng trai Việt Nam.</p>\r\n\r\n<p>- Size &aacute;o thun nam polo HIDDLE LUX: được Hiddle chia ra 3 size S,M,L. Nhằm cung cấp đủ size, đa dạng form d&aacute;ng ph&ugrave; hợp với nhiều kiểu d&aacute;ng nam giới. Gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; thể dễ d&agrave;ng lựa chọn được Form d&aacute;ng y&ecirc;u th&iacute;ch m&agrave; kh&ocirc;ng cần phải đem đi chỉnh sửa nhiều, tốn thời gian lẫn chi ph&iacute;.</p>\r\n\r\n<p>- M&agrave;u sắc &aacute;o Polo nam: m&agrave;u đen basic, đơn giản, h&agrave;i h&ograve;a kh&ocirc;ng lo lỗi thời, dễ phối nhiều loại quần &aacute;o. V&agrave; c&oacute; thể diện &aacute;o được ở khắp mọi nơi d&ugrave; l&agrave; ở nh&agrave; hay đi đến những nơi cao cấp, mẫu &aacute;o Polo nam m&agrave;u đen n&agrave;y vẫn to&aacute;t ra được vẻ thanh lịch v&agrave; thời thượng, mang lại sự tự tin cho người mặc.&nbsp;</p>\r\n\r\n<h2><strong>K&Iacute;CH THƯỚC &Aacute;O THUN NAM C&Oacute; CỔ BẺ HIDDLE LUX&nbsp;</strong><strong>M&Agrave;U ĐEN</strong></h2>\r\n\r\n<p>Rất nhiều kh&aacute;ch h&agrave;ng muốn đặt &aacute;o thun Polo qua Online tại fanpage Hiddle hoặc Shopee, nhưng chưa biết k&iacute;ch cỡ &aacute;o sao cho ph&ugrave; hợp với d&aacute;ng người m&igrave;nh. Hiểu được điều đ&oacute; n&ecirc;n Hiddle sẽ cung cấp bảng size &aacute;o Polo nam Hiddle Lux m&agrave;u đen chuẩn x&aacute;c nhất gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng chọn size &aacute;o ph&ugrave; hợp nhất.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Size S &aacute;o Polo nam c&oacute; cổ m&agrave;u đen:</strong>&nbsp;chiều d&agrave;i (từ vai) l&agrave; 67cm, chiều rộng 49cm, độ d&agrave;i tay &aacute;o 21cm.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Size M &aacute;o Polo nam c&oacute; cổ m&agrave;u đen:</strong>&nbsp;chiều d&agrave;i (từ vai) l&agrave; 70cm, chiều rộng 51cm, độ d&agrave;i tay &aacute;o l&agrave; 22cm.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Size L &aacute;o Polo nam c&oacute; cổ m&agrave;u đen:</strong>&nbsp;chiều d&agrave;i (từ vai) l&agrave; 73cm, chiều rộng 52cm, độ d&agrave;i tay &aacute;o l&agrave; 23cm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>HƯỚNG DẪN BẢO QUẢN &Aacute;O THUN C&Oacute; CỔ&nbsp;</strong><strong>M&Agrave;U ĐEN</strong><strong>&nbsp;HIDDLE LUX</strong></h2>\r\n\r\n<p>1. &Aacute;o Polo m&agrave;u đen kh&ocirc;ng được giặt ở nhiệt độ qu&aacute; 40 độ. Bởi phơi ở nhiệt độ qu&aacute; n&oacute;ng khiến &aacute;o thun Polo dễ bị phai m&agrave;u.</p>\r\n\r\n<p>2. Kh&ocirc;ng sử dụng chất tẩy rửa cho &aacute;o thun Polo m&agrave;u đen.</p>\r\n\r\n<p>3. &Aacute;o thun Polo m&agrave;u đen sau khi giặt kh&ocirc;ng n&ecirc;n vắt &aacute;o sẽ khiến &aacute;o nhăn.</p>\r\n\r\n<p>4. Tr&aacute;nh sử dụng m&aacute;y sấy để l&agrave;m kh&ocirc; cho &aacute;o Polo nam m&agrave;u đen.</p>\r\n\r\n<p>5. Kh&ocirc;ng để &aacute;o Polo nam Hiddle Lux m&agrave;u đen ở nơi ẩm thấp sẽ khiến &aacute;o bị mốc.</p>\r\n\r\n<p>6. Khi sử dụng b&agrave;n ủi n&ecirc;n lộn tr&aacute;i &aacute;o Polo m&agrave;u đen lại v&agrave; kh&ocirc;ng để nhiệt độ b&agrave;n ủi qu&aacute; cao.</p>\r\n\r\n<h2><strong>CH&Iacute;NH S&Aacute;CH V&Agrave;&nbsp;CAM KẾT</strong></h2>\r\n\r\n<p>- H&igrave;nh ảnh &aacute;o thun Polo m&agrave;u đen được Hiddle đăng tải l&ecirc;n trang 100% l&agrave; do shop tự chụp.&nbsp;</p>\r\n\r\n<p>- Cam kết &aacute;o thun Polo m&agrave;u đen được Hiddle thiết kế v&agrave; sản xuất độc quyền tại nh&agrave; m&aacute;y ri&ecirc;ng.</p>\r\n\r\n<p>- Hỗ trợ đổi size &aacute;o thun Polo m&agrave;u đen trong v&ograve;ng 5 đến 7 ng&agrave;y.</p>\r\n\r\n<p>&Aacute;o polo nam m&agrave;u đen lu&ocirc;n c&oacute; một sức hấp dẫn rất ri&ecirc;ng đối với nam giới. Với vẻ ngo&agrave;i trẻ trung, lịch thiệp v&agrave; hiện đại n&ecirc;n &aacute;o Polo chiếm được sự y&ecirc;u th&iacute;ch của ph&aacute;i mạnh. H&atilde;y gh&eacute; ngay cửa h&agrave;ng Hiddle để sở hữu một v&agrave;i chiếc polo xinh xắn gi&uacute;p anh em c&oacute; th&ecirc;m nhiều sự lựa khi đi ra ngo&agrave;i, đi chơi, đi l&agrave;m&hellip;</p>\r\n\r\n<h2><strong>C&Aacute;CH PHỐI ĐỒ VỚI &Aacute;O POLO NAM HIDDLE LUX&nbsp;</strong><strong>M&Agrave;U ĐEN</strong></h2>\r\n\r\n<p>&Aacute;o Polo nam m&agrave;u đen của Hiddle c&oacute; khả năng co gi&atilde;n tốt, thoải m&aacute;i m&agrave; kiểu d&aacute;ng lại sang trọng, lịch sự. C&oacute; thể d&ugrave;ng mẫu &aacute;o n&agrave;y phối c&ugrave;ng với nhiều item kh&aacute;c như quần t&acirc;y, gi&agrave;y thể thao, gi&agrave;y t&acirc;y,.... nhưng nếu bạn chưa c&oacute; nhiều kinh nghiệm trong việc phối đồ với &aacute;o Polo c&oacute; cổ th&igrave; rất dễ bị ph&acirc;n v&acirc;n v&agrave; chọn kh&ocirc;ng biết n&ecirc;n phối l&agrave;m sao đẹp nhất. Dưới đ&acirc;y Hiddle sẽ chia sẻ cho bạn c&aacute;ch phối &aacute;o polo nam m&agrave;u đen cổ bẻ gi&uacute;p bạn th&ecirc;m thời trang v&agrave; bắt kịp xu hướng nh&eacute;.</p>\r\n\r\n<h3><strong>1. Polo HIDDLE LUX m&agrave;u đen phối c&ugrave;ng với quần short kaki</strong></h3>\r\n\r\n<p>Những chiếc &aacute;o polo nam ch&iacute;nh h&atilde;ng m&agrave;u đen khi phối c&ugrave;ng quần short kaki mang đến vẻ ngo&agrave;i trẻ trung, hiện đại v&agrave; rất năng động. Đ&acirc;y l&agrave; một outfit rất th&iacute;ch hợp cho những lần đi du lịch biển. Nguy&ecirc;n tắc phối đồ cũng rất linh hoạt, đẹp nhất l&agrave; kiểu phối &aacute;o thun Polo m&agrave;u đen với quần kaki trắng sẽ gi&uacute;p bạn trở n&ecirc;n trẻ trung m&agrave; kh&ocirc;ng sợ đứng tuổi.</p>\r\n\r\n<h3><strong>2. Polo HIDDLE LUX m&agrave;u đen phối c&ugrave;ng quần jeans</strong></h3>\r\n\r\n<p>C&aacute;ch kết hợp n&agrave;y rất được nhiều ng&ocirc;i sao nổi tiếng v&agrave; d&acirc;n c&ocirc;ng sở rất ưa chuộng. Bởi n&oacute; mang lại cảm gi&aacute;c vừa năng động nhưng cũng rất chỉn chu. Mang c&ugrave;ng với một đ&ocirc;i gi&agrave;y t&acirc;y, một chiếc &aacute;o vest hoặc &aacute;o kho&aacute;c gi&oacute; đơn giản ở b&ecirc;n ngo&agrave;i l&agrave; bạn đ&atilde; c&oacute; ngay một outfit l&yacute; tưởng khi đi ra ngo&agrave;i.</p>\r\n\r\n<h3><strong>3. Polo HIDDLE LUX phối c&ugrave;ng quần d&agrave;i</strong></h3>\r\n\r\n<p>Ngo&agrave;i 2 outfit tr&ecirc;n, &aacute;o Polo m&agrave;u đen khi đi c&ugrave;ng quần d&agrave;i như jogger trắng sẽ tạo n&ecirc;n cảm gi&aacute;c hiện đại, hơi t&aacute;o bạo nhưng rất hợp với xu hướng của giới trẻ hiện nay. Hoặc bạn c&oacute; thể kết hợp &aacute;o Polo m&agrave;u đen với quần t&acirc;y tạo n&ecirc;n cảm gi&aacute;c lịch thiệp, trang nh&atilde; nhưng cũng kh&ocirc;ng bị qu&aacute; gi&agrave;. Outfit n&agrave;y rất l&yacute; tưởng khi bạn đi l&agrave;m hoặc đi chơi.</p>', 1, NULL, NULL, NULL, 1, 0, 50, NULL, '2021-05-21 22:00:57', '2022-01-22 21:28:09'),
(30, 'Áo polo in nổi HIDDLE nhiều màu-Vàng kem 03072107', 12, 275000, 'ao-polo-in-noi-hiddle-nhieu-mau-vang-kem-03072107', '1642912012_ao-polo-nam-in-noi-hiddle-nhieu-mau-4.jpg', '<h2><strong>M&Ocirc; TẢ CHI TIẾT &Aacute;O POLO NAM M&Agrave;U V&Agrave;NG KEM IN LOGO NỔI HIDDLE</strong></h2>\r\n\r\n<p>&Aacute;o polo nam cổ bẻ in nổi logo HIDDLE với phi&ecirc;n bản m&agrave;u v&agrave;ng kem v&ocirc; c&ugrave;ng nh&atilde; nhặn nhưng kh&ocirc;ng k&eacute;m phần lịch sự gi&uacute;p cho c&aacute;c ch&agrave;ng trai lu&ocirc;n nổi bật trong mọi phong c&aacute;ch. Chiếc &aacute;o rất dễ phối c&ugrave;ng nhiều kiểu quần kh&aacute;c nhau v&agrave; đem lại cho bạn nhiều m&agrave;u sắc c&aacute; t&iacute;nh, cho d&ugrave; bạn diện bất cứ đ&acirc;u đều kh&ocirc;ng lo bị lỗi mốt. D&ugrave; cho bạn ở bất cứ đ&acirc;u, từ những nơi vui chơi giải tr&iacute; hay thậm ch&iacute; l&agrave; những buổi gặp mặt quan trọng cho tới những sự kiện th&igrave; bạn diện chiếc &aacute;o n&agrave;y đều ph&ugrave; hợp.</p>\r\n\r\n<p>Sản phẩm &aacute;o thun của HIDDLE với form &aacute;o được may dựa tr&ecirc;n số đo h&igrave;nh thể của đ&agrave;n &ocirc;ng Việt Nam. V&igrave; vậy m&agrave; ho&agrave;n to&agrave;n ph&ugrave; hợp với c&aacute;c ch&agrave;ng trai Việt của ch&uacute;ng ta. Mẫu &aacute;o n&agrave;y được l&agrave;m từ chất vải thun cotton co gi&atilde;n 4 chiều, mang lại cho bạn cảm gi&aacute;c thoải m&aacute;i, dễ chịu khi mặc. Đặc biệt &aacute;o polo nam in logo nổi HIDDLE c&ograve;n c&oacute; khả năng thấm h&uacute;t mồ h&ocirc;i nhanh ch&oacute;ng, khả năng tho&aacute;ng kh&iacute; cao, gi&uacute;p c&aacute;c ch&agrave;ng trai lu&ocirc;n tự tin hoạt động ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng lo bị kh&oacute; chịu, tự ti v&agrave;o những ng&agrave;y nắng n&oacute;ng.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/399/392/files/7-2.jpg?v=1636183769404\" /></p>\r\n\r\n<p>Ưu điểm của vải cotton 4 chiều l&agrave; độ co gi&atilde;n tốt, &iacute;t bị nhăn, vậy n&ecirc;n bạn c&oacute; thể dễ d&agrave;ng bảo quản chiếc &aacute;o trong tủ đồ m&agrave; kh&ocirc;ng lo bị nhăn nh&uacute;m, mất form ban đầu của &aacute;o. Một lợi thế của chất vải &aacute;o polo Nam Hiddle nữa đ&oacute; l&agrave; dễ in v&agrave; nhuộm, với khả năng l&ecirc;n m&agrave;u tốt n&ecirc;n c&oacute; thể nhuộm hay in c&aacute;c h&igrave;nh ảnh l&ecirc;n &aacute;o m&agrave; kh&ocirc;ng sợ bị kh&oacute; l&ecirc;n m&agrave;u hay l&agrave; dễ phai m&agrave;u. Ch&iacute;nh v&igrave; vậy phần Logo được in nằm ngay phần ngực &aacute;o cũng v&ocirc; c&ugrave;ng r&otilde; n&eacute;t v&agrave; ch&acirc;n thực tạo n&ecirc;n vẻ sang trọng, lịch l&atilde;m cho sản phẩm &aacute;o thun n&agrave;y.</p>\r\n\r\n<p>Kh&aacute;c với c&aacute;c kiểu &aacute;o cổ tr&ograve;n, &aacute;o polo nam Hiddle in chữ nổi kiểu c&oacute; cổ được th&ecirc;u tem biểu tượng HIDDLE ph&iacute;a trong ở m&eacute;p dưới cổ &aacute;o gi&uacute;p cho chiếc &aacute;o trở n&ecirc;n tinh tế v&agrave; v&ocirc; c&ugrave;ng lịch thiệp.</p>\r\n\r\n<p>Hiện nay c&aacute;c sản phẩm của ch&uacute;ng t&ocirc;i đều c&oacute; b&aacute;n tr&ecirc;n s&agrave;n Shopee, mọi người c&oacute; thể tham khảo gi&aacute; ưu đ&atilde;i tốt nhất&nbsp;tại đ&acirc;y&nbsp;nh&eacute;!</p>\r\n\r\n<h2><strong>K&Iacute;CH THƯỚC &Aacute;O POLO NAM C&Oacute; CỔ HIDDLE&nbsp;</strong><strong>M&Agrave;U V&Agrave;NG KEM</strong><strong>&nbsp;IN CHỮ NỔI</strong></h2>\r\n\r\n<p>&Aacute;o thun polo nam m&agrave;u v&agrave;ng kem in logo nổi HIDDLE c&oacute; c&aacute;c size l&agrave;: S, M, L, XL. Với 4 size &aacute;o n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng dễ lựa chọn &aacute;o để ph&ugrave; hợp với cơ thể của m&igrave;nh nhất. Cụ thể chi tiết c&aacute;c size như sau:</p>\r\n\r\n<ul>\r\n	<li>&Aacute;o thun polo nam m&agrave;u v&agrave;ng kem in logo nổi HIDDLE&nbsp;<strong>size S</strong>: chiều d&agrave;i: 68cm &ndash; chiều rộng: 48cm &ndash; chiều d&agrave;i tay: 20cm &ndash; chiều ngang vai: 40cm</li>\r\n	<li>&Aacute;o thun polo nam m&agrave;u v&agrave;ng kem in logo nổi HIDDLE&nbsp;<strong>size M</strong>: chiều d&agrave;i &aacute;o: 70cm &ndash; chiều rộng &aacute;o: 50cm &ndash; chiều d&agrave;i tay: 21cm &ndash; chiều ngang vai: 42cm</li>\r\n	<li>&Aacute;o thun polo nam m&agrave;u v&agrave;ng kem in logo nổi HIDDLE&nbsp;<strong>size L</strong>: chiều d&agrave;i &aacute;o: 72cm &ndash; chiều rộng &aacute;o: 52cm &ndash; chiều d&agrave;i tay: 22cm &ndash; chiều ngang vai: 44cm</li>\r\n	<li>&Aacute;o thun polo nam m&agrave;u v&agrave;ng kem in logo nổi HIDDLE&nbsp;<strong>size XL</strong>: chiều d&agrave;i &aacute;o: 74cm &ndash; chiều rộng &aacute;o 54cm &ndash; chiều d&agrave;i tay: 23cm &ndash; chiều ngang vai: 46cm</li>\r\n</ul>\r\n\r\n<p>Với c&aacute;c size cụ thể như vậy, chắc chắn cũng sẽ gi&uacute;p cho những ai đang c&oacute; nhu cầu mua l&agrave;m qu&agrave; tặng cho người th&acirc;n, bạn b&egrave; hay l&agrave; người y&ecirc;u&hellip; đều c&oacute; thể dễ d&agrave;ng hơn trong việc lựa chọn chiếc &aacute;o ph&ugrave; hợp nhất.</p>\r\n\r\n<h2><strong>HƯỚNG DẪN BẢO QUẢN &Aacute;O THUN NAM POLO HIDDLE IN LOGO NỔI</strong></h2>\r\n\r\n<p>Tương tự như c&aacute;c mẫu &aacute;o kh&aacute;c tại HIDDLE th&igrave; chiếc &aacute;o polo nam m&agrave;u v&agrave;ng kem in logo nổi tuy l&agrave; cao cấp, bền đẹp nhưng muốn duy tr&igrave; được việc sử dụng l&acirc;u d&agrave;i th&igrave; bạn cũng cần lưu &yacute; một số c&aacute;ch bảo quản giặt ủi như sau:</p>\r\n\r\n<p>1. Kh&ocirc;ng giặt &aacute;o ở nhiệt độ qu&aacute; 40 độ, v&igrave; nước qu&aacute; n&oacute;ng sẽ khiến cho chiếc &aacute;o bị gi&atilde;n qu&aacute; mức l&agrave;m mất đi form &aacute;o đẹp ban đầu.</p>\r\n\r\n<p>2. Kh&ocirc;ng sử dụng chất tẩy rửa v&igrave; c&aacute;c chất tẩy rửa kh&aacute; mạnh sẽ l&agrave;m cho m&agrave;u &aacute;o dễ bị phai, c&aacute;c h&igrave;nh ảnh hay logo in tr&ecirc;n &aacute;o rất dễ bong tr&oacute;c, hư hỏng l&agrave;m mất đi vẻ đẹp ban đầu của chiếc &aacute;o.</p>\r\n\r\n<p>3. Kh&ocirc;ng n&ecirc;n vắt &aacute;o Polo sau khi giặt</p>\r\n\r\n<p>4. Tr&aacute;nh sử dụng m&aacute;y sấy để l&agrave;m kh&ocirc;</p>\r\n\r\n<p>5. Kh&ocirc;ng để &aacute;o ở nơi ẩm thấp v&igrave; t&iacute;nh năng dễ thấm h&uacute;t của &aacute;o sẽ khiến cho chiếc &aacute;o dễ bị mốc v&agrave; xuất hiện c&aacute;c vết ố v&agrave;ng.</p>\r\n\r\n<p>6. Khi sử dụng b&agrave;n l&agrave; n&ecirc;n lộn tr&aacute;i &aacute;o v&agrave; kh&ocirc;ng để nhiệt độ b&agrave;n l&agrave; qu&aacute; cao tr&aacute;ng g&acirc;y hư hỏng &aacute;o.</p>\r\n\r\n<h2><strong>CH&Iacute;NH S&Aacute;CH V&Agrave; CAM KẾT</strong></h2>\r\n\r\n<p>- Ch&uacute;ng t&ocirc;i cam kết 100% sản phẩm &aacute;o polo nam c&oacute; cổ m&agrave;u v&agrave;ng kem HIDDLE in chữ nổi được thiết kế v&agrave; sản xuất độc quyền bởi Hiddle. C&aacute;c h&igrave;nh ảnh sản phẩm tr&ecirc;n web do h&atilde;ng tự chụp từ mẫu c&oacute; sẵn, kh&ocirc;ng c&oacute; trường hợp chỉnh sửa từ ảnh mạng hay lấy cắp từ shop kh&aacute;c.</p>\r\n\r\n<p>- Mỗi chiếc &aacute;o đưa ra thị trường đều được kiểm duyệt kỹ lưỡng trước khi xuất xưởng</p>\r\n\r\n<p>- HIDDLE sẵn s&agrave;ng hỗ trợ kh&aacute;ch h&agrave;ng đổi trả &aacute;o thun nam polo HIDDLE in logo nổi từ 5 đến 7 ng&agrave;y nếu như c&oacute; vấn đề về &aacute;o như bị may lỗi, kh&ocirc;ng đ&uacute;ng size &aacute;o y&ecirc;u cầu.</p>\r\n\r\n<p>Hiện nay, &aacute;o polo nam cổ bẻ in nổi logo HIDDLE ch&iacute;nh l&agrave; một trong những chiếc &aacute;o thun v&ocirc; c&ugrave;ng cuốn h&uacute;t, si&ecirc;u bền, si&ecirc;u mịn v&agrave; mang m&agrave;u sắc trang nh&atilde;, lịch thiệp ph&ugrave; hợp với mọi phong c&aacute;ch thời trang cũng như c&aacute; t&iacute;nh của từng kh&aacute;ch h&agrave;ng. H&atilde;y li&ecirc;n hệ ngay với HIDDLE để mua &aacute;o ch&iacute;nh h&atilde;ng v&agrave; được tư vấn chọn size &aacute;o, m&agrave;u &aacute;o hợp với m&igrave;nh nhất nh&eacute;.</p>\r\n\r\n<p>&nbsp;</p>', 1, NULL, NULL, NULL, 1, 0, 50, NULL, '2021-05-21 22:02:20', '2022-01-22 21:26:52'),
(31, 'Áo thun nam cổ tròn cao cấp HIDDLE Line Art - ACT', 15, 155000, 'ao-thun-nam-co-tron-cao-cap-hiddle-line-art-act', '1642912735_ao-thun-nam-co-tron-form-rong-cao-cap-ao-phong-nam-hiddle-line-art-30112012.jpg', '<p>&Aacute;o thun nam m&agrave;u trắng Line Art l&agrave; một trong những mẫu &aacute;o thun c&aacute; t&iacute;nh, trẻ trung tại HIDDLE đ&atilde; v&agrave; đang được nhiều bạn nam săn đ&oacute;n hiện nay. Ưu điểm ở mẫu &aacute;o thun nam n&agrave;y ch&iacute;nh l&agrave; thiết kế trẻ trung, năng động, kiểu d&aacute;ng đẹp, chất lượng vải v&ocirc; c&ugrave;ng tốt mang tới cảm gi&aacute;c thoải m&aacute;i khi mặc. Đ&acirc;y ho&agrave;n to&agrave;n l&agrave; những ưu điểm nổi bật gi&uacute;p cho mẫu &aacute;o thun nam Hiddle n&agrave;y trở n&ecirc;n xịn s&ograve; hơn, c&aacute;c bạn nam n&ecirc;n sắm ngay cho tủ đồ của m&igrave;nh.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/thumb/1024x1024/100/399/392/products/ao-thun-nam-co-tron-cao-cap-ao-phong-nam-tay-ngan-thun-nam-chat-xin-hiddle-2.png\" /></p>\r\n\r\n<h2><strong>M&Ocirc; TẢ CHI TIẾT &Aacute;O THUN NAM CỔ TR&Ograve;N HIDDLE LINE ART M&Agrave;U TRẮNG CAO CẤP</strong></h2>\r\n\r\n<p>&Aacute;o thun nam m&agrave;u trắng Hiddle Line Art l&agrave; mẫu &aacute;o thun ngắn tay kh&aacute; đơn giản nhưng kh&ocirc;ng k&eacute;m phần sang trọng. Chiếc &aacute;o m&agrave;u trắng kh&aacute; nh&atilde; nhặn, lịch sự k&egrave;m theo h&igrave;nh ảnh thiết kế nghệ thuật với tone n&acirc;u ấm mang lại cảm gi&aacute;c mới mẻ, t&ocirc;n l&ecirc;n được sự c&aacute; t&iacute;nh, trẻ trung cho c&aacute;c bạn nam.&nbsp;</p>\r\n\r\n<p>Đồng thời với thiết kế n&agrave;y của HIDDLE th&igrave; bạn c&oacute; thể dễ d&agrave;ng phối với bất k&igrave; item n&agrave;o c&oacute; sẵn trong tủ đồ của m&igrave;nh. Cho d&ugrave; bạn đi chơi hay ở những buổi gặp mặt th&igrave; việc diện chiếc &aacute;o đều ph&ugrave; hợp thời trang, kh&ocirc;ng lo bị lỗi thời. Bạn c&oacute; thể phối chiếc &aacute;o n&agrave;y với chiếc quần jean hay quần t&acirc;y cho đến những chiếc quần lửng đều được, mỗi chiếc quần sẽ tạo ra n&eacute;t ri&ecirc;ng kh&aacute;c nhau, gi&uacute;p bạn sở hữu được đa dạng phong c&aacute;ch.</p>\r\n\r\n<p>Phần tem Hiddle được may ở m&eacute;p &aacute;o dưới tạo n&ecirc;n sự tinh tế cho người mặc v&agrave; n&oacute;i l&ecirc;n được sự tỉ mỉ trong qu&aacute; tr&igrave;nh sản xuất mẫu &aacute;o n&agrave;y.</p>\r\n\r\n<p><strong>Chất liệu vải cotton si&ecirc;u bền với nhiều ưu điểm như:</strong></p>\r\n\r\n<p>- Thoải m&aacute;i, dễ chịu, kh&ocirc;ng g&acirc;y ảnh hưởng đến da v&igrave; th&agrave;nh phần vải chủ yếu l&agrave;m từ c&aacute;c sợi b&ocirc;ng thi&ecirc;n nhi&ecirc;n. Khi sử dụng &aacute;o thun nam cotton cao cấp m&agrave;u trắng của HIDDLE bạn sẽ cảm nhận được sự nhẹ nh&agrave;ng, mềm mịn v&agrave; đặc biệt l&agrave; khả năng thấm h&uacute;t mồ h&ocirc;i cực tốt tạo n&ecirc;n sự th&ocirc;ng tho&aacute;ng, tự tin cho người mặc cho d&ugrave; l&agrave; trong thời tiết n&oacute;ng.</p>\r\n\r\n<p>- V&igrave; l&agrave;m từ vải cotton n&ecirc;n sản phẩm được đ&aacute;nh gi&aacute; l&agrave; bền, độ co gi&atilde;n tốt, khi giặt nhanh kh&ocirc;.</p>\r\n\r\n<p>- Lưu giữ m&ugrave;i thơm l&acirc;u c&ograve;n l&agrave; lợi thế của &aacute;o ph&ocirc;ng nam trắng cao cấp Line Art nữa đấy, điều n&agrave;y sẽ gi&uacute;p bạn lu&ocirc;n tự tin, năng động, cơ thể của bạn lu&ocirc;n thơm tho.</p>\r\n\r\n<p>Đặt mua&nbsp;<a href=\"https://shopee.vn/%C3%81o-thun-nam-c%E1%BB%95-tr%C3%B2n-form-r%E1%BB%99ng-cao-c%E1%BA%A5p-%C3%A1o-ph%C3%B4ng-nam-HIDDLE-Line-Art-30112012-i.275570035.7188159350\">&aacute;o thun nam cao cấp Hiddle Line Art - ACT</a>&nbsp;n&agrave;y tại shopee với gi&aacute; si&ecirc;u ưu đ&atilde;i bạn nh&eacute;!</p>\r\n\r\n<h2><strong>K&Iacute;CH THƯỚC &Aacute;O THUN NAM CỔ TR&Ograve;N CAO CẤP HIDDLE ACT</strong></h2>\r\n\r\n<p>&Aacute;o thun nam xịn đẹp HIDDLE Line Art sẽ c&oacute; c&aacute;c size như: M, L, XL. Sau đ&acirc;y l&agrave; chi tiết về c&aacute;c size &aacute;o cho c&aacute;c bạn nam c&oacute; thể dễ d&agrave;ng lựa chọn.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong><em>Size M &aacute;o thun nam cotton cao cấp m&agrave;u trắng Line Art:</em></strong>&nbsp;c&oacute; chiều d&agrave;i 71cm, chiều rộng 53 cm v&agrave; chiều d&agrave;i tay 23 cm.</p>\r\n	</li>\r\n	<li>\r\n	<p><em><strong>Size L &aacute;o thun nam cotton cao cấp m&agrave;u trắng Line Art:</strong></em>&nbsp;c&oacute; chiều d&agrave;i 73 cm, chiều rộng 55cm, chiều d&agrave;i tay 25cm.</p>\r\n	</li>\r\n	<li>\r\n	<p><em><strong>Size XL &aacute;o thun nam cotton cao cấp m&agrave;u trắng Line Art:</strong></em>&nbsp;c&oacute; chiều d&agrave;i l&agrave; 75 cm, chiều rộng 57cm v&agrave; chiều d&agrave;i tay l&agrave; 27 cm</p>\r\n	</li>\r\n</ul>', 1, NULL, NULL, NULL, 1, 0, 50, NULL, '2021-05-21 22:22:40', '2022-01-22 21:38:55'),
(32, 'Áo thun nam cổ tròn cao cấp đen in logo trắng', 15, 295000, 'ao-thun-nam-co-tron-cao-cap-den-in-logo-trang', '1642912645_1-1.png', '<p>Kh&ocirc;ng phải ngẫu nhi&ecirc;n khi mẫu&nbsp;<strong>&aacute;o thun nam m&agrave;u đen chất cotton in logo chữ trắng của h&atilde;ng Hiddle</strong>&nbsp;được rất nhiều bạn trẻ y&ecirc;u th&iacute;ch đến thế. M&agrave;u đen c&oacute; sức h&uacute;t nam t&iacute;nh đầy mạnh mẽ, chiếc &aacute;o thun nam cổ tr&ograve;n xịn s&ograve; n&agrave;y lại vừa đơn giản, vừa tinh tế, vừa c&oacute; mức gi&aacute; hợp l&yacute;, th&igrave; kh&ocirc;ng một ch&agrave;ng trai n&agrave;o c&oacute; thể bỏ qua.</p>\r\n\r\n<h2><strong>M&Ocirc; TẢ CHI TIẾT &Aacute;O THUN NAM&nbsp;</strong><strong>M&Agrave;U ĐEN IN CHỮ TRẮNG HIDDLE</strong></h2>\r\n\r\n<p>Bạn y&ecirc;u th&iacute;ch sự đơn giản v&agrave; thanh lịch th&igrave; chiếc &aacute;o ph&ocirc;ng nam đen in logo trắng Hiddle l&agrave; một sự lựa chọn tuyệt vời nhất. Bởi chất &aacute;o kh&ocirc;ng chỉ thoải m&aacute;i, trẻ trung m&agrave; m&agrave;u đen in logo m&agrave;u trắng c&ograve;n gi&uacute;p &aacute;o th&ecirc;m phần cuốn h&uacute;t, ph&ugrave; hợp với rất nhiều form d&aacute;ng bạn nam.</p>\r\n\r\n<p>Tổng về mặt thiết kế &aacute;o ph&ocirc;ng nam in logo trắng Hiddle: &aacute;o ph&ocirc;ng nam m&agrave;u đen c&oacute; thiết kế mang đến sự hiện đại kết hợp với m&agrave;u đen huyền b&iacute;, c&ograve;n được in logo chữ Hiddle r&otilde; n&eacute;t, tỉ mỉ ở mặt trước &aacute;o. B&ecirc;n phần tay &aacute;o c&oacute; may th&ecirc;m tem Hiddle được l&agrave;m một c&aacute;ch cẩn thận từ những b&agrave;n tay gia c&ocirc;ng, thể hiện sự s&agrave;nh điệu v&agrave; tăng phần cao cấp cho mẫu &aacute;o n&agrave;y.&nbsp;</p>\r\n\r\n<p>Sự tương phản về m&agrave;u sắc giữa &aacute;o thun cotton đen nam Hiddle kết hợp với quần Jeans s&aacute;ng m&agrave;u sẽ tạo n&ecirc;n sức h&uacute;t cũng như sự nổi bật cho một set đồ m&agrave; bạn đang diện. Đ&oacute; cũng ch&iacute;nh l&agrave; set đồ ho&agrave;n hảo cho một cuộc hẹn h&ograve;, đi chơi. Nếu kết hợp th&ecirc;m một gi&agrave;y thể thao sẽ gi&uacute;p bộ trang phục của bạn tr&ocirc;ng chất lừ hơn.</p>\r\n\r\n<p>M&agrave;u sắc: sở hữu tone m&agrave;u đen l&agrave; một trong những gam m&agrave;u được đ&aacute;nh gi&aacute; dễ mặc v&agrave; dễ phối; đ&acirc;y l&agrave; m&agrave;u mang đến sự khỏe khoắn, năng động v&agrave; c&aacute; t&iacute;nh n&ecirc;n được ph&aacute;i mạnh ưu &aacute;i lựa chọn. Tuy d&aacute;ng người của bạn c&oacute; hơi tr&ograve;n hay hơi gầy một ch&uacute;t th&igrave; &aacute;o ph&ocirc;ng nam m&agrave;u đen Hiddle cũng dễ d&agrave;ng che đi những khuyết điểm đ&oacute;.&nbsp;</p>\r\n\r\n<p>Chất liệu: mẫu &aacute;o thun nam đen in logo m&agrave;u trắng Hiddle n&agrave;y được sản xuất từ chất liệu vải 100% Cotton c&oacute; khả năng thấm h&uacute;t mồ h&ocirc;i tốt v&agrave; cộng th&ecirc;m với độ co gi&atilde;n 4 chiều tạo n&ecirc;n cảm gi&aacute;c thoải m&aacute;i khi sử dụng. Đ&acirc;y được coi l&agrave; d&ograve;ng sản phẩm&nbsp;<a href=\"https://quanaonam.vn/\">&aacute;o thun nam cao cấp</a>&nbsp;được sản xuất v&agrave; ph&acirc;n phối bởi Hiddle Việt Nam.</p>\r\n\r\n<p><strong>Ưu điểm vải &aacute;o thun cotton Hiddle</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&oacute; bề mặt cực kỳ mịn m&agrave;ng, b&oacute;ng bẩy tạo sự th&ocirc;ng tho&aacute;ng v&agrave; dễ chịu cho người d&ugrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Với khả năng h&uacute;t ẩm cao, thấm mồ h&ocirc;i, giảm nhiệt, mang lại sự thoải m&aacute;i cho người mặc.</p>\r\n	</li>\r\n	<li>\r\n	<p>Vải cotton n&agrave;y c&ograve;n c&oacute; thể th&iacute;ch nghi được nhiều loại thời tiết như nắng n&oacute;ng hay đ&ocirc;ng lạnh.</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ugrave;ng được trong m&aacute;y giặt, khi giặt phơi rất nhanh kh&ocirc;.</p>\r\n	</li>\r\n	<li>\r\n	<p>C&oacute; mức gi&aacute; th&agrave;nh rẻ hơn so với c&aacute;c loại vải c&oacute; pha sợi kh&aacute;c, v&igrave; nguy&ecirc;n liệu dễ t&igrave;m v&agrave; sẵn c&oacute;.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>&Aacute;o thun nam ngắn tay Hiddle c&oacute; g&igrave; nổi bật?</strong></p>\r\n\r\n<p>- L&agrave; d&ograve;ng &aacute;o thun ch&iacute;nh h&atilde;ng Hiddle kh&ocirc;ng đạo nh&aacute;i.</p>\r\n\r\n<p>- Mỗi sản phẩm quần &aacute;o nam của Hiddle đều được th&ocirc;ng qua quy tr&igrave;nh kiểm duyệt kỹ c&agrave;ng.&nbsp;</p>\r\n\r\n<p>- &Aacute;o được thiết kế theo kiểu d&aacute;ng trẻ trung, hiện đại, c&oacute; thể thoải m&aacute;i sử dụng trong nhiều ho&agrave;n cảnh v&agrave; t&igrave;nh huống kh&aacute;c nhau.</p>\r\n\r\n<p>- Thể hiện được phong c&aacute;ch thời trang v&agrave; hiện đại n&ecirc;n gi&uacute;p c&aacute;c bạn nam dễ d&agrave;ng phối hợp trang phục m&agrave; m&igrave;nh th&iacute;ch.</p>\r\n\r\n<h2><strong>K&Iacute;CH THƯỚC &Aacute;O THUN NAM&nbsp;M&Agrave;U ĐEN&nbsp;LOCAL BRAND HIDDLE</strong></h2>\r\n\r\n<p>Mẫu &aacute;o thun đen in logo m&agrave;u trắng được Hiddle c&oacute; 3 size l&agrave;: M, L, XL. Dưới đ&acirc;y Hiddle sẽ cung cấp th&ecirc;m bảng size nhằm gi&uacute;p c&aacute;c bạn mua &aacute;o dễ d&agrave;ng hơn:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Size M:</strong>&nbsp;Chiều dọc: 70cm - chiều ngang: 50cm - chiều d&agrave;i tay: 24cm.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Size L:</strong>&nbsp;Chiều dọc: 72cm - chiều ngang: 52cm - chiều d&agrave;i tay: 26cm.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Size XL:</strong>&nbsp;Chiều dọc: 74cm - chiều ngang: 54cm - chiều d&agrave;i tay: 28cm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>HƯỚNG DẪN BẢO QUẢN &Aacute;O PH&Ocirc;NG NAM&nbsp;</strong><strong>M&Agrave;U ĐEN</strong><strong>&nbsp;CHẤT COTTON</strong></h2>\r\n\r\n<p>1. Kh&ocirc;ng n&ecirc;n để &aacute;o thun ở những nơi ẩm ướt.</p>\r\n\r\n<p>2. Khi phơi &aacute;o, c&aacute;c bạn n&ecirc;n lộn tr&aacute;i &aacute;o v&agrave; n&ecirc;n để ở chỗ m&aacute;t.</p>\r\n\r\n<p>3. Những buổi mặc &aacute;o thun đi chơi hay vận động nhiều ra mồ h&ocirc;i, tốt nhất l&agrave; c&aacute;c bạn n&ecirc;n giặt liền sau khi mặc, nếu để l&acirc;u sẽ c&oacute; m&ugrave;i h&ocirc;i v&agrave; dễ ẩm mốc.</p>\r\n\r\n<p>4. Trong việc ủi &aacute;o th&igrave; để ở nhiệt độ ph&ugrave; hợp.&nbsp;</p>\r\n\r\n<p>5. Việc treo m&oacute;c &aacute;o kh&ocirc;ng đ&uacute;ng c&aacute;ch cũng l&agrave;m giảm tuổi thọ của &aacute;o. Phơi &aacute;o ngang l&ecirc;n d&acirc;y hoặc gập đ&ocirc;i &aacute;o v&agrave;o m&oacute;c l&agrave; phương ph&aacute;p được khuyến nghị.</p>\r\n\r\n<h2><strong>CH&Iacute;NH S&Aacute;CH V&Agrave;&nbsp;CAM KẾT</strong></h2>\r\n\r\n<p>- Mỗi sản phẩm của Hiddle khi được đăng tải l&ecirc;n web chắc chắn 100% h&igrave;nh ảnh l&agrave; đều do shop tự chụp, kh&ocirc;ng lấy ảnh tr&ecirc;n mạng hoặc c&aacute;c shop kh&aacute;c gắn v&agrave;o.&nbsp;</p>\r\n\r\n<p>-&nbsp;Cam kết&nbsp;&aacute;o thun nam in chữ Hiddle m&agrave;u trắng được thiết kế ri&ecirc;ng v&agrave; sản xuất độc quyền tại nh&agrave; m&aacute;y của Hiddle.</p>\r\n\r\n<p>- Hiddle c&ograve;n c&oacute; dịch vụ hỗ trợ đổi size &aacute;o cho kh&aacute;ch h&agrave;ng trong v&ograve;ng 5 -7 ng&agrave;y.</p>\r\n\r\n<p>- Đặt biệt mua sản phẩm &aacute;o thun nam Hiddle tại gian h&agrave;ng của ch&uacute;ng t&ocirc;i tr&ecirc;n s&agrave;n thương mại điện tử Shopee để c&oacute; gi&aacute; ưu đ&atilde;i tốt nhất.&nbsp;<a href=\"https://shopee.vn/%C3%81o-thun-nam-tay-ng%E1%BA%AFn-c%E1%BB%95-tr%C3%B2n-cao-c%E1%BA%A5p-%C3%A1o-ph%C3%B4ng-nam-HIDDLE-(2-m%C3%A0u)-21213-21214-i.275570035.10702104160\">Mua ngay tại đ&acirc;y</a>!</p>\r\n\r\n<p>Bạn đ&atilde; tự tin chọn v&agrave; phối đồ c&ugrave;ng với chiếc &aacute;o thun nam HIDDLE cổ tr&ograve;n cao cấp m&agrave;u đen in logo trắng chưa n&agrave;o? Nhanh tay mở tủ đồ của m&igrave;nh ra v&agrave; lựa chọn nhanh item &aacute;o thun nam HIDDLE cổ tr&ograve;n để mix c&ugrave;ng với những set đồ thời trang kh&aacute;c của bạn nh&eacute;!</p>', 1, NULL, NULL, NULL, 1, 0, 100, NULL, '2021-05-21 22:23:50', '2022-01-22 21:37:25'),
(33, 'Áo Khoác Nam Bomber Varsity', 13, 595000, 'ao-khoac-nam-bomber-varsity', '1642912567_ao-khoac-nam-bomber-kaki-varsity-hiddle-5.jpg', '<h2><strong>M&ocirc; tả chi tiết &aacute;o kho&aacute;c Nam Bomber Varsity HIDDLE</strong></h2>\r\n\r\n<p>- Thiết kế: Điểm cộng đầu ti&ecirc;n cho mẫu &aacute;o kho&aacute;c nam bomber HIDDLE l&agrave; kh&acirc;u thiết kế kh&ocirc;ng c&oacute; cổ, tay d&agrave;i đem lại phong c&aacute;ch năng động, tự tin cho ph&aacute;i mạnh. Kiểu d&aacute;ng &aacute;o hiện đại phối c&ugrave;ng hai t&uacute;i trước mang lại sự tiện lợi, thoải m&aacute;i, kh&ocirc;ng k&eacute;m phần fashion cho người mặc.&nbsp;</p>\r\n\r\n<p>Đường chỉ may cực kỳ tỉ mỉ, tinh tế c&ugrave;ng với phần n&uacute;t &aacute;o bằng kim loại si&ecirc;u đẹp, bền bỉ gi&uacute;p cho người mặc c&oacute; form &aacute;o đẹp, kh&ocirc;ng lo bị g&ograve; b&oacute;, tự tin trong mọi hoạt động.</p>\r\n\r\n<p>Điểm nổi bật nhất của mẫu &aacute;o kho&aacute;c nam bomber đẹp HIDDLE l&agrave; những đường viền thẳng m&agrave;u trắng tr&ecirc;n cổ, tay v&agrave; đai &aacute;o kết hợp c&ugrave;ng với m&agrave;u đen chủ đạo đem lại cho người mặc sự thời thượng, hiện đại, kh&ocirc;ng lo bị lỗi mốt.</p>\r\n\r\n<p>- Chất liệu vải 2 lớp: lớp ngo&agrave;i kaki sờ v&agrave;o rất mềm mại, kh&ocirc;ng bị th&ocirc; cứng hay x&ugrave; vải. C&ograve;n lớp b&ecirc;n trong l&agrave; lớp d&ugrave; mịn. Tạo cảm gi&aacute;c thoải m&aacute;i cho da khi mặc. &Aacute;o kho&aacute;c bomber nam cao cấp HIDDLE bền đẹp, c&oacute; khả năng chống nhăn, thấm h&uacute;t mồ h&ocirc;i tốt đem lại cảm gi&aacute;c th&ocirc;ng tho&aacute;ng, thoải m&aacute;i cho ph&aacute;i nam khi diện.</p>\r\n\r\n<p>- &Aacute;o kho&aacute;c nam d&aacute;ng bomber HIDDLE: kh&ocirc;ng chỉ mang lại thiết kế tiện lợi m&agrave; c&ograve;n gi&uacute;p cho người d&ugrave;ng bảo vệ được l&agrave;n da trước mọi loại thời tiết nắng n&oacute;ng cho đến đ&ocirc;ng lạnh. Ngo&agrave;i ra, c&ograve;n gi&uacute;p người mặc thể hiện được c&aacute; t&iacute;nh, gu thời trang của m&igrave;nh.&nbsp;</p>\r\n\r\n<p>- Phối đồ: Mẫu &aacute;o n&agrave;y cực kỳ dễ kết hợp với nhiều trang phục kh&aacute;c nhau như &aacute;o thun, hoodie, quần jean,... gi&uacute;p người mặc thể hiện được c&aacute; t&iacute;nh, sự trẻ trung, thanh lịch mỗi khi xuất hiện.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/399/392/files/ao-khoac-nam-bomber-varsity-hiddle.jpg?v=1637426344523\" /></p>\r\n\r\n<h2><strong>Những tips phối đồ với &aacute;o kho&aacute;c nam bomber kaki HIDDLE</strong></h2>\r\n\r\n<p>Mix &aacute;o g&igrave; để ph&ugrave; hợp nhất với áo kho&aacute;c bomber nam đen Hiddle để tạo n&ecirc;n phong c&aacute;ch c&aacute; t&iacute;nh v&agrave; thời thượng nh&acirc;́t cho người mặc. Sau đ&acirc;y Hiddle sẽ chia sẻ v&agrave;i tip phối c&ugrave;ng với &aacute;o kho&aacute;c Bomber nhằm gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; nhiều sự lựa chọn hơn trong việc mix &amp; match mỗi khi ra ngo&agrave;i.</p>\r\n\r\n<h3><strong>1. Áo kho&aacute;c bomber nam đen HIDDLE kết hợp với &aacute;o c&ocirc;̉ lọ</strong></h3>\r\n\r\n<p>Mỗi khi đến m&ugrave;a đ&ocirc;ng, th&igrave; hầu như trong tủ đồ của c&aacute;c ch&agrave;ng trai lu&ocirc;n c&oacute; v&agrave;i chiếc &aacute;o cổ lọ. &Aacute;o kho&aacute;c nam d&aacute;ng Bomber Varsity HIDDLE khi mix c&ugrave;ng &aacute;o cổ lọ sẽ tạo ra một outfit đơn giản, trẻ trung nhưng kh&ocirc;ng k&eacute;m phần nam t&iacute;nh. Outfit n&agrave;y cực kỳ ph&ugrave; hợp để đi chơi v&agrave; ra đường h&agrave;ng ng&agrave;y.</p>\r\n\r\n<h3><strong>2. &Aacute;o kho&aacute;c bomber nam đen HIDDLE kết hợp với áo sơ mi</strong></h3>\r\n\r\n<p>Nếu c&aacute;c ch&agrave;ng trai theo phong c&aacute;ch nghi&ecirc;m t&uacute;c, chỉnh chu nhưng vẫn thoải m&aacute;i, th&igrave; đ&acirc;y ch&iacute;nh l&agrave; set đồ ho&agrave;n to&agrave;n ph&ugrave; hợp. Đảm bảo khi c&aacute;c ch&agrave;ng trai kết hợp &aacute;o kho&aacute;c Bomber với &aacute;o sơ mi sẽ v&ocirc; c&ugrave;ng h&agrave;i l&ograve;ng bởi v&igrave; outfit n&agrave;y sẽ khiến c&aacute;c ch&agrave;ng trai c&oacute; được vẻ ngo&agrave;i tươm tất, lịch thiệp của m&igrave;nh.</p>\r\n\r\n<h3><strong>3. &Aacute;o kho&aacute;c bomber nam đen HIDDLE&nbsp; kết hợp với &aacute;o thun</strong></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; set đồ đơn giản, basic nhưng khi kết hợp lại với nhau th&igrave; sẽ tạo n&ecirc;n một outfit rất đẹp v&agrave; thu h&uacute;t mọi người xung quanh. &Aacute;o kho&aacute;c Bomber khi kết hợp với &aacute;o thun/ph&ocirc;ng rất được nhiều ch&agrave;ng trai bận rộn ưa chuộng bởi t&iacute;nh tiện dụng.</p>\r\n\r\n<h3><strong>4. &Aacute;o kho&aacute;c bomber nam đen HIDDLE&nbsp; kết hợp với &aacute;o Hoodie</strong></h3>\r\n\r\n<p>&Aacute;o kho&aacute;c Bomber sẽ th&ecirc;m phần năng động, c&aacute; t&iacute;nh khi kết hợp c&ugrave;ng với &aacute;o Hoodie. Khi mix giữa &aacute;o kho&aacute;c Bomber với &aacute;o Hoodie sẽ đem tới cho c&aacute;c ch&agrave;ng trai một diện mạo mới lạ, trẻ trung, c&aacute; t&iacute;nh. Đ&acirc;y l&agrave; combo kết hợp cực kỳ ho&agrave;n hảo cho c&aacute;c ch&agrave;ng trai năng động, hiện đại v&agrave;o m&ugrave;a đ&ocirc;ng.</p>\r\n\r\n<h2><strong>Bảng size &aacute;o kho&aacute;c nam HIDDLE Bomber Varsity</strong></h2>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; th&ocirc;ng số size &aacute;o kho&aacute;c bomber nam HIDDLE hy vọng sẽ gi&uacute;p kh&aacute;ch h&agrave;ng lựa chọn được form &aacute;o ph&ugrave; hợp nhất.</p>\r\n\r\n<p>-&nbsp;<strong>Size M &aacute;o kho&aacute;c nam bomber kaki HIDDLE&nbsp;</strong>c&oacute;: Chiều d&agrave;i &aacute;o 67cm, chiều rộng 56cm, chiều d&agrave;i tay &aacute;o 58cm, độ d&agrave;i ngang vai &aacute;o 48cm.</p>\r\n\r\n<p>-&nbsp;<strong>Size L &aacute;o kho&aacute;c nam bomber kaki HIDDLE</strong>&nbsp;c&oacute;: Chiều d&agrave;i &aacute;o 68cm, chiều rộng 60cm, chiều d&agrave;i tay &aacute;o 59cm, độ d&agrave;i ngang vai &aacute;o 50cm.</p>\r\n\r\n<p>-&nbsp;<strong>Size XL &aacute;o kho&aacute;c nam bomber kaki HIDDLE</strong>&nbsp;c&oacute;: Chiều d&agrave;i &aacute;o 71cm, chiều rộng 62cm, chiều d&agrave;i tay &aacute;o 60cm, độ d&agrave;i ngang vai &aacute;o 52cm.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/thumb/1024x1024/100/399/392/products/ban-sao-cua-orange-timeline-gantt-chart.jpg\" /></p>\r\n\r\n<h2><strong>Hướng dẫn bảo quản &aacute;o kho&aacute;c nam bomber kaki HIDDLE</strong></h2>\r\n\r\n<p>1. Kh&ocirc;ng n&ecirc;n sử dụng nước n&oacute;ng khi giặt &aacute;o kho&aacute;c nam Bomber Varsity HIDDLE v&igrave; dễ g&acirc;y t&igrave;nh trạng co vải dẫn đến mất form &aacute;o.</p>\r\n\r\n<p>2. N&ecirc;n vắt nhẹ nh&agrave;ng v&agrave; kh&ocirc;ng phơi trực tiếp dưới nắng lớn của mặt trời.</p>\r\n\r\n<p>3. Sử dụng b&agrave;n l&agrave; n&ecirc;n để ở nhiệt độ trung b&igrave;nh.</p>\r\n\r\n<p>4. N&ecirc;n giặt &aacute;o kho&aacute;c Bomber bằng tay nhiều hơn l&agrave; sử dụng m&aacute;y giặt sẽ gi&uacute;p &aacute;o kho&aacute;c nam varsity HIDDLE bền đẹp v&agrave; được bảo quản l&acirc;u hơn.</p>\r\n\r\n<p>5. Kh&ocirc;ng được ng&acirc;m &aacute;o qu&aacute; l&acirc;u trong dung dịch c&oacute; chất tẩy mạnh.</p>\r\n\r\n<h2><strong>CH&Iacute;NH S&Aacute;CH &amp;&nbsp;CAM KẾT</strong></h2>\r\n\r\n<p>- Sản phẩm &aacute;o kho&aacute;c Bomber được chụp v&agrave; đăng tải l&ecirc;n fanpage giống ảnh &aacute;o nhận ngo&agrave;i đời 99,99% (0,01% c&ograve;n lại l&agrave; sự ch&ecirc;nh lệch m&agrave;u sắc của sản phẩm do &aacute;nh s&aacute;ng của m&agrave;n h&igrave;nh điện thoại ảnh hưởng). Nhưng kh&aacute;ch h&agrave;ng y&ecirc;n t&acirc;m bởi những h&igrave;nh ảnh sản phẩm đều được chụp tại studio của Hiddle bằng m&aacute;y ảnh r&otilde; n&eacute;t kh&ocirc;ng lo về m&agrave;u sắc &aacute;o kh&ocirc;ng giống h&igrave;nh.&nbsp;</p>\r\n\r\n<p>- &Aacute;o kho&aacute;c Bomber nam h&agrave;ng hiệu HIDDLE được sản xuất v&agrave; thiết kế độc quyền tại Việt Nam.</p>\r\n\r\n<p>- H&agrave;ng trước khi gửi cho kh&aacute;ch h&agrave;ng sẽ được đội ngũ nh&acirc;n vi&ecirc;n Hiddle kiểm tra, đ&oacute;ng g&oacute;i cẩn thận.</p>\r\n\r\n<p>- Sẽ được ho&agrave;n trả sản phẩm nếu &aacute;o kho&aacute;c Bomber bị sai k&iacute;ch thước, gửi kh&ocirc;ng đ&uacute;ng mẫu, kh&ocirc;ng giống h&igrave;nh trong v&ograve;ng 7 ng&agrave;y ( Lưu &yacute; sản phẩm vẫn c&ograve;n giữ nguy&ecirc;n tem m&aacute;c, kh&ocirc;ng bị hư hỏng v&agrave; chưa được sử dụng ).</p>\r\n\r\n<p>Thời tiết đang trong giai đoạn chuyển m&ugrave;a, &aacute;o kho&aacute;c bomber nam cao cấp HIDDLE sẽ gi&uacute;p bạn ng&agrave;y c&agrave;ng đẹp v&agrave; nổi bật hơn. Với chất liệu vải kaki d&agrave;y dặn, vượt trội gi&uacute;p bạn che nắng, che mưa v&agrave; giữ ấm cho cơ thể. Sắm ngay mẫu &aacute;o kho&aacute;c Bomber Varsity mới nhất v&agrave; thời thượng nhất với xu hướng thời trang năm nay tại cửa h&agrave;ng&nbsp;<a href=\"https://quanaonam.vn/\">quần &aacute;o nam Hiddle</a>&nbsp;nh&eacute;!</p>', 1, NULL, NULL, NULL, 1, 0, 49, NULL, '2021-05-21 22:33:14', '2022-01-22 21:36:07');
INSERT INTO `products` (`id`, `name`, `cate_id`, `price`, `slug`, `image`, `description`, `hot`, `seo_title`, `seo_description`, `seo_keyword`, `status`, `promotion`, `qty`, `supplier`, `created_at`, `updated_at`) VALUES
(34, 'Áo khoác Bomber Varsity tay phối da trắng', 13, 275000, 'ao-khoac-bomber-varsity-tay-phoi-da-trang', '1642912454_ao-khoac-nam-bomber-kaki-varsity-tay-phoi-da-jacket-nam-hiddle-2-mau-4.jpg', '<h2><strong>M&ocirc; tả chi tiết &aacute;o kho&aacute;c bomber Varsity HIDDLE tay phối da trắng</strong></h2>\r\n\r\n<p>- Thiết kế: Với sự đa dạng v&agrave; phong ph&uacute; về kiểu c&aacute;ch thiết kế, những mẫu &aacute;o kho&aacute;c bomber nam đen HIDDLE ng&agrave;y c&agrave;ng được đổi mới tinh tế hơn. Tuy đơn giản nhưng phần c&aacute;nh tay phối da c&aacute;ch điệu tr&ecirc;n &aacute;o kho&aacute;c bomber nam Varsity cao cấp HIDDLE, gi&uacute;p người mặc to&aacute;t l&ecirc;n được vẻ ngo&agrave;i c&aacute; t&iacute;nh, hiện đại v&agrave; trẻ trung.</p>\r\n\r\n<p>- Chất vải: &Aacute;o kho&aacute;c nam Bomber Varsity tay phối da trắng HIDDLE được may từ chất liệu vải kaki cotton d&agrave;y dặn, &iacute;t nhăn v&agrave; kh&ocirc;ng g&acirc;y x&ugrave; l&ocirc;ng, dễ d&agrave;ng giặt dũ.&nbsp;</p>\r\n\r\n<p>- T&uacute;i &aacute;o: Điểm nhấn nổi bật của &aacute;o kho&aacute;c bomber nam h&agrave;ng hiệu HIDDLE l&agrave; phần t&uacute;i &aacute;o được thiết kế bắt mắt, độc đ&aacute;o với phần da m&agrave;u trắng si&ecirc;u bền, đem lại tổng thể &aacute;o đẹp mắt, thu h&uacute;t mọi &aacute;nh nh&igrave;n.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/thumb/1024x1024/100/399/392/products/2-1.png\" /></p>\r\n\r\n<h2><strong>C&aacute;ch phối đồ với &aacute;o kho&aacute;c bomber nam Varsity phối da trắng cao cấp HIDDLE</strong></h2>\r\n\r\n<h3><em>1. &Aacute;o kho&aacute;c nam bomber tay phối da trắng HIDDLE kết hợp với &aacute;o thun họa tiết v&agrave; quần Jeans xanh</em></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; outfit đơn giản, cực kỳ ph&ugrave; hợp v&agrave;o m&ugrave;a xu&acirc;n mang lại cảm gi&aacute;c tươi mới cho người mặc. Với outfit n&agrave;y bạn c&oacute; thể diện hằng ng&agrave;y ở mọi kh&ocirc;ng gian, ho&agrave;n cảnh kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<h3><em>2. &Aacute;o kho&aacute;c nam bomber tay phối da trắng HIDDLE kết hợp với áo len beige + qu&acirc;̀n jeans đen</em></h3>\r\n\r\n<p>Có th&ecirc;̉ nói đ&acirc;y là phong cách phù hợp với những chàng trai có t&acirc;m h&ocirc;̀n ngh&ecirc;̣ sĩ thích sự n&ocirc;̉i b&acirc;̣t v&agrave; ph&oacute;ng kho&aacute;ng. Outfit n&agrave;y cực kỳ th&iacute;ch hợp vào mùa thu đ&ocirc;ng gi&uacute;p c&aacute;c ch&agrave;ng trai giữ ấm cơ thể v&agrave; mang lại sự lịch l&atilde;m, thanh lịch cho người mặc.</p>\r\n\r\n<h3><em>3. &Aacute;o kho&aacute;c nam bomber tay phối da trắng HIDDLE kết hợp với áo hoodie + qu&acirc;̀n kaki beige</em></h3>\r\n\r\n<p>Đ&acirc;y là outfit mang phong cách streetwear cực kì quen thu&ocirc;̣c tr&ecirc;n đường ph&ocirc;́ New York được c&aacute;c ng&ocirc;i sao Kpop ưa chuộng v&agrave; thường xuy&ecirc;n diện h&agrave;ng ng&agrave;y. Với outfit n&agrave;y sẽ gi&uacute;p c&aacute;c ch&agrave;ng trai thể hiện được c&aacute; t&iacute;nh ri&ecirc;ng của m&igrave;nh, thu h&uacute;t mọi &aacute;nh nh&igrave;n v&agrave; gi&uacute;p c&aacute;c ch&agrave;ng trai nổi bật giữa đ&aacute;m đ&ocirc;ng.</p>\r\n\r\n<h2><strong>Bảng size &aacute;o kho&aacute;c Bomber Varsity nam h&agrave;ng hiệu HIDDLE</strong></h2>\r\n\r\n<p><strong><img src=\"https://bizweb.dktcdn.net/thumb/1024x1024/100/399/392/products/ao-khoac-nam-bomber-kaki-varsity-tay-phoi-da-jacket-nam-hiddle.jpg\" /></strong></p>\r\n\r\n<p><em>-&nbsp;<strong>Size M</strong>&nbsp;&aacute;o kho&aacute;c nam Bomber Varsity tay phối da trắng HIDDLE:</em>&nbsp;Chiều d&agrave;i 68cm, chiều rộng 59cm, chiều ngang vai &aacute;o 50cm, độ d&agrave;i tay &aacute;o 60cm.</p>\r\n\r\n<p><em>-&nbsp;<strong>Size L</strong>&nbsp;&aacute;o kho&aacute;c nam Bomber Varsity tay phối da trắng HIDDLE:</em>&nbsp;Chiều d&agrave;i 70cm, chiều rộng 61cm, chiều ngang vai &aacute;o 52cm, độ d&agrave;i tay &aacute;o 62cm.</p>\r\n\r\n<p><em>-&nbsp;<strong>Size XL</strong>&nbsp;&aacute;o kho&aacute;c nam Bomber Varsity tay phối da trắng HIDDLE:</em>&nbsp;Chiều d&agrave;i 72cm, chiều rộng 63cm, chiều ngang vai &aacute;o 54cm, độ d&agrave;i tay &aacute;o 64cm.</p>\r\n\r\n<h2><strong>Hướng dẫn bảo quản &aacute;o kho&aacute;c nam Bomber Varsity Hiddle tay phối da trắng</strong></h2>\r\n\r\n<p>1. N&ecirc;n giặt &aacute;o kho&aacute;c bomber nam đen HIDDLE ở nhiệt độ thường, chu kỳ ngắn (kh&ocirc;ng giặt &aacute;o ở nhiệt độ tr&ecirc;n 40 độ)</p>\r\n\r\n<p>2. Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy rửa hoặc c&aacute;c h&oacute;a chất tương tự cho &aacute;o&nbsp; kho&aacute;c nam d&aacute;ng bomber HIDDLE</p>\r\n\r\n<p>3. Sau khi giặt, kh&ocirc;ng n&ecirc;n vắt &aacute;o kho&aacute;c nam bomber đẹp HIDDLE qu&aacute; mạnh.</p>\r\n\r\n<p>4. Tr&aacute;nh sử dụng c&aacute;c m&aacute;y tương tự như m&aacute;y sấy để l&agrave;m kh&ocirc; &aacute;o kho&aacute;c nam bomber tay phối da trắng HIDDLE.&nbsp;</p>\r\n\r\n<p>5. Kh&ocirc;ng để &aacute;o kho&aacute;c nam bomber đẹp HIDDLE ở nơi mốc meo, ẩm thấp.</p>\r\n\r\n<p>6. Khi l&agrave; &aacute;o kho&aacute;c bomber nam đen HIDDLE n&ecirc;n lộn tr&aacute;i &aacute;o trở lại v&agrave; để ở nhiệt độ th&iacute;ch hợp.</p>\r\n\r\n<h2><strong>CH&Iacute;NH S&Aacute;CH &amp; CAM KẾT</strong></h2>\r\n\r\n<p>- Sản phẩm &aacute;o kho&aacute;c Bomber Varsity tay phối da trắng HIDDLE do Hiddle tự thiết kế v&agrave; sản xuất độc quyền tại nh&agrave; m&aacute;y.&nbsp;</p>\r\n\r\n<p>- Cam kết &aacute;o kho&aacute;c Bomber Varsity tay phối da trắng HIDDLE ch&iacute;nh h&atilde;ng v&agrave; giống h&igrave;nh 100%.&nbsp;</p>\r\n\r\n<p>- Cam kết đổi size &aacute;o kho&aacute;c bomber nam Varsity cao cấp HIDDLE nếu sản phẩm kh&aacute;ch đặt kh&ocirc;ng vừa với v&oacute;c d&aacute;ng của m&igrave;nh (Lưu &yacute;: &aacute;o vẫn giữ nguy&ecirc;n Tem m&aacute;c v&agrave; chưa được sử dụng).</p>\r\n\r\n<p>- Cam kết hỗ trợ chi ph&iacute; 100% nếu shop kh&ocirc;ng gửi đ&uacute;ng sản phẩm &aacute;o kho&aacute;c bomber nam h&agrave;ng hiệu HIDDLE tới kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; mẫu &aacute;o kho&aacute;c nam Bomber Varsity tay phối da trắng HIDDLE tuy đơn giản nhưng kh&ocirc;ng hề k&eacute;m &ldquo;sang&rdquo; gi&uacute;p c&aacute;c ch&agrave;ng trai nổi bật trong những ng&agrave;y vui. Nếu đang t&igrave;m kiếm địa chỉ &aacute;o kho&aacute;c nam bomber đẹp, gi&aacute; rẻ chất lượng, h&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://quanaonam.vn/\">shop thời trang nam Hiddle</a>&nbsp;để được tư vấn chi tiết nh&eacute;!</p>', 1, NULL, NULL, NULL, 1, 0, 100, NULL, '2021-05-21 22:36:10', '2022-01-22 21:34:14'),
(35, 'Quần jean nam trơn ôm', 12, 165000, 'quan-jean-nam-tron-om', '1642912374_q-rs.jpg', '<h2><strong>M&ocirc; tả chi tiết Quần jean nam đen trơn &ocirc;m HIDDLE</strong></h2>\r\n\r\n<p>- Chất vải: Quần jean nam h&agrave;ng hiệu HIDDLE sử dụng chất liệu jeans cotton co gi&atilde;n, d&agrave;y dặn, bền đẹp mang đến cảm gi&aacute;c dễ chịu v&agrave; thoải m&aacute;i cho người mặc.</p>\r\n\r\n<p>- Phong c&aacute;ch thiết kế quần jean nam trơn HIDDLE cực kỳ s&agrave;nh điệu, thời trang v&agrave; phong c&aacute;ch. Đi c&ugrave;ng với m&agrave;u đen trơn l&agrave;m m&agrave;u chủ đạo th&igrave; mẫu quần Jean Basic n&agrave;y kh&ocirc;ng lo bị lỗi mốt v&agrave; c&oacute; thể tự tin diện ở bất kỳ nơi đ&acirc;u.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, mẫu quần jean n&agrave;y c&ograve;n được Hiddle thiết kế th&ecirc;m hai t&uacute;i x&eacute;o ở ph&iacute;a trước v&agrave; 2 t&uacute;i sau c&oacute; độ to v&agrave; rộng vừa phải cực kỳ tiện dụng. V&agrave; được đội ngũ nh&acirc;n vi&ecirc;n may tại nh&agrave; m&aacute;y Hiddle kỹ c&agrave;ng, tỉ mỉ, tinh tế tới từng đường chỉ d&ugrave; l&agrave; những chi tiết nhỏ nhất.</p>\r\n\r\n<p>Mẫu quần jean nam &ocirc;m ch&acirc;n HIDDLE c&oacute; thể c&acirc;n tất được mọi phong c&aacute;ch thời trang. T&ugrave;y v&agrave;o c&aacute;ch mix &amp; match theo sở th&iacute;ch của người mặc m&agrave; c&oacute; thể biến đổi th&agrave;nh nhiều gu thời trang kh&aacute;c nhau từ lịch sự, c&aacute; t&iacute;nh hay năng động th&igrave; cũng đều ph&ugrave; hợp.</p>\r\n\r\n<h2><strong>Bảng size quần jean nam chuẩn h&agrave;ng hiệu HIDDLE</strong></h2>\r\n\r\n<p>Sau đ&acirc;y Hiddle sẽ chia sẻ bảng size quần jean nam cao cấp HIDDLE. Với hy vọng c&aacute;c ch&agrave;ng trai c&oacute; thể lựa chọn được size quần ph&ugrave; hợp với m&igrave;nh nhất.</p>\r\n\r\n<p>-&nbsp;<em><strong>Size M Quần jean nam đen trơn HIDDLE</strong></em>&nbsp;c&oacute;: chiều d&agrave;i 101cm, độ rộng của ống quần 14cm, độ d&agrave;i ngang lưng 38cm.</p>\r\n\r\n<p>-&nbsp;<em><strong>Size L&nbsp;Quần jean nam đen trơn HIDDLE</strong></em>&nbsp;c&oacute;: chiều d&agrave;i 102cm, độ rộng của ống quần 15cm, độ d&agrave;i ngang lưng 40cm.</p>\r\n\r\n<p>-&nbsp;<em><strong>Size XL Quần jean nam đen trơn HIDDLE</strong></em>&nbsp;c&oacute;: chiều d&agrave;i 104cm, độ rộng của ống quần 16cm, độ d&agrave;i ngang lưng 43cm.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/399/392/files/quan-jean-nam-cao-cap-tron-om-hiddle.jpg?v=1637468548660\" /></p>\r\n\r\n<p><strong>Ch&uacute; &yacute;:</strong>&nbsp;Th&ocirc;ng số quần jean nam đen HIDDLE sẽ c&oacute; sai số nhỏ (từ 2 đến 3cm) do độ co r&uacute;t của vải.</p>\r\n\r\n<h2><strong>Những tip mix &aacute;o với quần jean nam đen trơn HIDDLE</strong></h2>\r\n\r\n<p>Bạn đ&atilde; biết c&aacute;ch phối quần jean với &aacute;o như thế n&agrave;o sẽ ph&ugrave; hợp nhất chưa? Sau đ&acirc;y Hiddle xin chia sẻ v&agrave;i tip phối đồ với quần jean đen trơn ở ph&iacute;a dưới đ&acirc;y, hy vọng c&aacute;c ch&agrave;ng trai sẽ th&iacute;ch.&nbsp;</p>\r\n\r\n<h3><em><strong>1. Quần Jean nam đen trơn HIDDLE kết hợp với &aacute;o ph&ocirc;ng form rộng</strong></em></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; outfit kinh điển v&agrave; rất được sử dụng cực kỳ phổ biến của tất cả c&aacute;c ch&agrave;ng trai. Đi k&egrave;m theo l&agrave; những phụ kiện như gi&agrave;y v&agrave; mắt k&iacute;nh sẽ khiến c&aacute;c ch&agrave;ng trai khi diện l&ecirc;n sẽ ho&agrave;n hảo hơn rất nhiều.</p>\r\n\r\n<p>Ngo&agrave;i ra, với outfit n&agrave;y c&aacute;c ch&agrave;ng trai cũng c&oacute; thể kho&aacute;c l&ecirc;n những chiếc &aacute;o bomber, denim, &aacute;o kho&aacute;c da hay thậm ch&iacute; l&agrave; cả những chiếc &aacute;o vest, blazer đều rất đẹp mắt v&agrave; thu h&uacute;t mọi &aacute;nh nh&igrave;n xung quanh.&nbsp;</p>\r\n\r\n<h3><em><strong>2. Quần Jean nam đen trơn HIDDLE kết hợp với &aacute;o sơ mi</strong></em></h3>\r\n\r\n<p>Đ&acirc;y outfit cực kỳ lịch l&atilde;m, nam t&iacute;nh, ph&oacute;ng kho&aacute;ng nhưng cũng kh&ocirc;ng k&eacute;m phần c&aacute; t&iacute;nh v&agrave; đậm chất style casual. Chỉ cần bạn kho&aacute;c một chiếc &aacute;o da th&ecirc;m ở b&ecirc;n ngo&agrave;i, 1 đ&ocirc;i boot v&agrave; 1 đ&ocirc;i mắt k&iacute;nh r&acirc;m m&agrave;u đen l&agrave; bạn đ&atilde; cực kỳ fashion v&agrave; c&oacute; thể tự tin để diện đi ngo&agrave;i. Đ&acirc;y l&agrave; outfit rất được nghệ sĩ v&agrave; c&aacute;c t&iacute;n đồ thời trang cực kỳ y&ecirc;u th&iacute;ch v&agrave; thường xuy&ecirc;n diện bản phối n&agrave;y.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<h3><em><strong>3. Quần Jean nam đen trơn HIDDLE kết hợp với &aacute;o kẻ caro</strong></em></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; bản phối cực kỳ trẻ trung, năng động v&agrave; rất được c&aacute;c ng&ocirc;i sao nam H&agrave;n Quốc lăng x&ecirc;. Nếu c&aacute;c ch&agrave;ng trai đang theo đuổi phong c&aacute;ch H&agrave;n Quốc th&igrave; kh&ocirc;ng thể bỏ qua được outfit n&agrave;y. Đi k&egrave;m theo l&agrave; 1 đ&ocirc;i sneaker v&agrave; những phụ kiện như nhẫn, d&acirc;y chuyền th&igrave; sẽ rất tuyệt vời v&agrave; ho&agrave;n hảo cho outfit n&agrave;y.&nbsp;</p>\r\n\r\n<h2><strong>Hướng dẫn bảo quản quần jean nam HIDDLE</strong></h2>\r\n\r\n<p>Sau đ&acirc;y l&agrave; v&agrave;i c&aacute;ch bảo quản quần b&ograve; jean nam HIDDLE hy vọng th&ocirc;ng qua đ&acirc;y kh&aacute;ch h&agrave;ng c&oacute; thể bảo quản chiếc quần y&ecirc;u qu&yacute; của m&igrave;nh một c&aacute;ch tốt nhất.</p>\r\n\r\n<p>1. Kh&ocirc;ng n&ecirc;n giặt bằng nước n&oacute;ng m&agrave; kh&aacute;ch h&agrave;ng n&ecirc;n sử dụng nước lạnh để giặt quần jean. L&agrave;m như vậy sẽ gi&uacute;p giữ được m&agrave;u quần jean l&acirc;u hơn v&agrave; sợi vải kh&ocirc;ng lo bị sờn cũ.&nbsp;</p>\r\n\r\n<p>2. Chỉ n&ecirc;n ng&acirc;m quần jean trong nước qu&aacute; n&oacute;ng. Kh&ocirc;ng ng&acirc;m quần jeans qu&aacute; l&acirc;u, chỉ n&ecirc;n ng&acirc;m trong tầm 3 - 5 ph&uacute;t, nếu quần c&oacute; dấu hiệu bị phai m&agrave;u th&igrave; phải xả sạch v&agrave; phơi ngay.</p>\r\n\r\n<p>3. Kh&ocirc;ng n&ecirc;n phơi quần jeans ở nhiệt độ ngo&agrave;i trời qu&aacute; 30 độ C để tr&aacute;nh t&igrave;nh trạng quần bị bạc hay phai m&agrave;u.</p>\r\n\r\n<p>4. N&ecirc;n sử dụng b&agrave;n l&agrave; hơi nước cho quần jeans để k&eacute;o d&agrave;i tuổi thọ.</p>\r\n\r\n<h2><strong>Cam kết &amp; Ch&iacute;nh s&aacute;ch mua h&agrave;ng hoặc đổi trả tại Hiddle Việt Nam</strong></h2>\r\n\r\n<p>- Sản phẩm quần jean nam b&oacute; HIDDLE được sản xuất v&agrave; tự thiết kế tại nh&agrave; m&aacute;y độc quyền Hiddle Việt Nam.&nbsp;</p>\r\n\r\n<p>- Cam kết quần jean được đăng tải l&ecirc;n giống h&igrave;nh 100%.</p>\r\n\r\n<p>- Hỗ trợ đổi trả quần jean nếu kh&aacute;ch h&agrave;ng đặt kh&ocirc;ng vừa size hoặc h&agrave;ng bị lỗi.</p>\r\n\r\n<p>- Đặc biệt l&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra quần jean trước rồi mới thanh to&aacute;n tiền để tr&aacute;nh trường hợp đổi trả tốn thời gian của kh&aacute;ch.</p>\r\n\r\n<p>Quần jeans &ocirc;m ch&iacute;nh l&agrave; loại trang phục phổ biến tr&ecirc;n thế giới v&agrave; bạn c&oacute; thể bắt gặp ở bất cứ nơi đ&acirc;u. Nhờ v&agrave;o sự tiện lợi, thoải m&aacute;i v&agrave; kh&ocirc;ng bao giờ lỗi thời n&ecirc;n quần jeans &ocirc;m trơn Hiddle lu&ocirc;n chiếm được một vị tr&iacute; nhất định trong tủ quần &aacute;o của c&aacute;c ch&agrave;ng trai d&ugrave; mẫu quần n&agrave;y đ&atilde; xuất hiện từ l&acirc;u.</p>\r\n\r\n<p>Nếu bạn đang t&igrave;m kiếm hoặc muốn mua một chiếc quần jean nam HIDDLE &ocirc;m body th&igrave; h&atilde;y gh&eacute; ngay Hiddle. Ở đ&acirc;y ch&uacute;ng t&ocirc;i c&oacute; tất cả c&aacute;c loại&nbsp;<a href=\"https://quanaonam.vn/\">quần &aacute;o nam ch&iacute;nh h&atilde;ng</a>, chất lượng cao c&ugrave;ng với gi&aacute; th&agrave;nh phải chăng n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể y&ecirc;n t&acirc;m về sản phẩm.</p>\r\n\r\n<p>&nbsp;</p>', 1, NULL, NULL, NULL, 1, 0, 44, NULL, '2021-05-21 22:37:09', '2022-01-22 22:09:46'),
(36, 'Áo polo tay phối đen 25112101', 13, 395000, 'ao-polo-tay-phoi-den-25112101', '1642911885_ao-polo-nam-tay-phoi-mau-trang-den-ao-thun-nam-co-co-hiddle-25112101.jpg', '<p>&nbsp;</p>\r\n\r\n<p><strong>&Aacute;o Polo nam tay phối m&agrave;u trắng đen HIDDLE</strong>&nbsp;lu&ocirc;n nằm trong số những mẫu &aacute;o Polo c&oacute; doanh thu b&aacute;n chạy nhất Hiddle. Bởi &aacute;o polo nam đen th&ecirc;u chữ nổi mang đến sự năng động, thoải m&aacute;i cho người mặc nhưng vẫn giữ được sự lịch sự cần thiết. Đồng thời mẫu &aacute;o n&agrave;y c&ograve;n v&ocirc; c&ugrave;ng tiện dụng khi Hiddle tận dụng m&agrave;u đen basic, ph&ugrave; hợp với mọi đối tượng v&agrave; dễ phối đồ n&ecirc;n rất được c&aacute;c t&iacute;n đồ thời trang nam y&ecirc;u th&iacute;ch.</p>\r\n\r\n<h2><strong>M&Ocirc; TẢ CHI TIẾT &Aacute;O THUN POLO NAM HIDDLE&nbsp;</strong><strong>TAY PHỐI M&Agrave;U TRẮNG ĐEN</strong></h2>\r\n\r\n<p>- &Aacute;o thun Polo nam tay phối m&agrave;u trắng đen 100% được thiết kế v&agrave; sản xuất độc quyền bởi Hiddle. N&ecirc;n bạn ho&agrave;n to&agrave;n&nbsp;y&ecirc;n t&acirc;m về chất lượng&nbsp;&aacute;o Polo Nam Hiddle&nbsp;nh&eacute;.</p>\r\n\r\n<p>- Form d&aacute;ng &aacute;o thun nam Polo tay phối m&agrave;u trắng đen: được may đo dựa tr&ecirc;n h&igrave;nh thể của đ&agrave;n &ocirc;ng Việt Nam. N&ecirc;n bạn c&oacute; thể an t&acirc;m kh&ocirc;ng lo về form &aacute;o gi&uacute;p người mặc c&oacute; thể tự tin khi sử dụng &aacute;o Polo tay phối m&agrave;u trắng đen</p>\r\n\r\n<p>- Chất vải: &Aacute;o thun Polo tay phối m&agrave;u trắng đen được Hiddle lựa chọn chất vải thun cotton co gi&atilde;n 4 chiều, đẹp mắt, mềm mại, bền. Hiddle rất tinh tế khi lựa chọn chất vải n&agrave;y, gi&uacute;p mang lại cảm gi&aacute;c thoải m&aacute;i, tho&aacute;ng m&aacute;t khi sử dụng &aacute;o Polo nam của Hiddle.</p>\r\n\r\n<h3><strong>ƯU ĐIỂM CHẤT VẢI THUN COTTON CO GI&Atilde;N 4 CHIỀU</strong></h3>\r\n\r\n<p>- Đặc điểm vải thun cotton co gi&atilde;n 4 chiều khi sử dụng để may cho &aacute;o Polo tay phối m&agrave;u trắng đen l&agrave; gi&uacute;p giữ form &aacute;o Polo rất tốt, kh&ocirc;ng bị gi&atilde;n v&agrave; c&oacute; độ bền rất cao.&nbsp;</p>\r\n\r\n<p>- Th&agrave;nh phần chủ yếu được sử dụng trong chất vải thun cotton co gi&atilde;n 4 chiều n&agrave;y l&agrave; sợi b&ocirc;ng tự nhi&ecirc;n ( chiếm 95%) v&agrave; sợi Spandex ( chiếm 5% ). Sợi Spandex chiếm &iacute;t % trong chất vải n&agrave;y nhưng lại c&oacute; vai tr&ograve; rất quan trọng. Gi&uacute;p tăng th&ecirc;m khả năng co gi&atilde;n v&agrave; b&oacute;ng mượt hơn cho vải &aacute;o Polo nam Hiddle tay phối m&agrave;u trắng đen</p>\r\n\r\n<p>- Với lượng lớn th&agrave;nh phần của chất vải n&agrave;y l&agrave; sợi cotton n&ecirc;n lu&ocirc;n tạo cảm gi&aacute;c mềm mại, c&oacute; khả năng thấm h&uacute;t v&agrave; tho&aacute;ng m&aacute;t cực cao. V&igrave; vậy, khi sử dụng &aacute;o Polo nam tay phối m&agrave;u trắng đen rất tho&aacute;ng m&aacute;t, dễ vận động m&agrave; kh&ocirc;ng sợ lưu lại mồ h&ocirc;i tr&ecirc;n &aacute;o.</p>\r\n\r\n<p>- Ngay từ c&aacute;i t&ecirc;n gọi ban đầu của chất vải n&agrave;y l&agrave; ch&uacute;ng ta đ&atilde; biết được vải c&oacute; đặc t&iacute;nh co gi&atilde;n rất tốt. Gi&uacute;p kh&aacute;ch h&agrave;ng khi mặc &aacute;o Polo nam tay phối m&agrave;u trắng đen thoải m&aacute;i trong mọi hoạt động m&agrave; kh&ocirc;ng bị g&ograve; b&oacute; bởi &aacute;o.</p>\r\n\r\n<p>- Chất vải n&agrave;y c&ograve;n c&oacute; khả năng thấm h&uacute;t m&agrave;u tốt.</p>\r\n\r\n<p>- Ngo&agrave;i ra, chất vải n&agrave;y rất mềm, mịn v&agrave; c&oacute; khả năng chống nhăn gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng giặt giũ v&agrave; bảo dưỡng &aacute;o Polo nam tay phối m&agrave;u trắng đen Hiddle.</p>\r\n\r\n<h2><strong>K&Iacute;CH THƯỚC &Aacute;O POLO NAM C&Oacute; CỔ HIDDLE&nbsp;</strong><strong>TAY PHỐI M&Agrave;U TRẮNG ĐEN</strong></h2>\r\n\r\n<p>Dưới đ&acirc;y Hiddle sẽ cung cấp th&ocirc;ng tin về bảng size &aacute;o Polo nam Hiddle tay phối m&agrave;u trắng đen&nbsp;gi&uacute;p bạn c&oacute; thể lựa chọn form &aacute;o ph&ugrave; hợp:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Size S</strong>: Chiều d&agrave;i &aacute;o 68cm, chiều rộng &aacute;o 48cm, độ d&agrave;i tay &aacute;o&nbsp; 20cm, ngang vai 40cm.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Size M</strong>: Chiều d&agrave;i &aacute;o 70cm, chiều rộng &aacute;o 50cm, độ d&agrave;i tay &aacute;o 21cm, ngang vai 42cm.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Size L</strong>: Chiều d&agrave;i &aacute;o 72cm, chiều rộng &aacute;o 52cm, độ d&agrave;i tay &aacute;o 22cm, ngang vai 44cm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>HƯỚNG DẪN BẢO QUẢN &Aacute;O POLO NAM HIDDLE&nbsp;</strong><strong>TAY PHỐI M&Agrave;U TRẮNG ĐEN</strong><strong>&nbsp;CỔ BẺ MAY LOGO CHỮ NỔI</strong></h2>\r\n\r\n<p>1. Kh&ocirc;ng n&ecirc;n giặt &aacute;o Polo nam tay phối m&agrave;u trắng đen&nbsp;ở nhiệt độ ngo&agrave;i trời qu&aacute; 40 độ C.</p>\r\n\r\n<p>2. Kh&ocirc;ng sử dụng c&aacute;c sản phẩm tương tự như chất tẩy rửa cho &aacute;o Polo nam tay phối m&agrave;u trắng đen</p>\r\n\r\n<p>3. Sau khi giặt, kh&ocirc;ng n&ecirc;n vắt &aacute;o Polo nam tay phối m&agrave;u trắng đen&nbsp;sẽ khiến &aacute;o bị nhầy.</p>\r\n\r\n<p>4. Tr&aacute;nh sử dụng m&aacute;y sấy hay c&aacute;c m&aacute;y tương tự để l&agrave;m kh&ocirc; &aacute;o thun nam Polo tay phối m&agrave;u trắng đen</p>\r\n\r\n<p>5. Kh&ocirc;ng để &aacute;o Polo nam tay phối m&agrave;u trắng đen&nbsp;ở nơi ẩm thấp, ẩm mốc sẽ khiến &aacute;o bị dơ, nổi mốc.</p>\r\n\r\n<p>6. Khi sử dụng b&agrave;n l&agrave; n&ecirc;n lộn tr&aacute;i &aacute;o Polo nam Hiddle tay phối m&agrave;u trắng đen v&agrave; kh&ocirc;ng để b&agrave;n l&agrave; ở nhiệt độ qu&aacute; cao.</p>\r\n\r\n<h2><strong>CH&Iacute;NH S&Aacute;CH V&Agrave; CAM KẾT</strong></h2>\r\n\r\n<p>- Cam kết 100% tất cả h&igrave;nh ảnh &aacute;o thun nam m&agrave;u đen cổ bẻ tay phối m&agrave;u trắng đen HIDDLE đều được Hiddle tự chụp v&agrave; đăng tải l&ecirc;n.&nbsp;</p>\r\n\r\n<p>- &Aacute;o Polo nam tay phối m&agrave;u trắng đen cam kết được thiết kế v&agrave; sản xuất độc quyền tại nh&agrave; m&aacute;y của Hiddle.</p>\r\n\r\n<p>- Hỗ trợ đổi size &aacute;o Polo nam Hiddle tay phối m&agrave;u trắng đen nếu sản phẩm kh&aacute;ch đặt kh&ocirc;ng vừa trong v&ograve;ng 5-7 ng&agrave;y kể từ khi nhận h&agrave;ng.</p>\r\n\r\n<p>Hiddle l&agrave; thương hiệu thời trang tại Việt Nam với mong muốn mang đến cho c&aacute;nh đ&agrave;n &ocirc;ng Việt những trải nghiệm tuyệt vời nhất về phong c&aacute;ch cao cấp v&agrave; xu hướng thời trang trẻ trung, thanh lịch trong từng bộ trang phục.&nbsp;</p>', 1, NULL, NULL, NULL, 1, 0, 1244, NULL, '2021-05-21 22:40:11', '2022-06-16 03:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `links` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `links`, `image`, `created_at`, `updated_at`) VALUES
(1, 'links slide 1q', '1642911721.jpg', '2020-07-03 18:21:30', '2022-01-22 21:22:01'),
(3, 'links slide 2', '1642911702.jpg', '2020-07-03 18:45:11', '2022-01-22 21:21:42'),
(4, 'links slide 3', '1642911728.jpg', '2020-07-03 18:45:22', '2022-01-22 21:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
