-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 05, 2019 lúc 06:46 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `trangtrinoithat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baogia`
--

CREATE TABLE `baogia` (
  `id` int(4) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Date` int(11) DEFAULT NULL,
  `Description` text CHARACTER SET utf8 DEFAULT NULL,
  `Active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `baogia`
--

INSERT INTO `baogia` (`id`, `Name`, `Phone`, `Email`, `Date`, `Description`, `Active`) VALUES
(15, 'tuan anh', '99999999', 'leanh@gmail.com', 1561738027, 'test gui mail', 0),
(17, 'tuan anh', '99999999', 'leanh@gmail.com', 1561739415, 'code test gui mail', 0),
(22, 'ipyicm', '87894438639', 'azagpqmrr@onlineusar.biz', 1565920006, 'safe online pharmacy to buy viagra http://canadian-pharmacyon.com  \r\n<a href=http://canadian-pharmacyon.com>cheap viagra pills</a> ', 0),
(23, 'Harlandtenna', '82471275343', 'noreplymonkeydigital@gmail.com', 1567225038, 'Hi there \r\nThe Local SEO package is built to rank local keywords for your local business in the google search and in google maps. We have researched for years what local SEO activities truly work and have put all in one single local SEO plan to accomplish the expected results and more. You will start seeing big increases in ranks from the 1st month of work already. You get monthly SEO reports and benchmark reports. \r\n \r\nhttps://monkeydigital.co/product/local-seo-package/ \r\n \r\nThanks and regards \r\nMike \r\nMonkey Digital \r\nmonkeydigital.co@gmail.com', 0),
(24, 'SystemsWeb Net', '954-320-4679', 'noreply@systemswebnet.com', 1567299213, 'Disclaimer statement: We are not legally liable for any losses or damages that you may incur due to the expiration of bacsisuamui.com. Such losses may include but are not limited to: financial loss, deleted data, downgrade of search rankings, missed customers, undelivered email and any other technical or business damages that you may incur. For more information please refer section 14.a.1.e of our Terms of Service. \n\n This is your final renewal notification for bacsisuamui.com: \n\n https://systemswebnet.com/?n=bacsisuamui.com&r=a \n\n If bacsisuamui.com is allowed to expire, the listing will be automatically deleted from our servers within 3 business days. Upon expiration, we reserve the right to offer your website listing to competitors or interested parties in the same business category and location (state/city) after 3 business days on an auction-bidding basis. \n\n This is the final renewal notice that we are required to send out in regards to the expiration of bacsisuamui.com \n\n Secure Online Payment: \n\n https://systemswebnet.com/?n=bacsisuamui.com&r=a \n\n All services will be restored automatically on bacsisuamui.com if payment is received in full on time before expiration. We thank you for your attention and business.', 0),
(25, 'Ronalddiuri', '81959338553', 'nozyher_sevillo@yahoo.com', 1567558645, 'There is a fineoffer someone is concerned you. http://ansagpima.tk/891a', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
--

CREATE TABLE `book` (
  `id` int(4) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SDT` varchar(12) DEFAULT NULL,
  `Event` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` text CHARACTER SET utf8 DEFAULT NULL,
  `Date` int(4) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `book`
--

INSERT INTO `book` (`id`, `Name`, `Email`, `SDT`, `Event`, `Address`, `Description`, `Date`, `Active`) VALUES
(1, 'Lê Văn Tuấn Anh', 'leanh.stu93@gmail.com', NULL, NULL, 'ladadad', 'srfasfs', NULL, 0),
(2, 'Lê Văn Tuấn Anh', 'leanh.stu93@gmail.com', NULL, NULL, 'ladadad', 'srfasfs', NULL, 0),
(3, 'Lê Văn Tuấn Anh', 'leanh.stu93@gmail.com', NULL, NULL, 'ladadad', 'srfasfs', NULL, 0),
(4, 'Lê Văn Tuấn Anh', 'leanh.stu93@gmail.com', NULL, NULL, 'ladadad', 'srfasfs', NULL, 0),
(5, 'Lê Văn Tuấn Anh', 'leanh.stu93@gmail.com', NULL, NULL, 'ladadad', 'srfasfs', NULL, 0),
(6, 'Lê Văn Tuấn Anh', 'leanh.stu93@gmail.com', NULL, NULL, 'ladadad', 'srfasfs', NULL, 0),
(7, 'le an', 'leanh.stu93@gmail.com', NULL, NULL, 'aedadad', 'dfeafaedfa', NULL, 0),
(8, 'le an', 'leanh.stu93@gmail.com', NULL, NULL, 'aedadad', 'dfeafaedfa', NULL, 0),
(9, 'dqeadad', 'aedada@gmai.com', '54646', 'Love you to night', 'fesfasf', 'fsefs', NULL, 0),
(10, 'sfas', 'leanh.stu93@gmail.com', '654654654654', 'Love you to night', 'dfaeda', 'dadada', 1477025945, 0),
(11, 'le anh', 'leanh.stu93@gmail.com', '654621321', 'BEAUTY NIGHT', 'weafafae', 'srfsrfsrfs', 1477190102, 0),
(12, 'rfgwf', 'leanh.stu93@gmail.com', '0169389745', 'Love you to night', '54135413521', 'sfasfsfs', 1477197302, 0),
(13, 'Lê Văn Tuấn Anh', 'leanh.stu93@gmail.com', '612', 'Love you to night', '3123\r\n213', 'efasfas', 1477197359, 0),
(14, 'Lê Văn Tuấn Anh', 'leanh.stu93@gmail.com', '612', 'Love you to night', '3123\r\n213', 'efasfas', 1477197446, 0),
(15, 'Lê Văn Tuấn Anh', 'leanh.stu93@gmail.com', '612', 'Love you to night', '3123\r\n213', 'efasfas', 1477197600, 0),
(16, 'gfgw', 'leanh.stu93@gmail.com', '6854621', 'Love you to night', 'efadradad', 'edadadaeda', 1477197747, 0),
(17, 'lla', 'leanh.stu93@gmail.com', '455462', 'Love you to night', '31321', 'daedaedada', 1477197938, 0),
(18, 'feasw', 'leanh.stu93@gmail.com', '676767897', 'Love you to night', 'dvxdvx', 'xvxfvxvxfv', 1477198549, 0),
(19, 'leanh.stu93@gmail.com', 'leanh.stu93@gmail.com', '0444', 'Love you to night', '44444', '44', 1483757302, 0),
(20, 'leanh.stu93@gmail.com', 'leanh.stu93@gmail.com', '0444', 'Love you to night', '44444', '44', 1483757307, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `camnhankhachhang`
--

CREATE TABLE `camnhankhachhang` (
  `id` int(4) NOT NULL,
  `ThongTinCaNhan` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `TieuDe` varchar(255) CHARACTER SET utf8 NOT NULL,
  `UrlImage` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Content` text CHARACTER SET utf8 NOT NULL,
  `Seo_Description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Seo_Keywords` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `camnhankhachhang`
--

INSERT INTO `camnhankhachhang` (`id`, `ThongTinCaNhan`, `Alias`, `TieuDe`, `UrlImage`, `Content`, `Seo_Description`, `Seo_Keywords`, `Active`) VALUES
(5, 'Web Designe', NULL, 'Sam Ibister', '/uploads/files/3.png', '<p>This PSD is so well organised - the best Ive ever downloaded from here. The ideas are also really fresh and new - great work. I cant wait to start work with it!</p>\r\n', '', '', 1),
(6, 'Web Designe', NULL, 'Sam Ibister', '/uploads/files/3.png', '<p>This PSD is so well organised - the best Ive ever downloaded from here. The ideas are also really fresh and new - great work. I cant wait to start work with it!</p>\r\n', '', '', 1),
(7, 'Web Designe', 'Sam-Ibister-7', 'Sam Ibister', '/uploads/files/3.png', '<p>This PSD is so well organised - the best Ive ever downloaded from here. The ideas are also really fresh and new - great work. I cant wait to start work with it!</p>\r\n', '', '', 1),
(8, 'Web Designe 2', 'Sam-Ibister-8', 'Sam Ibister', '/uploads/files/3.png', '<p>This PSD is so well organised - the best Ive ever downloaded from here. The ideas are also really fresh and new - great work. I cant wait to start work with it!</p>\r\n', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhinh`
--

CREATE TABLE `cauhinh` (
  `id` int(4) NOT NULL,
  `Appid` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `googlemap` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Description` text CHARACTER SET utf8 DEFAULT NULL,
  `Keyword` text CHARACTER SET utf8 DEFAULT NULL,
  `head` text CHARACTER SET utf8 DEFAULT NULL,
  `robots` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `body` text CHARACTER SET utf8 DEFAULT NULL,
  `footer` text CHARACTER SET utf8 DEFAULT NULL,
  `ImageCompany` text CHARACTER SET utf8 NOT NULL,
  `BaoTri` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cauhinh`
--

INSERT INTO `cauhinh` (`id`, `Appid`, `googlemap`, `Email`, `Title`, `Description`, `Keyword`, `head`, `robots`, `body`, `footer`, `ImageCompany`, `BaoTri`) VALUES
(1, '2089565691347158', '10.785517, 106.630993', 'biticomputer@gmail.com', 'SAIGON HALO - Bác sĩ sửa mũi hàng đầu Sài Gòn', 'SAIGON HALO - Bác sĩ sửa mũi hàng đầu Sài Gòn', 'SAIGON HALO - Bác sĩ sửa mũi hàng đầu Sài Gòn', '<!-- Đánh dấu JSON-LD được tạo bởi Trình trợ giúp đánh dấu dữ liệu có cấu trúc của Google. -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\": \"http://schema.org/\",\r\n  \"@type\": \"Person\",\r\n  \"name\": \"Lê Mai Hữu\",\r\n  \"alternateName\": \"Anh Hữu\",\r\n  \"url\": \"http://bacsisuamui.com/\",\r\n  \"image\": \"http://bacsisuamui.com/uploads/images/bacsi/bacsi%20(1).png\",\r\n  \"jobTitle\": \"Bác sĩ\",\r\n  \"worksFor\": {\r\n    \"@type\": \"Organization\",\r\n    \"name\": \"Sài Gòn Halo\"\r\n  }  \r\n}\r\n</script>\r\n\r\n<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-141511542-1\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-141511542-1\');\r\n</script>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<style>.fb-livechat, .fb-widget{display: none}.ctrlq.fb-button, .ctrlq.fb-close{position: fixed; right: 24px; cursor: pointer}.ctrlq.fb-button{z-index: 999; background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjwhRE9DVFlQRSBzdmcgIFBVQkxJQyAnLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4nICAnaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkJz48c3ZnIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDEyOCAxMjgiIGhlaWdodD0iMTI4cHgiIGlkPSJMYXllcl8xIiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCAxMjggMTI4IiB3aWR0aD0iMTI4cHgiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxnPjxyZWN0IGZpbGw9IiMwMDg0RkYiIGhlaWdodD0iMTI4IiB3aWR0aD0iMTI4Ii8+PC9nPjxwYXRoIGQ9Ik02NCwxNy41MzFjLTI1LjQwNSwwLTQ2LDE5LjI1OS00Niw0My4wMTVjMCwxMy41MTUsNi42NjUsMjUuNTc0LDE3LjA4OSwzMy40NnYxNi40NjIgIGwxNS42OTgtOC43MDdjNC4xODYsMS4xNzEsOC42MjEsMS44LDEzLjIxMywxLjhjMjUuNDA1LDAsNDYtMTkuMjU4LDQ2LTQzLjAxNUMxMTAsMzYuNzksODkuNDA1LDE3LjUzMSw2NCwxNy41MzF6IE02OC44NDUsNzUuMjE0ICBMNTYuOTQ3LDYyLjg1NUwzNC4wMzUsNzUuNTI0bDI1LjEyLTI2LjY1N2wxMS44OTgsMTIuMzU5bDIyLjkxLTEyLjY3TDY4Ljg0NSw3NS4yMTR6IiBmaWxsPSIjRkZGRkZGIiBpZD0iQnViYmxlX1NoYXBlIi8+PC9zdmc+) center no-repeat #0084ff; width: 60px; height: 60px; text-align: center; bottom: 30px; border: 0; outline: 0; border-radius: 60px; -webkit-border-radius: 60px; -moz-border-radius: 60px; -ms-border-radius: 60px; -o-border-radius: 60px; box-shadow: 0 1px 6px rgba(0, 0, 0, .06), 0 2px 32px rgba(0, 0, 0, .16); -webkit-transition: box-shadow .2s ease; background-size: 80%; transition: all .2s ease-in-out}.ctrlq.fb-button:focus, .ctrlq.fb-button:hover{transform: scale(1.1); box-shadow: 0 2px 8px rgba(0, 0, 0, .09), 0 4px 40px rgba(0, 0, 0, .24)}.fb-widget{background: #fff; z-index: 1000; position: fixed; width: 360px; height: 435px; overflow: hidden; opacity: 0; bottom: 0; right: 24px; border-radius: 6px; -o-border-radius: 6px; -webkit-border-radius: 6px; box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -webkit-box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -moz-box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -o-box-shadow: 0 5px 40px rgba(0, 0, 0, .16)}.fb-credit{text-align: center; margin-top: 8px}.fb-credit a{transition: none; color: #bec2c9; font-family: Helvetica, Arial, sans-serif; font-size: 12px; text-decoration: none; border: 0; font-weight: 400}.ctrlq.fb-overlay{z-index: 0; position: fixed; height: 100vh; width: 100vw; -webkit-transition: opacity .4s, visibility .4s; transition: opacity .4s, visibility .4s; top: 0; left: 0; background: rgba(0, 0, 0, .05); display: none}.ctrlq.fb-close{z-index: 4; padding: 0 6px; background: #365899; font-weight: 700; font-size: 11px; color: #fff; margin: 8px; border-radius: 3px}.ctrlq.fb-close::after{content: \"X\"; font-family: sans-serif}.bubble{width: 20px; height: 20px; background: #c00; color: #fff; position: absolute; z-index: 999999999; text-align: center; vertical-align: middle; top: -2px; left: -5px; border-radius: 50%;}.bubble-msg{width: 120px; left: -140px; top: 5px; position: relative; background: rgba(59, 89, 152, .8); color: #fff; padding: 5px 8px; border-radius: 8px; text-align: center; font-size: 13px;}</style><div class=\"fb-livechat\"> <div class=\"ctrlq fb-overlay\"></div><div class=\"fb-widget\"> <div class=\"ctrlq fb-close\"></div><div class=\"fb-page\" data-href=\"https://www.facebook.com/BsLeMaiHuu\" data-tabs=\"messages\" data-width=\"360\" data-height=\"400\" data-small-header=\"true\" data-hide-cover=\"true\" data-show-facepile=\"false\"> </div><div class=\"fb-credit\"> <a href=\"https://thanhtrungmobile.vn\" target=\"_blank\">Powered by TT</a> </div><div id=\"fb-root\"></div></div><a href=\"https://m.me/BsLeMaiHuu\" title=\"Gửi tin nhắn cho chúng tôi qua Facebook\" class=\"ctrlq fb-button\"> <div class=\"bubble\">1</div><div class=\"bubble-msg\">Bạn cần hỗ trợ?</div></a></div><script src=\"https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9\"></script><script>jQuery(document).ready(function($){function detectmob(){if( navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/webOS/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/BlackBerry/i) || navigator.userAgent.match(/Windows Phone/i) ){return true;}else{return false;}}var t={delay: 125, overlay: $(\".fb-overlay\"), widget: $(\".fb-widget\"), button: $(\".fb-button\")}; setTimeout(function(){$(\"div.fb-livechat\").fadeIn()}, 8 * t.delay); if(!detectmob()){$(\".ctrlq\").on(\"click\", function(e){e.preventDefault(), t.overlay.is(\":visible\") ? (t.overlay.fadeOut(t.delay), t.widget.stop().animate({bottom: 0, opacity: 0}, 2 * t.delay, function(){$(this).hide(\"slow\"), t.button.show()})) : t.button.fadeOut(\"medium\", function(){t.widget.stop().show().animate({bottom: \"30px\", opacity: 1}, 2 * t.delay), t.overlay.fadeIn(t.delay)})})}});</script>', 'noindex', '<!-- Load Facebook SDK for JavaScript -->\r\n<div id=\"fb-root\"></div>\r\n<script>\r\n  window.fbAsyncInit = function() {\r\n    FB.init({\r\n      xfbml            : true,\r\n      version          : \'v3.3\'\r\n    });\r\n  };\r\n\r\n  (function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n\r\n<!-- Your customer chat code -->\r\n<div class=\"fb-customerchat\"\r\n  attribution=setup_tool\r\n  page_id=\"361250210601086\"\r\n  logged_in_greeting=\"Bạn cần Dr.Hữu tư vấn gì ko?\"\r\n  logged_out_greeting=\"Bạn cần Dr.Hữu tư vấn gì ko?\">\r\n</div>', '', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhinhhinhanh`
--

CREATE TABLE `cauhinhhinhanh` (
  `id` int(4) NOT NULL,
  `header` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bacsi` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phuongphap` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `counttruycap`
--

CREATE TABLE `counttruycap` (
  `id` int(4) NOT NULL,
  `Count` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `counttruycap`
--

INSERT INTO `counttruycap` (`id`, `Count`) VALUES
(1, 84133);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `custom`
--

CREATE TABLE `custom` (
  `id` int(11) NOT NULL,
  `data` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `custom`
--

INSERT INTO `custom` (`id`, `data`) VALUES
(1, '{\"CUSTOM_IMAGE\":{\"slide\":{\"data\":\"1\"}},\"CUSTOM_SINGLE_PAGE\":{\"one_footer\":{\"data\":[\"13\"]}},\"CUSTOM_NEWS_CATEGORY\":{\"footer_col_2\":{\"data\":\"1\"}}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `col1` text CHARACTER SET utf8 NOT NULL,
  `col2` text CHARACTER SET utf8 NOT NULL,
  `col3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `footer`
--

INSERT INTO `footer` (`id`, `col1`, `col2`, `col3`) VALUES
(1, '<h3>GIỚI THIỆU S&Agrave;I G&Ograve;N HALO</h3>\r\n\r\n<ul>\r\n	<li>&nbsp;<span class=\"fa fa-fw fa-phone\" style=\"font-size:18px\">&nbsp;</span><a href=\"tel:0933077766\">0933077766</a></li>\r\n	<li><span class=\"fa fa-facebook fa-fw\" style=\"font-size:18px\">&nbsp;</span>&nbsp;https://www.facebook.com/ThamMySaigonHalo/</li>\r\n	<li>&nbsp;<span class=\"fa fa-fw fa-internet-explorer\" style=\"font-size:18px\">&nbsp;</span>bacsisuamui.com</li>\r\n	<li>&nbsp;<span class=\"fa fa-fw fa-paper-plane\" style=\"font-size:18px\">&nbsp;</span>522 Nguyễn Ch&iacute; Thanh Phường 7 Quận 10 Hồ Ch&iacute; Minh</li>\r\n</ul>\r\n', '<h3>Dịch vụ nổi bật</h3>\r\n\r\n<ul>\r\n	<li>H&oacute;a N&acirc;ng Mũi H&agrave;n Quốc</li>\r\n	<li>H&oacute;a Phẩu Thuật Mũi Cho Nam Giới</li>\r\n	<li>Bảng Gi&aacute; H&oacute;a thu gọn c&aacute;nh mũi</li>\r\n	<li>N&acirc;ng mũi cấu tr&uacute;c 4D</li>\r\n	<li>N&acirc;ng mũi cấu tr&uacute;c 4D si&ecirc;u &acirc;m</li>\r\n</ul>\r\n', '<h3>Bản đồ</h3>\r\n\r\n<p><iframe frameborder=\"0\" height=\"220\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.685884373649!2d106.65956341480062!3d10.758674192333594!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752eefd59f6303%3A0x4759a806da2862ab!2zNTIyIE5ndXnhu4VuIENow60gVGhhbmgsIFBoxrDhu51uZyA3LCBRdeG6rW4gMTAsIEjhu5MgQ2jDrSBNaW5o!5e0!3m2!1sen!2s!4v1558762783869!5m2!1sen!2s\" style=\"border:0\" width=\"600\"></iframe></p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(4) NOT NULL,
  `UrlImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SetMenu` tinyint(1) DEFAULT 0,
  `SetFooter` tinyint(1) DEFAULT 0,
  `Type` tinyint(1) DEFAULT NULL COMMENT '2: giai phap 1: gioithieu',
  `Active` tinyint(1) DEFAULT 1 COMMENT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `gioithieu`
--

INSERT INTO `gioithieu` (`id`, `UrlImage`, `SetMenu`, `SetFooter`, `Type`, `Active`) VALUES
(2, '/uploads/files/gioithieu.jpg', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioithieu_lang`
--

CREATE TABLE `gioithieu_lang` (
  `id` int(4) NOT NULL,
  `idGioiThieu` int(4) DEFAULT NULL,
  `idNgonNgu` tinyint(1) DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` text CHARACTER SET utf8 DEFAULT NULL,
  `Content` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `gioithieu_lang`
--

INSERT INTO `gioithieu_lang` (`id`, `idGioiThieu`, `idNgonNgu`, `Name`, `Alias`, `Description`, `Content`) VALUES
(1, 1, 1, 'Giới thiệu chung', 'Gioi-thieu-chung', 'Công ty Cổ Phần Dược Phẩm CALAPHARCO, Tiền thân là một cửa hàng trực thuộc Công ty Dược Phẩm Cấp II Tiền Giang. Năm 1980 được thành lập công ty dược phẩm cấp III huyện Cai Lậy thiếu trang thiết bị, yếu về kỹ thuật công nghệ và nhân lực. Năm 1993 Công ty được đổi tên thành Công ty Dược Phẩm Dược Liệu Tiền Giang trực thuộc Ban Tài Chính Tỉnh ủy.', '<p>Chị Một cho ch&uacute;ng t&ocirc;i biết, trong những năm c&ocirc;ng t&aacute;c hầu như c&ocirc;ng việc n&agrave;o ở đơn vị chị cũng l&agrave;m qua từ b&aacute;n h&agrave;ng đến Quản đốc ph&acirc;n xưởng, nh&acirc;n vi&ecirc;n phụ tr&aacute;ch kinh doanh. Song song với hoạt động chuy&ecirc;n m&ocirc;n, chị c&ograve;n l&agrave; &ldquo;c&acirc;y đinh&rdquo; trong c&aacute;c hoạt động phong tr&agrave;o, chị đ&atilde; tr&atilde;i qua nhiều nhiệm vụ: B&iacute; thư Chi bộ, Thư k&yacute; c&ocirc;ng đo&agrave;n, BCH đo&agrave;n&hellip;&rdquo;Ch&iacute;nh sự trui r&egrave;n từ c&aacute;c phong tr&agrave;o c&ocirc;ng đo&agrave;n, đo&agrave;n thể m&agrave; t&ocirc;i đ&atilde; trưởng th&agrave;nh hơn, bản lĩnh, tự tin hơn rất nhiều. V&igrave; vậy m&agrave; khi t&ocirc;i đề xướng phong tr&agrave;o n&agrave;o, anh em c&ocirc;ng đo&agrave;n vi&ecirc;n trong c&ocirc;ng ty đều t&iacute;ch cực hưởng ứng v&agrave; tham gia nhiệt t&igrave;nh, c&oacute; người đ&atilde; gọi t&ocirc;i l&agrave; hồ l&agrave; keo v&igrave; l&agrave;m kết d&iacute;nh những mối quan hệ đ&atilde; &ldquo;rạn nứt&rdquo; giữa c&aacute;c đồng nghiệp trong cơ quan &rdquo;. Chị khẳng định nhiều đồng nghiệp đ&atilde; bảo rằng chị nghi&ecirc;m khắc, nhưng khi tiếp x&uacute;c, hiểu chị lại rất qu&iacute; v&agrave; t&ocirc;n trọng chị như người th&acirc;n trong gia đ&igrave;nh. N&oacute;i về kinh nghiệm l&agrave;m c&ocirc;ng t&aacute;c c&ocirc;ng đo&agrave;n, chị Một n&oacute;i: &ldquo;L&agrave;m c&ocirc;ng t&aacute;c C&ocirc;ng đo&agrave;n, phải biết nh&igrave;n v&agrave;o anh em, tạo cho họ niềm tin, phải t&igrave;m hiểu đời sống, quan t&acirc;m đến nguyện vọng của họ, từ đ&oacute; m&igrave;nh tạo điều kiện gi&uacute;p đỡ, khi đ&oacute;, m&igrave;nh đề xướng việc g&igrave; họ cũng đồng t&igrave;nh ủng hộ &rdquo;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kh&oacute; khăn nhất vẫn l&agrave; l&uacute;c đơn vị phải tự khẳng định m&igrave;nh bằng khả năng sản xuất &ndash; kinh doanh để trụ được, bởi 1993 chủ trương của nh&agrave; nước s&aacute;p nhập to&agrave;n bộ c&aacute;c c&ocirc;ng ty huyện về tỉnh. Nhưng với lực lượng của c&ocirc;ng ty v&agrave; t&acirc;m huyết của chị Một cũng như của to&agrave;n thể CB- CNV m&agrave; C&ocirc;ng ty Dược Cai Lậy l&agrave; c&ocirc;ng ty cấp III duy nhất trong to&agrave;n quốc c&ograve;n trụ lại. V&agrave; sau nhiều lần thay đổi h&igrave;nh thức quản l&yacute;, đến năm 2001, C&ocirc;ng ty Dược phẩm Cai lậy ch&iacute;nh thức cổ phần h&oacute;a. Với sự tin tưởng của c&aacute;c đồng nghiệp, chị tiếp tục được đề bạc l&agrave;m Gi&aacute;m đốc, ki&ecirc;m Chủ tịch Hội đồng Quản trị. Nhắc đến những th&agrave;nh quả của h&ocirc;m nay, chị Một vẫn kh&ocirc;ng thể n&agrave;o qu&ecirc;n được sự hỗ trợ, gi&uacute;p đỡ của những người đ&atilde; từng s&aacute;t c&aacute;nh c&ugrave;ng chị trong những năm qua. Chị t&acirc;m sự: &ldquo;T&ocirc;i lu&ocirc;n cảm thấy hạnh ph&uacute;c, v&igrave; c&oacute; những người trước kia l&agrave; cấp tr&ecirc;n, l&agrave; người đi trước nhưng vẫn tận t&acirc;m, tận lực, kề vai c&ugrave;ng t&ocirc;i g&aacute;nh v&aacute;c, x&acirc;y dựng C&ocirc;ng ty khi t&ocirc;i đ&atilde; trở th&agrave;nh gi&aacute;m đốc của họ. Trong th&acirc;m t&acirc;m, t&ocirc;i lu&ocirc;n tri &acirc;n những người ấy. T&ocirc;i tr&acirc;n trọng họ như tr&acirc;n trọng c&ocirc;ng việc m&agrave; m&igrave;nh đ&atilde; đam m&ecirc;&rdquo;.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sử dụng đ&uacute;ng người, đ&uacute;ng việc, thưởng &ndash; phạt ph&acirc;n minh, l&agrave;m việc phải tu&acirc;n theo nguy&ecirc;n tắc, tất cả phải đo&agrave;n kết v&igrave; sự đi l&ecirc;n của c&ocirc;ng ty l&agrave; b&iacute; quyết quản l&yacute; của chị Một. Sau 25 năm hoạt động trải qua nhiều h&igrave;nh thức quản l&yacute; đến nay, Calapharco đ&atilde; khẳng định t&ecirc;n tuổi v&agrave; thế đứng của m&igrave;nh tr&ecirc;n thị trường. Doanh thu của c&ocirc;ng ty năm sau lu&ocirc;n cao hơn năm trước, đ&atilde; giải quyết được việc l&agrave;m thường xuy&ecirc;n cho hơn 250 lao động, mạng lưới c&aacute;c đại l&yacute; thuốc được mở ra khắp nơi trong cả nước. C&ocirc;ng ty được cấp chứng nhận ISO 9001:2000. Đồng thời với nhiều th&agrave;nh t&iacute;ch trong hoạt động kinh doanh, C&ocirc;ng ty được Chủ tịch nước tặng Hu&acirc;n chương Lao động hạng II v&agrave;o năm 2003. Những th&agrave;nh quả của Calapharco c&oacute; sự đ&oacute;ng g&oacute;p của chị Một. Cũng ch&iacute;nh v&igrave; vậy m&agrave; mỗi năm qua đi, những tấm bằng khen, gi&aacute;y khen lại t&ocirc; điểm th&ecirc;m cho sự nghiệp của chị. Điển h&igrave;nh nhất l&agrave; năm 1998 chi nhận bằng khen của Thủ tướng Ch&iacute;nh phủ v&agrave; năm 2000 chị vinh dự được bầu chọn l&agrave; chiến sĩ thi đua to&agrave;n quốc.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đến khi cầm tấm hu&acirc;n chương lao động hạng III của Chủ tịch nước tăng năm 2003, chị Một th&ecirc;m một lần nữa cảm nhận được những th&agrave;nh quả ngọt ng&agrave;o m&agrave; chị đ&atilde; bao năm vun đấp. V&agrave; hẳn nhiều nguời vẫn c&ograve;n nhớ, h&igrave;nh ảnh tự tin của chị trong &ldquo;Hội nghị n&ecirc;u gương điển h&igrave;nh lao động giỏi 5 năm liền 1999-2004&rdquo; do Li&ecirc;n đo&agrave;n Lao động tỉnh tổ chức.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Một đầu t&agrave;u gương mẫu, vững chắc như chị Một chắc chắn sẽ đưa đo&agrave;n t&agrave;u Calapharco vượt qua con dốc cao v&agrave; đoạn đường d&agrave;i của tương lai. S&oacute;ng gi&oacute; thương trường kh&ocirc;ng thể n&agrave;o lường trước được, nhưng người đi qua n&oacute; phải l&agrave; người c&oacute; đủ niềm tin v&agrave; nghị lực. Chắc hẳn l&agrave; chị phải c&oacute; một chỗ dựa vững chắc lắm? &ndash; T&ocirc;i hỏi. Chị Một đ&atilde; kh&ocirc;ng phủ nhận: T&ocirc;i thật sự may mắn v&igrave; c&oacute; &ocirc;ng x&atilde; biết th&ocirc;ng cảm. Anh đ&atilde; chịu ở nh&agrave; để chăm s&oacute;c con v&agrave; mẹ chồng t&ocirc;i. Đ&ocirc;i khi mọi người đ&ugrave;a gọi anh l&agrave; &ldquo;xếp ph&oacute;&rdquo;, t&ocirc;i biết anh kh&ocirc;ng buồn m&agrave; xem đ&oacute; l&agrave; điều anh đ&atilde; g&aacute;nh v&aacute;c thay t&ocirc;i. Với t&ocirc;i, anh v&agrave; gia đ&igrave;nh lu&ocirc;n l&agrave; bệ ph&oacute;ng hỗ trợ cho t&ocirc;i trong nhiều năm qua, v&agrave; d&ugrave; t&ocirc;i kh&ocirc;ng c&oacute; thời gian chăm ch&uacute;t cho con, do phải đi c&ocirc;ng t&aacute;c xa, nhưng con t&ocirc;i vẫn được cha &acirc;n cần dạy bảo, ch&uacute;ng t&ocirc;i lu&ocirc;n dạy con l&agrave; phải sống c&oacute; &iacute;ch, biết học tập, lao động bằng khả năng của m&igrave;nh, chưa bao giờ t&ocirc;i thể hiện với con m&igrave;nh l&agrave; Gi&aacute;m đốc. T&ocirc;i thường n&oacute;i với con : Mẹ cha vất vả l&agrave;m ra tiền để nu&ocirc;i c&aacute;c con ăn học, con h&atilde;y sử dụng đồng tiền xứng đ&aacute;ng để kh&ocirc;ng phụ c&ocirc;ng của cha mẹ. Nghe lời chị, một con trai đ&atilde; tốt nghiệp Trung học Y Tế v&agrave; đang theo học lớp QTKD v&agrave; một g&aacute;i nhận học bổng đang du học ở &Uacute;c đều chăm ngoan học tốt.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&oacute; thể n&oacute;i, trải qua những thăng trầm của cuộc sống, chị Một đ&atilde; c&oacute; nghị lực vươn l&ecirc;n. Xin chức mừng chị một doanh nh&acirc;n th&agrave;nh đạt. Dẫu biết rằng kinh doanh trong thời buổi kinh tế thị trường quả l&agrave; kh&ocirc;ng đơn giản bởi &ldquo;thương trường l&agrave; chiến trường&rdquo; nhưng t&ocirc;i xin v&agrave; hy vọng chị Một sẽ vững tay ch&egrave;o để l&egrave;o l&aacute;i con thuyền ước mơ của m&igrave;nh đến bến bờ th&agrave;nh c&ocirc;ng.</p>\r\n'),
(2, 2, 1, 'lời giới thiệu', 'loi-gioi-thieu', '', '<p><strong>SAIGON HALO ĐỊA CHỈ THẨM MŨI UY T&Iacute;N &ndash; CHẤT LƯỢNG</strong></p>\r\n\r\n<p>Saigon Halo l&agrave; một trong những thương hiệu thẩm mỹ mũi h&agrave;ng đầu S&agrave;i G&ograve;n. Qu&yacute; kh&aacute;ch h&agrave;ng đến với ch&uacute;ng t&ocirc;i sẽ được trải nghiệm những kh&aacute;c biệt từ c&ocirc;ng nghệ thẩm mỹ cho đến chất lượng dịch vụ, cơ sở vật chất&hellip;.</p>\r\n\r\n<p><strong>+ Cơ sở vật chất hiện đại, tiện nghi</strong></p>\r\n\r\n<p>Saigon Halo lu&ocirc;n kh&ocirc;ng ngừng ch&uacute; trọng đến việc n&acirc;ng cao cơ sở vật chất, trang bị m&aacute;y m&oacute;c hiện đại nhằm tạo cho Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; cảm gi&aacute;c thoải m&aacute;i v&agrave; an t&acirc;m hơn khi sử dụng những dịch vụ của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>C&aacute;c thiết bị tối t&acirc;n của SaiGon HaLo c&oacute; thể kể đến như: M&aacute;y chụp CT Scanner, thiết bị nội soi, m&aacute;y Vectra XT 3D. Vectra XT 3D c&oacute; khả năng ph&acirc;n t&iacute;ch tỷ lệ khu&ocirc;n mặt, cho bạn biết những khuyết điểm tr&ecirc;n gương mặt, từ đ&oacute; định h&igrave;nh sẵn d&aacute;ng mũi sau khi n&acirc;ng, v&igrave; vậy bạn c&oacute; thể xem trước kết quả sau n&acirc;ng mũi.</p>\r\n\r\n<p>Nhờ đ&aacute;p ứng tất cả c&aacute;c y&ecirc;u cầu khắc khe SaiGon HaLo đ&atilde; vượt qua qu&aacute; tr&igrave;nh kiểm định khắc khe của Bộ Y tế v&agrave; được cấp giấy ph&eacute;p hoạt động.</p>\r\n\r\n<p><strong>+ C&ocirc;ng nghệ thẩm mỹ mũi ti&ecirc;n tiến</strong></p>\r\n\r\n<p>Hiểu được nhu cầu thẩm mỹ mũi ng&agrave;y c&agrave;ng cao của Qu&yacute; kh&aacute;ch h&agrave;ng Saigon Halo lu&ocirc;n nỗ lực tiếp cận v&agrave; chuyển giao nhiều c&ocirc;ng nghệ n&acirc;ng mũi mới, nhằm mang đến cho kh&aacute;ch h&agrave;ng vẻ đẹp ho&agrave;n hảo nhất:</p>\r\n\r\n<ul>\r\n	<li>N&acirc;ng mũi S line: tạo h&igrave;nh d&aacute;ng mũi h&igrave;nh chữ S, với độ cao đạt chuẩn, mũi mềm mại, tự nhi&ecirc;n, ph&ugrave; hợp với phụ nữ &Aacute; Đ&ocirc;ng.</li>\r\n	<li>N&acirc;ng mũi L line 3D: l&agrave; sự t&iacute;ch hợp của kỹ thuật chỉnh sửa mũi to&agrave;n diện, đem lại cho &nbsp;kh&aacute;ch h&agrave;ng chiếc mũi cao đẹp &ldquo;chuẩn T&acirc;y&rdquo;</li>\r\n	<li>N&acirc;ng mũi bọc sụn: d&ugrave;ng sụn sinh học định h&igrave;nh n&acirc;ng cao sống mũi đồng thời d&ugrave;ng sụn tự th&acirc;n bao bọc đầu mũi, tr&aacute;nh t&igrave;nh trạng b&oacute;ng đỏ đầu mũi, kh&ocirc;ng lộ sống mũi.</li>\r\n	<li>N&acirc;ng mũi H&agrave;n Quốc: phương ph&aacute;p n&agrave;y d&ugrave;ng sụn sinh học định h&igrave;nh gi&uacute;p n&acirc;ng cao sống mũi, cho mũi d&aacute;ng mũi cao thanh t&uacute;.</li>\r\n	<li>N&acirc;ng mũi kh&ocirc;ng phẫu thuật: sử dụng một số chất l&agrave;m đầy sinh học, ti&ecirc;m trực tiếp v&agrave;o trong khoang mũi, gi&uacute;p mũi cao đẹp tự nhi&ecirc;n m&agrave; kh&ocirc;ng cần sử dụng dao k&eacute;o để đưa sụn v&agrave;o trong khoang mũi.</li>\r\n	<li>C&aacute;c dịch vụ sửa mũi gồ, lệch, mũi hỏng sau n&acirc;ng: T&ugrave;y v&agrave;o trường hợp, b&aacute;c sĩ sẽ ph&acirc;n t&iacute;ch v&agrave; c&oacute; phương ph&aacute;p khắc phục cụ thể.</li>\r\n</ul>\r\n\r\n<p style=\"margin-left:18.0pt\">&nbsp;</p>\r\n\r\n<p><strong>+ Đội ngũ b&aacute;c sĩ chuy&ecirc;n khoa gi&agrave;u kinh nghiệm</strong></p>\r\n\r\n<p>B&ecirc;n cạnh thế mạnh về c&ocirc;ng nghệ, điều tạo n&ecirc;n uy t&iacute;n của thương hiệu Saigon Halo l&agrave; đội ngũ b&aacute;c sĩ giỏi, được đ&agrave;o tạo b&agrave;i bản về tr&igrave;nh độ chuy&ecirc;n m&ocirc;n v&agrave; tay nghề, nhiều năm tu nghiệp ở nước ngo&agrave;i, đứng đầu l&agrave; B&aacute;c sĩ L&ecirc; Mai Hữu &ndash; người đ&atilde; c&oacute; rất nhiều năm kinh nghiệm trong lĩnh vực PTTM.</p>\r\n\r\n<p><strong>+ </strong><strong>Phục vụ chuy&ecirc;n nghiệp</strong></p>\r\n\r\n<p>Đến với Thẩm mỹ viện Saigon HaLo bạn sẽ được phục vụ tận t&igrave;nh bởi những chuy&ecirc;n vi&ecirc;n tư vấn v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng được đ&agrave;o tạo chuy&ecirc;n nghiệp. Ch&uacute;ng t&ocirc;i sẽ chăm s&oacute;c bạn trước &ndash; trong &ndash; v&agrave; sau khi thực hiện dịch vụ nhằm mang lại cho bạn sự y&ecirc;n t&acirc;m, tin tưởng, đảm bảo sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng d&ugrave; l&agrave; kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(3, 3, 1, 'Tại sao chọn L&A WAX', 'Tai-sao-chon-LA-WAX', '', '<p><strong>1/ </strong>L&agrave; 1 trong những nơi cung cấp wax sĩ lẻ h&agrave;ng đầu tại TP.HCM</p>\r\n\r\n<hr />\r\n<p><br />\r\n<strong>2/</strong> C&aacute;c sản phẩm tại L&amp;A shop lu&ocirc;n đảm bảo chất lượng v&agrave; sức khỏe cho người sử dụng.</p>\r\n\r\n<hr />\r\n<p><br />\r\n<strong>3/</strong> Đến L&amp;A shop bạn sẽ được tư vấn sản phẩm ph&ugrave; hợp nhất v&agrave; c&aacute;ch sử dụng tối ưu nhất.</p>\r\n\r\n<hr />\r\n<p><br />\r\n<strong>4/</strong> L&amp;A shop c&oacute; rất nhiều ch&iacute;nh s&aacute;ch khuyến m&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết v&agrave; kh&aacute;ch h&agrave;ng mới</p>\r\n'),
(4, 4, 1, 'Trị Mụn Bằng Phương Pháp Đông Y', 'Tri-Mun-Bang-Phuong-Phap-Dong-Y', '', '<p>Mụn trứng c&aacute; l&agrave; một loại bệnh ngo&agrave;i da kh&aacute; phổ biến, c&oacute; li&ecirc;n quan đến tuyến dầu của da, dưới h&igrave;nh thức chất nhờn. C&oacute; thể xuất hiện ở mọi lứa tuổi, nhưng thường ở thanh thiếu ni&ecirc;n. Đ&ocirc;ng y c&oacute; những b&agrave;i thuốc&nbsp; v&agrave; c&aacute;c phương ph&aacute;p điều trị mụn trứng c&aacute; cho hiệu quả cao.</p>\r\n\r\n<p>* Nguy&ecirc;n nh&acirc;n, cơ chế g&acirc;y mụn trứng c&aacute;</p>\r\n\r\n<p>a. Do độ tuổi dậy th&igrave; (từ 12 đến 18 tuổi)</p>\r\n\r\n<p>b. Do thay đổi c&aacute;c yếu tố nội tiết trong cơ thể</p>\r\n\r\n<p>c. Do lạm dụng mỹ phẩm, nhất l&agrave; c&aacute;c mỹ phẩm kh&ocirc;ng r&otilde; nguồn gốc, hoặc b&ocirc;i c&aacute;c chế phẩm chứa corticoid c&oacute; g&acirc;y bộc ph&aacute;t mụn trứng c&aacute;.</p>\r\n\r\n<p>d. Do sử dụng thuốc kh&aacute;ng sinh, một số loại thuốc điều trị bệnh như Basedow, thuốc tr&aacute;nh thai,&hellip;trong thời gian d&agrave;i.</p>\r\n\r\n<p>e. C&aacute;c yếu tố kh&aacute;c như: căng thẳng thần kinh (stress), mất ngủ, thức khuya, ăn uống kh&ocirc;ng điều độ (ăn nhiều chất cay n&oacute;ng, đồ ngọt, uống nhiều chất k&iacute;ch th&iacute;ch như c&agrave; ph&ecirc;, rượu, bia&hellip;), m&ocirc;i trường sinh hoạt bụi bẩn, &ocirc; nhiễm.</p>\r\n\r\n<p>* Theo Đ&ocirc;ng y, mụn trứng c&aacute; c&ograve;n do t&igrave;nh trạng &ldquo;n&oacute;ng gan&rdquo; hay c&ograve;n gọi l&agrave; do c&ocirc;ng năng khử độc của gan v&agrave; thải độc của thận k&eacute;m</p>\r\n\r\n<p>Nguy&ecirc;n nh&acirc;n g&acirc;y mụn trứng c&aacute; do sự tăng tiết b&atilde; nhờn v&agrave; bội nhiễm tại nang l&ocirc;ng tuyến b&atilde; th&igrave; Gan l&agrave; một cơ quan trong cơ thể chuy&ecirc;n sản xuất mật d&ugrave;ng để ti&ecirc;u giảm chất độc hại ra khỏi cơ thể v&agrave; gi&uacute;p ti&ecirc;u h&oacute;a. Qu&aacute; tr&igrave;nh thải độc sẽ diễn ra qua 2 con đường nước tiểu v&agrave; qua da. Do vậy, gan khỏe mạnh cũng g&oacute;p phần cho việc c&oacute; một l&agrave;n da đẹp, mịn m&agrave;ng hơn.</p>\r\n\r\n<p>* C&aacute;c phương ph&aacute;p điều trị mụn hiện nay</p>\r\n\r\n<p>a. Điều trị bằng T&acirc;y y</p>\r\n\r\n<p>Bệnh mụn trứng c&aacute; khi điều trị t&acirc;y y thường d&ugrave;ng nh&oacute;m thuốc kh&aacute;ng sinh (antibiotic) v&agrave; kh&aacute;ng khuẩn (antibacterial): thường d&ugrave;ng c&aacute;c kh&aacute;ng sinh như erythromycin, thuốc b&ocirc;i ngo&agrave;i chống vi&ecirc;m như benzoyl peroxit.</p>\r\n\r\n<p>Hay thường d&ugrave;ng nh&oacute;m thuốc nội tiết k&eacute;o d&agrave;i từ 3 đến 6 th&aacute;ng.</p>\r\n\r\n<p>Ưu điểm : t&aacute;c dụng điều trị nhanh, lấy được niềm tin của bệnh nh&acirc;n.</p>\r\n\r\n<p>Nhược điểm :</p>\r\n\r\n<p>- Thời gian điều trị nhanh nhưng nhanh t&aacute;i ph&aacute;t, những tổn thương của mụn để lại nhiều như sẹo v&agrave; vết th&acirc;m.</p>\r\n\r\n<p>- Thuốc b&ocirc;i T&acirc;y y lu&ocirc;n c&oacute; th&agrave;nh phần corticoid dễ g&acirc;y b&agrave;o m&ograve;n da, l&agrave;m chậm liền tổn thương do mụn, mặt đỏ, c&oacute; đốm hoặc mảng xuất huyết dưới da, những vết rạn da nhỏ.</p>\r\n\r\n<p>- Nh&oacute;m thuốc nội tiết thường d&ugrave;ng như: Acnotin c&oacute; thể g&acirc;y qu&aacute;i thai nếu trong qu&aacute; tr&igrave;nh điều trị mang bầu, thời gian để thuốc ph&acirc;n hủy hết khỏi cơ thể &iacute;t nhất l&agrave; 6 th&aacute;ng đến 1 năm v&igrave; thế khi d&ugrave;ng thuốc c&aacute;c b&aacute;c sĩ sẽ khuy&ecirc;n bệnh nh&acirc;n kh&ocirc;ng được mang bầu, một số loại thuốc tr&aacute;nh thai c&oacute; th&agrave;nh phần Progesterol c&oacute; t&aacute;c dụng l&agrave;m tăng nặng bệnh trứng c&aacute;.</p>\r\n\r\n<p>b. Điều trị bằng mỹ phẩm</p>\r\n\r\n<p>Ưu điểm : gi&aacute; th&agrave;nh rẻ, dễ mua, dễ sử dụng.</p>\r\n\r\n<p>Nhược điểm : những loại mỹ phẩm kh&ocirc;ng r&otilde; nguồn gốc tr&ecirc;n trường để điều trị mụn trứng c&aacute; hầu hết đều c&oacute; trộn th&agrave;nh phần Corticoid, nhanh ch&oacute;ng điều trị mụn, l&agrave;m trắng da bằng phương ph&aacute;p b&agrave;o m&ograve;n cấp tốc, l&agrave;m mụn t&aacute;i ph&aacute;t nhanh hơn, da tổn thương nặng hơn.</p>\r\n\r\n<p>c. Điều trị bằng c&ocirc;ng nghệ cao tại thẩm mỹ viện</p>\r\n\r\n<p>Ưu điểm : quảng c&aacute;o tốt tạo sự tin tưởng cho kh&aacute;ch h&agrave;ng, kh&aacute;ch h&agrave;ng chỉ cần đến để được chăm s&oacute;c, hiệu quả nhanh, da mịn m&agrave;ng.</p>\r\n\r\n<p>Nhược điểm : kh&ocirc;ng điều trị được căn nguy&ecirc;n bệnh n&ecirc;n dễ t&aacute;i ph&aacute;t, những tổn thương s&acirc;u v&agrave;o cấu tr&uacute;c da do &aacute;nh s&aacute;ng c&oacute; bước s&oacute;ng ngắn t&aacute;c động (như lazer), chưa kể những thẩm mỹ kh&ocirc;ng uy t&iacute;n c&oacute; thể d&ugrave;ng kem trộn corticoid cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>d. Uống thuốc từ c&aacute;c thầy lang</p>\r\n\r\n<p>Ưu điểm : thuốc nam từ c&aacute;c thầy lang &iacute;t t&aacute;c dụng phụ, c&oacute; t&aacute;c dụng thanh nhiệt, m&aacute;t gan.</p>\r\n\r\n<p>Nhược điểm : thuốc kh&ocirc;ng thể điều trị khỏi bệnh, chỉ hỗ trợ thanh nhiệt. Chưa kể đến c&aacute;c thầy lang th&igrave; chưa được cấp chứng chỉ chuy&ecirc;n m&ocirc;n&hellip;</p>\r\n\r\n<p>I.Phương ph&aacute;p Điều trị mụn trứng c&aacute; tại SPA Đ&Ocirc;NG Y THI&Ecirc;N KIM</p>\r\n\r\n<p>Điều trị mụn trứng c&aacute; k&eacute;o d&agrave;i 2-4 th&aacute;ng bao gồm:</p>\r\n\r\n<p>- Sản phẩm uống: Dược liệu thanh huyết</p>\r\n\r\n<p>- Sản phẩm b&ocirc;i: Dược liệu ti&ecirc;u vi&ecirc;m</p>\r\n\r\n<p>- Sản phẩm dưỡng hỗ trợ điều trị: Mặt nạ đ&ocirc;ng y</p>\r\n\r\n<p>- Trị liệu mụn gi&uacute;p tang hiệu quả điều trị.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ưu điểm:</p>\r\n\r\n<p>- Điều trị tận gốc căn nguy&ecirc;n g&acirc;y mụn. Tr&aacute;nh t&aacute;i ph&aacute;t.</p>\r\n\r\n<p>- Hiệu quả 60 - 90%</p>\r\n\r\n<p>- Sản phẩm ho&agrave;n to&agrave;n l&agrave; thảo dược tự nhi&ecirc;n, an to&agrave;n, kh&ocirc;ng t&aacute;c dụng phụ.</p>\r\n\r\n<p>- Chi ph&iacute; điều trị ph&ugrave; hợp với mọi đối tượng.</p>\r\n\r\n<p>- Hạn chế tối đa việc để lại sẹo v&agrave; vết th&acirc;m.</p>\r\n\r\n<p>- Điều trị tại SPA Đ&Ocirc;NG Y THI&Ecirc;N KIM c&oacute; b&aacute;c sĩ kh&aacute;m bệnh chuy&ecirc;n m&ocirc;n cao.</p>\r\n\r\n<p>Nhược điểm:</p>\r\n\r\n<p>- Bệnh nh&acirc;n cần phải ki&ecirc;n tr&igrave; điều trị thời gian từ 2-4 th&aacute;ng.</p>\r\n\r\n<ul>\r\n	<li>Kh&ocirc;ng gian spa đ&ocirc;ng y hướng đến mọi đối tượng b&igrave;nh d&acirc;n đến cao cấp n&ecirc;n vẫn c&ograve;n tạo sự e d&egrave; của kh&aacute;ch h&agrave;ng khi lựa chọn.</li>\r\n</ul>\r\n\r\n<p>Điều trị mụn đ&uacute;ng c&aacute;ch bằng phương ph&aacute;p tại SPA Đ&Ocirc;NG Y ngay khi mụn xuất hiện để c&oacute; hiệu quả tốt nhất v&agrave; hạn chế tối đa sự l&acirc;y lan cũng như tổn thương do mụn để lại.</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết về c&aacute;c g&oacute;i Dịch vụ điều trị mụn tại SPA Đ&Ocirc;NG Y THI&Ecirc;N KIM&ndash;kh&aacute;ch h&agrave;ng vui l&ograve;ng li&ecirc;n hệ số hotline 0909.85.85.31</p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
--

CREATE TABLE `hinhanh` (
  `id` int(11) NOT NULL,
  `id_category` int(4) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL,
  `url_image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hinhanh`
--

INSERT INTO `hinhanh` (`id`, `id_category`, `name`, `link`, `description`, `url_image`, `active`) VALUES
(1, 1, 'Slide 1', '', '', '/uploads/images/banner-top/23761b13b334566a0f25.jpg', 1),
(3, 1, 'Slide 3', '', '', '/uploads/images/banner-top/3fe6c98061a784f9ddb6.jpg', 1),
(4, 3, '', '', '', '/uploads/images/hd-bg.jpg', 1),
(5, 4, 'THU GỌN CÁNH MŨI', '', 'Đặc trưng nổi bật của người Châu Á là cánh hẫu thuật thu gọn cánh mũi nội soi là công nghệ chỉnh sửa', '/uploads/files/03-sua%20mui%20go%20mui%20lech%20an%20toan.jpg', 1),
(6, 4, 'SỬA MŨI HỎNG SAU NÂNG ', '', '', '/uploads/files/02-sua%20mui%20hong%20sau%20nang.jpg', 1),
(7, 4, 'SỬA MŨI GỒ, MŨI LỆCH AN TOÀN', '', '', '/uploads/files/01-thu%20ngon%20canh%20mui.jpg', 1),
(9, 5, 'bg 2', '', '', '/uploads/images/page2.jpg', 1),
(10, 6, 'Hot girl kiều trang', '', '', '/uploads/images/kinhgnhiem/kieu-trang-sau-nang-mui-tham-my-2.jpg', 1),
(11, 6, 'Yến Nhi (Quận 8)', '', '', '/uploads/images/benhnhan/295412107596942344202847289464178751262307n-8236.png', 1),
(12, 6, 'Phương Anh (Quận 1)', '', '', '/uploads/images/benhnhan/capture-705.JPG', 1),
(13, 6, 'Cẩm tiên (Văn phòng)', '', '', '/uploads/images/benhnhan/BEN%20NHAN%201.jpg', 1),
(14, 6, 'Châu quỳnh (Quận 1)', '', '', '/uploads/images/benhnhan/BEN%20NHAN%202.jpg', 1),
(15, 6, 'Hải Ngọc', '', '', '/uploads/images/benhnhan/213178796368643967032697148810815140038352n-378.png', 1),
(16, 7, '', '', '', '/uploads/images/kienthuc/nang-mui-cau-truc-sun-suon-lan-dau-3.jpg', 1),
(17, 7, '', '', '', '/uploads/files/004.jpg', 1),
(18, 7, '', '', '', '/uploads/files/003.jpg', 1),
(19, 7, '', '', '', '/uploads/files/002.jpg', 1),
(20, 7, '', '', '', '/uploads/files/001.jpg', 1),
(21, 9, '', '', '', '/uploads/images/page4.jpg', 1),
(22, 10, 'Banner quản cáo', '', '', '/uploads/images/bANNER%20QC.jpg', 1),
(23, 11, 'VIDEO SỬA MŨI CẤU TRÚC', 'https://www.youtube.com/watch?v=1re07YFkIk8', 'VIDEO SỬA MŨI CẤU TRÚC', '/uploads/files/nang-mui-tai-Sai-Gon-HALO.jpg', 1),
(24, 1, 'Banner 3', '', '', '/uploads/images/banner-top/4c6434029c25797b2034.jpg', 1),
(25, 1, 'Banner 4', '', '', '/uploads/images/banner-top/5c78821d2a3acf64962b.jpg', 1),
(26, 12, '1', '', '', '/uploads/images/hinhanh/79bbe0df4107a459fd16.jpg', 1),
(27, 12, '2', '', '', '/uploads/images/hinhanh/bc0f136ab2b257ec0ea3.jpg', 1),
(28, 12, '3', '', '', '/uploads/images/hinhanh/d59698f5392ddc73853c.jpg', 1),
(29, 12, '4', '', '', '/uploads/images/hinhanh/d8e3d686775e9200cb4f.jpg', 1),
(30, 12, '5', '', '', '/uploads/images/hinhanh/ed4cf02f51f7b4a9ede6.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaihinhanh`
--

CREATE TABLE `loaihinhanh` (
  `id` int(4) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL,
  `active` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loaihinhanh`
--

INSERT INTO `loaihinhanh` (`id`, `name`, `link`, `description`, `active`) VALUES
(1, 'Slide1', NULL, NULL, 1),
(2, 'daedad', NULL, NULL, 0),
(3, 'Header', NULL, NULL, 1),
(4, 'Các phương pháp nâng mũi HOT nhất 2019', '', '', 1),
(5, 'Background phương pháp nâng mũi', NULL, NULL, 1),
(6, 'Chia sẻ kinh nghiệm nâng mũi đẹp của khách hàng thực tế', NULL, NULL, 1),
(7, 'Kiến thức nâng mũi đẹp', 'http://bacsisuamui.com:93/hinh-anh/', 'Nâng mũi Sài Gòn Halo đã mang đến những thay đổi gì?', 1),
(8, 'Banner cuối bài viết', '', 'Banner cuối bài viết', 1),
(9, 'Background tư vấn nâng mũi', '', '', 1),
(10, 'Banner trang con', '', '', 1),
(11, 'Banner video sidebar', '', '', 1),
(12, 'Những lý do nên sửa mũi tại Sài Gòn Halo', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaiquangcao`
--

CREATE TABLE `loaiquangcao` (
  `id` int(4) NOT NULL,
  `idLoaiHienThi` int(4) DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loaiquangcao`
--

INSERT INTO `loaiquangcao` (`id`, `idLoaiHienThi`, `Name`, `Alias`, `Active`) VALUES
(1, 1, 'Thông tin doanh nghiệp', NULL, 1),
(2, 4, 'Bí quyết sống vui khỏe sau tuổi 50', NULL, 1),
(3, 7, 'Khuyến mãi Du lịch', NULL, 1),
(4, 8, 'Ẩm thực đường phố ngon ', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(4) NOT NULL,
  `Parent` int(4) DEFAULT NULL,
  `SetHome` tinyint(1) DEFAULT NULL,
  `UrlImage` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Order` tinyint(1) DEFAULT 0,
  `Active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `Parent`, `SetHome`, `UrlImage`, `Order`, `Active`) VALUES
(1, 19, 0, '', 0, 1),
(2, 1, 0, '', 0, 1),
(3, 1, 0, '', 0, 1),
(4, 1, 0, '', 0, 1),
(5, 19, 0, '', 0, 1),
(6, 19, 0, '', 0, 1),
(7, 19, 0, '', 0, 1),
(8, 6, 0, '', 0, 1),
(9, 6, 0, '', 0, 1),
(10, 6, 0, '', 0, 1),
(11, 6, 0, '', 0, 1),
(12, 7, 0, '', 0, 1),
(13, 7, 0, '', 0, 1),
(14, 7, 0, '', 0, 1),
(15, 7, 0, '', 0, 1),
(16, 19, 0, '', 0, 1),
(17, 16, 0, '', 0, 1),
(18, 16, 0, '', 0, 1),
(19, 0, 0, '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham_lang`
--

CREATE TABLE `loaisanpham_lang` (
  `id` int(4) NOT NULL,
  `idLoai` int(4) NOT NULL,
  `idNgonNgu` tinyint(1) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Description` text CHARACTER SET utf8 NOT NULL,
  `Alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `SetMenu` int(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham_lang`
--

INSERT INTO `loaisanpham_lang` (`id`, `idLoai`, `idNgonNgu`, `Name`, `Description`, `Alias`, `SetMenu`) VALUES
(1, 1, 1, 'Tranh 3d', '', 'tranh-3d', 1),
(2, 2, 1, 'Tranh sơn thủy hữu tình', '', 'tranh-son-thuy-huu-tinh', 1),
(3, 3, 1, 'Tranh mã đáo thành công', '', 'tranh-ma-dao-thanh-cong', 1),
(4, 4, 1, 'Tranh thuận bờm xui gió', '', 'tranh-thuan-bom-xui-gio', 1),
(5, 5, 1, 'Tranh trần nhà', '', 'tranh-tran-nha', 1),
(6, 6, 1, 'PVC Vân Đá', '', 'pvc-van-da', 1),
(7, 7, 1, 'Gỗ Trang Trí', '', 'go-trang-tri', 1),
(8, 8, 1, 'PVC vân đá ốp tường', '', 'pvc-van-da-op-tuong', 1),
(9, 9, 1, 'PVC vân đá ốp trần', '', 'pvc-van-da-op-tran', 1),
(10, 10, 1, 'Nhựa đá PVC xuyên sáng', '', 'nhua-da-pvc-xuyen-sang', 1),
(11, 11, 1, 'Tranh PVC', '', 'tranh-pvc', 1),
(12, 12, 1, 'Gỗ lót sàn', '', 'go-lot-san', 1),
(13, 13, 1, 'Gỗ ốp tường', '', 'go-op-tuong', 1),
(14, 14, 1, 'Gỗ ốp trần', '', 'go-op-tran', 1),
(15, 15, 1, 'Gỗ làm kệ bếp', '', 'go-lam-ke-bep', 1),
(16, 16, 1, 'Quảng Cáo', '', 'quang-cao', 1),
(17, 17, 1, 'Nhận in quảng cáo trên mọi chất liệu', '', 'nhan-in-quang-cao-tren-moi-chat-lieu', 1),
(18, 18, 1, 'Thi công quản cáo', '', 'thi-cong-quan-cao', 1),
(19, 19, 1, 'Sản phẩm', '', 'san-pham', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitin`
--

CREATE TABLE `loaitin` (
  `id` int(4) NOT NULL,
  `Parent` int(4) DEFAULT NULL,
  `SetMenu` tinyint(1) DEFAULT 0,
  `SetHome` tinyint(1) DEFAULT 0,
  `SetQC` tinyint(1) DEFAULT 0,
  `Active` tinyint(1) DEFAULT 1,
  `Order` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loaitin`
--

INSERT INTO `loaitin` (`id`, `Parent`, `SetMenu`, `SetHome`, `SetQC`, `Active`, `Order`) VALUES
(1, 0, 1, 0, 0, 1, 0),
(2, 0, 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitin_lang`
--

CREATE TABLE `loaitin_lang` (
  `id` int(4) NOT NULL,
  `idLoaiTin` int(4) DEFAULT NULL,
  `idNgonNgu` tinyint(1) DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loaitin_lang`
--

INSERT INTO `loaitin_lang` (`id`, `idLoaiTin`, `idNgonNgu`, `Name`, `Alias`) VALUES
(1, 1, 1, 'Dịch vụ', 'dich-vu'),
(2, 1, 2, '', ''),
(3, 2, 1, 'Tin tức', 'tin-tuc'),
(4, 2, 2, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission`
--

CREATE TABLE `permission` (
  `id` int(4) NOT NULL,
  `permission` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `permission`
--

INSERT INTO `permission` (`id`, `permission`) VALUES
(1, 'Quản lý bình luận'),
(2, 'Quản lý đánh giá chủ xe'),
(3, 'Quản lý đánh giá xe'),
(4, 'Quản lý đơn hàng'),
(5, 'Quản lý kết quả giao dịch'),
(6, 'Quản lý loại đánh giá chủ xe'),
(7, 'Quản lý loại đánh giá xe'),
(8, 'Quản lý loại tin'),
(9, 'Quản lý mục đích thuê xe'),
(11, 'Quản lý ngày cho thuê xe'),
(12, 'Quản lý người cho thuê'),
(10, 'Quản lý người thuê'),
(13, 'Quản lý tin tức '),
(14, 'Quản lý tổng quát xe'),
(15, 'Quản lý xe'),
(16, 'Quản lý ban quản trị'),
(17, 'Quản lý phân quyền'),
(18, 'Quản lý dữ liệu xe'),
(19, 'Cập nhật thông tin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

CREATE TABLE `quangcao` (
  `id` int(4) NOT NULL,
  `Type` tinyint(1) DEFAULT NULL COMMENT '0: banner 1: bai viet',
  `idLoai` int(4) DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `UrlImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Position` int(1) DEFAULT NULL,
  `Link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` text CHARACTER SET utf8 DEFAULT NULL,
  `Content` text CHARACTER SET utf8 DEFAULT NULL,
  `Price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ViewCount` int(4) DEFAULT 0,
  `Date` int(4) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`id`, `Type`, `idLoai`, `Name`, `Alias`, `UrlImage`, `Position`, `Link`, `Description`, `Content`, `Price`, `ViewCount`, `Date`, `Active`) VALUES
(4, 0, NULL, NULL, NULL, '/uploads/files/left-banner.jpg', 0, '', '', NULL, NULL, 0, 1513048447, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quantri`
--

CREATE TABLE `quantri` (
  `id` int(4) NOT NULL,
  `idRole` int(4) NOT NULL,
  `TaiKhoan` varchar(20) CHARACTER SET utf8 NOT NULL,
  `MatKhau` varchar(100) CHARACTER SET utf8 NOT NULL,
  `HoTen` varchar(30) CHARACTER SET utf8 NOT NULL,
  `GioiTinh` tinyint(1) DEFAULT NULL,
  `NgaySinh` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CMND` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SDT` varchar(12) DEFAULT NULL,
  `DiaChi` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `NgayDangKy` int(4) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `quantri`
--

INSERT INTO `quantri` (`id`, `idRole`, `TaiKhoan`, `MatKhau`, `HoTen`, `GioiTinh`, `NgaySinh`, `Email`, `CMND`, `SDT`, `DiaChi`, `NgayDangKy`, `Active`) VALUES
(4, 1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'Tuấn Anh', 1, '2016-03-04', 'dev@gmail.com', '2322414', '22522525', '27A,P4,Q9', 1513051092, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `raovat`
--

CREATE TABLE `raovat` (
  `id` int(4) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `UrlImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` text CHARACTER SET utf8 DEFAULT NULL,
  `Content` text CHARACTER SET utf8 DEFAULT NULL,
  `Date` int(4) DEFAULT NULL,
  `SetHome` tinyint(1) DEFAULT NULL,
  `Start` int(4) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT 1,
  `Seo_Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Seo_Description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Seo_Keywords` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `raovat`
--

INSERT INTO `raovat` (`id`, `Name`, `Alias`, `UrlImage`, `Price`, `Description`, `Content`, `Date`, `SetHome`, `Start`, `Active`, `Seo_Title`, `Seo_Description`, `Seo_Keywords`) VALUES
(1, 'DIAMOND SHOW', 'DIAMOND-SHOW-1', '/uploads/files/dvh.jpg', '800.000 - 6.000.000 VNĐ', '<p><strong>Nghệ sĩ tham gia:</strong></p>\r\n\r\n<p>Đ&agrave;m Vĩnh Hưng,&nbsp;Dương Triệu Vũ,&nbsp;Hồng Ngọc,&nbsp;Hồ Ngọc H&agrave;,&nbsp;Bảo Anh,&nbsp;Thanh Thảo</p>\r\n\r\n<p><br />\r\n<strong>T&oacute;m tắt:</strong></p>\r\n\r\n<p>SI&Ecirc;U SHOW được đầu tư hơn 9 TỶ v&agrave; lấy &yacute; tưởng DỰA TR&Ecirc;N MỘT GIẤC MƠ của ca sĩ Đ&agrave;m Vĩnh Hưng đang ẩn chưa nhiều điều ĐẶC BIỆT</p>\r\n', '', NULL, 1, NULL, 1, NULL, '', ''),
(2, 'Modern Talking ft Thomas Anders Live In Concert', 'Modern-Talking-ft-Thomas-Anders-Live-In-Concert-2', '/uploads/files/rao-vat-1.jpg', '800.000 - 6.000.000 VNĐ', '<p><strong>Nghệ sĩ tham gia:</strong></p>\r\n\r\n<p>Alf Richard Kraggerud.,&nbsp;Andree,&nbsp;Andrea Bonatta,Oplus Band</p>\r\n\r\n<p>ĐANG B&Aacute;N V&Eacute;<br />\r\n<strong>T&oacute;m tắt:</strong></p>\r\n\r\n<p>MODERN TALKING&nbsp;ĐẾN H&Agrave; NỘI &ndash; CƠN B&Atilde;O THỰC SỰ SẮP BẮT ĐẦU</p>\r\n', '', NULL, 1, NULL, 1, NULL, '', ''),
(3, 'LIVESHOW CHẾ LINH', 'LIVESHOW-CHE-LINH-3', '/uploads/files/liveshow-che-linh---banner.png', '270.000 - 3.600.000 VNĐ', '<p><strong>Nghệ sĩ tham gia:</strong></p>\r\n\r\n<p>Anh Thơ,&nbsp;Quang Linh,&nbsp;Ho&agrave;i L&acirc;m,&nbsp;Phương Dung,Ca sĩ Chế Thanh,&nbsp;MC Nguyễn Cao Kỳ Duy&ecirc;n</p>\r\n\r\n<p>ĐANG B&Aacute;N V&Eacute;<br />\r\n<strong>T&oacute;m tắt:</strong></p>\r\n\r\n<p>Giọng ca v&agrave;ng: CHẾ LINH, QUANG LINH, SƠN TUYỀN, PHƯƠNG DUNG, ANH THƠ, NGỌC ANH, HO&Agrave;I L&Acirc;M, GI&Aacute;NG TI&Ecirc;N C&ugrave;ng nh&oacute;m m&uacute;a, vũ c&ocirc;ng Th&uacute;y Nga, c&aacute;c người mẫu trẻ đẹp v&agrave; ban nhạc trở về từ hải ngoại. Chế Linh h&aacute;t tr&ecirc;n 20 b&agrave;i v&agrave; song ca c&ugrave;ng c&aacute;c ca sỹ nổi tiếng</p>\r\n', '', NULL, 1, NULL, 1, NULL, '', ''),
(4, 'Liveshow Tuấn Hưng', 'Liveshow-Tuan-Hung-4', '/uploads/files/max-tuanhung.jpg', 'cập nhật', '<p><strong>T&oacute;m tắt:</strong></p>\r\n\r\n<p>H&atilde;y đến với Max3 Club tối ng&agrave;y Chủ Nhật ( 8/9/2013 ) để ho&agrave; m&igrave;nh v&agrave;o kh&ocirc;ng kh&iacute; s&ocirc;i động trong Live Show Ca Sĩ &rdquo; TUẤN HƯNG &rdquo; c&aacute;c m&agrave;n vũ đạo bay bổng c&ugrave;ng những b&agrave;i h&aacute;t s&ocirc;i động đang được giới trẻ ưa th&iacute;ch nhất tại HN &amp; TP.HCM&hellip; C&ugrave;ng sự g&oacute;p mặt của MC Michael &amp; những SEXY DANCER&hellip; Những P.R n&aacute;o nhiệt hứa hẹn 1 buổi tối hết nấc tại MAX3 CLUB..</p>\r\n', '', NULL, 1, NULL, 1, NULL, '', ''),
(5, 'BEAUTY NIGHT', 'BEAUTY-NIGHT-5', '/uploads/files/envy-beautynight.jpg', 'cập nhật', '<p><strong>Nghệ sĩ tham gia:</strong><br />\r\n<strong>T&oacute;m tắt:</strong></p>\r\n', '', NULL, 1, NULL, 1, NULL, '', ''),
(6, 'Love you to night', 'Love-you-to-night-6', '/uploads/files/lalorca-yanbimrt.jpg', '', '<p><strong>T&oacute;m tắt:</strong></p>\r\n\r\n<p>lalorca yanbimrt Love you to night Love you to night C&oacute; g&igrave; Hot tại La Llorca tuần n&agrave;y?! Thứ Năm (15/08) sẽ l&agrave; một sự kiện đặc biệt Đ&ecirc;m Mini Show &quot; Love you to night&quot; của hai rapper đ&igrave;nh đ&aacute;m Mr-T &amp; Yanbi với c&aacute;c hit l&agrave;m mưa l&agrave;m gi&oacute; c&aacute;c bản xếp hạng V-pop : * Love you to night * Thu Cuối * Nothing in your eyes * My Lady</p>\r\n', '', NULL, 1, NULL, 1, NULL, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rate`
--

CREATE TABLE `rate` (
  `id` int(4) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `point` tinyint(1) NOT NULL,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_object` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `rate`
--

INSERT INTO `rate` (`id`, `type`, `point`, `ip`, `id_object`) VALUES
(1, 1, 6, '183.80.118.2', 25),
(2, 1, 10, '183.80.118.2', 61),
(3, 1, 8, '183.80.118.2', 57),
(4, 1, 4, '183.80.118.2', 57),
(5, 1, 10, '183.80.118.2', 55),
(6, 1, 10, '183.80.118.2', 42),
(7, 1, 10, '14.161.24.180', 41),
(8, 1, 4, '14.161.24.180', 43),
(9, 1, 10, '115.79.215.157', 27),
(10, 1, 4, '115.79.215.157', 46),
(11, 1, 10, '64.233.173.17', 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(4) NOT NULL,
  `rolename` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `rolename`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(4) NOT NULL,
  `roleid` int(4) DEFAULT NULL,
  `permissionid` int(4) DEFAULT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `role_permission`
--

INSERT INTO `role_permission` (`id`, `roleid`, `permissionid`, `create`, `update`, `delete`, `active`) VALUES
(155, 38, 16, NULL, NULL, 1, NULL),
(159, 39, 16, 1, 1, 1, NULL),
(158, 39, 15, NULL, 1, 1, NULL),
(213, 1, 16, 1, 1, 1, 1),
(212, 1, 15, 1, 1, 1, 1),
(211, 1, 14, 1, 1, 1, 1),
(210, 1, 13, 1, 1, 1, 1),
(209, 1, 10, 1, 1, 1, 1),
(208, 1, 12, 1, 1, 1, 1),
(207, 1, 11, 1, 1, 1, 1),
(206, 1, 9, 1, 1, 1, 1),
(205, 1, 8, 1, 1, 1, 1),
(204, 1, 7, 1, 1, 1, 1),
(203, 1, 6, 1, 1, 1, 1),
(202, 1, 5, 1, 1, 1, 1),
(201, 1, 4, 1, 1, 1, 1),
(200, 1, 3, 1, 1, 1, 1),
(199, 1, 2, 1, 1, 1, 1),
(198, 1, 1, 1, 1, 1, 1),
(160, 40, 15, NULL, NULL, 1, NULL),
(157, 39, 14, NULL, 1, 1, NULL),
(156, 39, 13, NULL, 1, NULL, NULL),
(154, 38, 15, NULL, NULL, 1, NULL),
(217, 1, 17, 1, 1, 1, 1),
(216, 31, 15, NULL, NULL, NULL, 1),
(218, 1, 18, 1, 1, 1, 1),
(226, 1, 19, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `router`
--

CREATE TABLE `router` (
  `id` int(11) NOT NULL,
  `idObject` int(4) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `type` tinyint(4) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1: san pham; 3: loai sp; 5 tin tuc; 7: loai tin tuc'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `router`
--

INSERT INTO `router` (`id`, `idObject`, `alias`, `type`, `active`) VALUES
(1, 1, 'tranh-3d', 3, 1),
(2, 2, 'tranh-son-thuy-huu-tinh', 3, 1),
(3, 3, 'tranh-ma-dao-thanh-cong', 3, 1),
(4, 4, 'tranh-thuan-bom-xui-gio', 3, 1),
(5, 5, 'tranh-tran-nha', 3, 1),
(6, 6, 'pvc-van-da', 3, 1),
(7, 7, 'go-trang-tri', 3, 1),
(8, 8, 'pvc-van-da-op-tuong', 3, 1),
(9, 9, 'pvc-van-da-op-tran', 3, 1),
(10, 10, 'nhua-da-pvc-xuyen-sang', 3, 1),
(11, 11, 'tranh-pvc', 3, 1),
(12, 12, 'go-lot-san', 3, 1),
(13, 13, 'go-op-tuong', 3, 1),
(14, 14, 'go-op-tran', 3, 1),
(15, 15, 'go-lam-ke-bep', 3, 1),
(16, 16, 'quang-cao', 3, 1),
(17, 17, 'nhan-in-quang-cao-tren-moi-chat-lieu', 3, 1),
(18, 18, 'thi-cong-quan-cao', 3, 1),
(19, 1, 'dich-vu', 7, 1),
(20, 3, 'tin-tuc', 7, 1),
(21, 19, 'san-pham', 3, 1),
(22, 13, 'thong-tin-cong-ty', 9, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(4) NOT NULL,
  `idLoai` int(4) DEFAULT NULL,
  `Gia` int(4) NOT NULL,
  `UrlImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `HangSanXuat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Description` text CHARACTER SET utf8 DEFAULT NULL,
  `Keywords` text CHARACTER SET utf8 DEFAULT NULL,
  `MaSP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SetHome` tinyint(1) DEFAULT NULL,
  `Date` int(4) NOT NULL,
  `Active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_lang`
--

CREATE TABLE `sanpham_lang` (
  `id` int(4) NOT NULL,
  `idSP` int(4) DEFAULT NULL,
  `idNgonNgu` tinyint(1) DEFAULT NULL,
  `BaoHanh` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `NameShort` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Youtube` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `File` text CHARACTER SET utf8 DEFAULT NULL,
  `CongDung` text CHARACTER SET utf8 DEFAULT NULL,
  `CachDung` text CHARACTER SET utf8 DEFAULT NULL,
  `ChongChiDinh` text CHARACTER SET utf8 DEFAULT NULL,
  `MoTa` text CHARACTER SET utf8 DEFAULT NULL,
  `Content` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` int(4) NOT NULL,
  `idSession` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `ipAddress` varchar(20) NOT NULL,
  `idloai` int(11) DEFAULT NULL,
  `lastVisit` int(14) NOT NULL,
  `session_start` int(14) NOT NULL,
  `userAgent` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `idSession`, `username`, `ipAddress`, `idloai`, `lastVisit`, `session_start`, `userAgent`) VALUES
(40941, '6s80gpdqatjo47d8pta13d2ed6', NULL, '66.249.79.79', NULL, 1567689891, 1567689891, 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `single_page`
--

CREATE TABLE `single_page` (
  `id` int(4) NOT NULL,
  `set_home` tinyint(1) NOT NULL,
  `set_menu` tinyint(4) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `urlImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8 DEFAULT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `seo_keywords` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `single_page`
--

INSERT INTO `single_page` (`id`, `set_home`, `set_menu`, `name`, `urlImage`, `description`, `content`, `seo_description`, `seo_keywords`, `active`) VALUES
(7, 0, 0, 'ĐĂNG KÝ THÀNH CÔNG', '/uploads/images/NANG-MUI-5-01.jpg', '', '<p>Ch&uacute;c mừng bạn đ&atilde; đăng k&yacute; th&agrave;nh c&ocirc;ng</p>\r\n\r\n<p>ĐĂNG K&Yacute; TH&Agrave;NH C&Ocirc;NG</p>\r\n\r\n<p>BỆNH VIỆN THẨM MỸ S&Agrave;I G&Ograve;N HALO</p>\r\n\r\n<p>Đ&atilde; nhận được th&ocirc;ng tin tư vấn của bạn. Ch&uacute;ng t&ocirc;i sẽ gửi phản hồi sớm nhất !</p>\r\n\r\n<p>B&aacute;c sĩ tư vấn : L&ecirc; Mai Hữu&nbsp;</p>\r\n\r\n<p>SĐT:&nbsp;<a href=\"tel:0933077766\">0933077766</a></p>\r\n', '', '', 1),
(8, 0, 0, 'GIÁ PHẪU THUẬT NÂNG MŨI HẾT BAO NHIÊU TIỀN?', '/uploads/images/NANG-MUI-5-01.jpg', 'update...\r\n', '<h2><strong>update...</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 1),
(9, 0, 0, 'Hình ảnh sữa mũi', '', 'update........\r\n', '<h1>update........</h1>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 1),
(10, 0, 0, 'Chi phí', '', 'Bảng giá mới nhất\r\n', '<p>N&acirc;ng mũi sụn nh&acirc;n tạo: 7.9 triệu</p>\r\n\r\n<p>N&acirc;ng mũi bọc sụn tự th&acirc;n:&nbsp;15 triệu</p>\r\n\r\n<p>N&acirc;ng mũi S line 3D:&nbsp;25 triệu</p>\r\n\r\n<p>N&acirc;ng mũi cấu tr&uacute;c 4D:&nbsp;35 triệu</p>\r\n\r\n<p>N&acirc;ng mũi cấu tr&uacute;c 4D NanoForm&nbsp;:&nbsp;55 triệu</p>\r\n\r\n<p>N&acirc;ng mũi cấu tr&uacute;c 4D Tự th&acirc;n&nbsp;:&nbsp;75 triệu</p>\r\n\r\n<p>Thu gọn&nbsp;c&aacute;nh mũi&nbsp;:&nbsp;6 triệu</p>\r\n\r\n<p>Thu nhỏ&nbsp;đầu mũi&nbsp;:&nbsp;12 triệu</p>\r\n\r\n<p>Chỉnh h&igrave;nh mũi phức tạp ( Phẫu thu&acirc;t hỏng,tai nạn, sứt m&ocirc;i, vẹo, gồ, hếch&hellip;.) :&nbsp;75 triệu</p>\r\n', '', '', 1),
(12, 1, 1, 'Giới thiệu', '', '', '<p><strong>SAIGON HALO ĐỊA CHỈ THẨM MŨI UY T&Iacute;N &ndash; CHẤT LƯỢNG</strong></p>\r\n\r\n<p>Saigon Halo l&agrave; một trong những thương hiệu thẩm mỹ mũi h&agrave;ng đầu S&agrave;i G&ograve;n. Qu&yacute; kh&aacute;ch h&agrave;ng đến với ch&uacute;ng t&ocirc;i sẽ được trải nghiệm những kh&aacute;c biệt từ c&ocirc;ng nghệ thẩm mỹ cho đến chất lượng dịch vụ, cơ sở vật chất&hellip;.</p>\r\n\r\n<p><strong>+ Cơ sở vật chất hiện đại, tiện nghi</strong></p>\r\n\r\n<p>Saigon Halo lu&ocirc;n kh&ocirc;ng ngừng ch&uacute; trọng đến việc n&acirc;ng cao cơ sở vật chất, trang bị m&aacute;y m&oacute;c hiện đại nhằm tạo cho Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; cảm gi&aacute;c thoải m&aacute;i v&agrave; an t&acirc;m hơn khi sử dụng những dịch vụ của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>C&aacute;c thiết bị tối t&acirc;n của SaiGon HaLo c&oacute; thể kể đến như: M&aacute;y chụp CT Scanner, thiết bị nội soi, m&aacute;y Vectra XT 3D. Vectra XT 3D c&oacute; khả năng ph&acirc;n t&iacute;ch tỷ lệ khu&ocirc;n mặt, cho bạn biết những khuyết điểm tr&ecirc;n gương mặt, từ đ&oacute; định h&igrave;nh sẵn d&aacute;ng mũi sau khi n&acirc;ng, v&igrave; vậy bạn c&oacute; thể xem trước kết quả sau n&acirc;ng mũi.</p>\r\n\r\n<p>Nhờ đ&aacute;p ứng tất cả c&aacute;c y&ecirc;u cầu khắc khe SaiGon HaLo đ&atilde; vượt qua qu&aacute; tr&igrave;nh kiểm định khắc khe của Bộ Y tế v&agrave; được cấp giấy ph&eacute;p hoạt động.</p>\r\n\r\n<p><strong>+ C&ocirc;ng nghệ thẩm mỹ mũi ti&ecirc;n tiến</strong></p>\r\n\r\n<p>Hiểu được nhu cầu thẩm mỹ mũi ng&agrave;y c&agrave;ng cao của Qu&yacute; kh&aacute;ch h&agrave;ng Saigon Halo lu&ocirc;n nỗ lực tiếp cận v&agrave; chuyển giao nhiều c&ocirc;ng nghệ n&acirc;ng mũi mới, nhằm mang đến cho kh&aacute;ch h&agrave;ng vẻ đẹp ho&agrave;n hảo nhất:</p>\r\n\r\n<ul>\r\n	<li>N&acirc;ng mũi S line: tạo h&igrave;nh d&aacute;ng mũi h&igrave;nh chữ S, với độ cao đạt chuẩn, mũi mềm mại, tự nhi&ecirc;n, ph&ugrave; hợp với phụ nữ &Aacute; Đ&ocirc;ng.</li>\r\n	<li>N&acirc;ng mũi L line 3D: l&agrave; sự t&iacute;ch hợp của kỹ thuật chỉnh sửa mũi to&agrave;n diện, đem lại cho &nbsp;kh&aacute;ch h&agrave;ng chiếc mũi cao đẹp &ldquo;chuẩn T&acirc;y&rdquo;</li>\r\n	<li>N&acirc;ng mũi bọc sụn: d&ugrave;ng sụn sinh học định h&igrave;nh n&acirc;ng cao sống mũi đồng thời d&ugrave;ng sụn tự th&acirc;n bao bọc đầu mũi, tr&aacute;nh t&igrave;nh trạng b&oacute;ng đỏ đầu mũi, kh&ocirc;ng lộ sống mũi.</li>\r\n	<li>N&acirc;ng mũi H&agrave;n Quốc: phương ph&aacute;p n&agrave;y d&ugrave;ng sụn sinh học định h&igrave;nh gi&uacute;p n&acirc;ng cao sống mũi, cho mũi d&aacute;ng mũi cao thanh t&uacute;.</li>\r\n	<li>N&acirc;ng mũi kh&ocirc;ng phẫu thuật: sử dụng một số chất l&agrave;m đầy sinh học, ti&ecirc;m trực tiếp v&agrave;o trong khoang mũi, gi&uacute;p mũi cao đẹp tự nhi&ecirc;n m&agrave; kh&ocirc;ng cần sử dụng dao k&eacute;o để đưa sụn v&agrave;o trong khoang mũi.</li>\r\n	<li>C&aacute;c dịch vụ sửa mũi gồ, lệch, mũi hỏng sau n&acirc;ng: T&ugrave;y v&agrave;o trường hợp, b&aacute;c sĩ sẽ ph&acirc;n t&iacute;ch v&agrave; c&oacute; phương ph&aacute;p khắc phục cụ thể.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>+ Đội ngũ b&aacute;c sĩ chuy&ecirc;n khoa gi&agrave;u kinh nghiệm</strong></p>\r\n\r\n<p>B&ecirc;n cạnh thế mạnh về c&ocirc;ng nghệ, điều tạo n&ecirc;n uy t&iacute;n của thương hiệu Saigon Halo l&agrave; đội ngũ b&aacute;c sĩ giỏi, được đ&agrave;o tạo b&agrave;i bản về tr&igrave;nh độ chuy&ecirc;n m&ocirc;n v&agrave; tay nghề, nhiều năm tu nghiệp ở nước ngo&agrave;i, đứng đầu l&agrave; B&aacute;c sĩ L&ecirc; Mai Hữu &ndash; người đ&atilde; c&oacute; rất nhiều năm kinh nghiệm trong lĩnh vực PTTM.</p>\r\n\r\n<p><strong>+ </strong><strong>Phục vụ chuy&ecirc;n nghiệp</strong></p>\r\n\r\n<p>Đến với Thẩm mỹ viện Saigon HaLo bạn sẽ được phục vụ tận t&igrave;nh bởi những chuy&ecirc;n vi&ecirc;n tư vấn v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng được đ&agrave;o tạo chuy&ecirc;n nghiệp. Ch&uacute;ng t&ocirc;i sẽ chăm s&oacute;c bạn trước &ndash; trong &ndash; v&agrave; sau khi thực hiện dịch vụ nhằm mang lại cho bạn sự y&ecirc;n t&acirc;m, tin tưởng, đảm bảo sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng d&ugrave; l&agrave; kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 1),
(13, 0, 0, 'Thông tin công ty', '', '', '<p>ĐỊA CHỈ:</p>\r\n\r\n<p>164 Nguyễn Văn C&aacute;ch-KP2 - P.Ph&uacute; Khương - Bến Tre</p>\r\n\r\n<p>TELL: 0796 791 968</p>\r\n\r\n<p>MAIL: tuanking87@gmail.com</p>\r\n\r\n<p>WEBSITE: www.noithattrangtriyes.com</p>\r\n', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(4) NOT NULL,
  `Type` tinyint(1) DEFAULT 0 COMMENT '0:banner\r\n1:hinhanhcongty',
  `TieuDe` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `UrlImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SetHome` tinyint(1) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `Type`, `TieuDe`, `UrlImage`, `Link`, `SetHome`, `Active`) VALUES
(14, 0, NULL, '/uploads/images/nang-mui-cau-truc4D-2.jpg', '', NULL, 1),
(15, 0, NULL, '/uploads/images/1500x503.jpg', '', NULL, 1),
(16, 0, NULL, '/uploads/images/1500x503%20(2).jpg', '', NULL, 1),
(17, 0, NULL, '/uploads/images/1500x503%20(1).jpg', '', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide_lang`
--

CREATE TABLE `slide_lang` (
  `id` int(4) NOT NULL,
  `idSlide` int(4) DEFAULT NULL,
  `idNgonNgu` tinyint(1) DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `slide_lang`
--

INSERT INTO `slide_lang` (`id`, `idSlide`, `idNgonNgu`, `Name`, `Description`) VALUES
(9, 9, 1, '', ''),
(10, 10, 1, '', ''),
(11, 11, 1, '', ''),
(12, 12, 1, '', ''),
(13, 13, 1, 'Tin tức', ''),
(14, 14, 1, 'Tin tức', ''),
(15, 15, 1, '', ''),
(16, 16, 1, '', ''),
(17, 17, 1, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(4) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Alias` varchar(255) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `Name`, `Alias`, `Active`) VALUES
(3, 'Hạ long', 'Ha-long', 1),
(4, 'iphone 7', 'iphone-7', 1),
(5, 'mưa lớn', 'mua-lon', 1),
(6, 'paris', 'paris', 1),
(7, 'lũ lụt', 'lu-lut', 1),
(8, 'galaxy', 'galaxy', 1),
(10, '	fashion', 'fashion', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags_tintuc`
--

CREATE TABLE `tags_tintuc` (
  `id` int(4) NOT NULL,
  `idTags` int(4) DEFAULT NULL,
  `idTinTuc` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinchung`
--

CREATE TABLE `thongtinchung` (
  `id` int(4) NOT NULL,
  `idNgonNgu` tinyint(1) DEFAULT NULL,
  `Address` text CHARACTER SET utf8 DEFAULT NULL,
  `Company` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Favicon` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Logo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Slogan` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LogoMobile` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Banner` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Fax` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Tel` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Facebook` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Twitter` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Google` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Youtube` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Pinterest` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tumblr` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Skype` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Abouts` text CHARACTER SET utf8 DEFAULT NULL,
  `MessengerFB` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thongtinchung`
--

INSERT INTO `thongtinchung` (`id`, `idNgonNgu`, `Address`, `Company`, `Favicon`, `Logo`, `Slogan`, `LogoMobile`, `Banner`, `Email`, `Fax`, `Phone`, `Tel`, `Facebook`, `Twitter`, `Google`, `Youtube`, `Pinterest`, `Tumblr`, `Skype`, `Abouts`, `MessengerFB`) VALUES
(1, 1, ' 522-524  Nguyễn Chí Thanh, Phường 7, Quận 10, Thành phố Hồ Chí Minh', 'BÁC SĨ THẨM MỸ LÊ MAI HỮU', '/uploads/images/logo%20saigonhalo%20rong%20nen-01.png', '/uploads/images/logo%20saigonhalo%20rong%20nen-01.png', '/uploads/files/coverfb.png', '/uploads/images/logo%20saigonhalo%20rong%20nen-01.png', '/uploads/files/banner%20tet.jpg', 'dr.huu.thammy@gmail.com', '', '0933077766', '0933077766', 'https://www.facebook.com/', 'https://twitter.com', '', 'https://www.youtube.com', 'https://www.pinterest.com', 'https://www.tumblr.com', NULL, 'Chúng tôi sáng lập ra công ty Vnetcom  từ năm 2008 xuất phát từ niềm đam mê cái đẹp và văn hóa Việt. .Chúng tôi định hướng Vnetcom là một doanh nghiệp chuyên sâu về mỹ thuật ứng dụng và marketing online. Với sứ mệnh mang đến cho doanh nghiệp những giá trị sáng tạo có tính ứng dụng và mỹ thuật, thể hiện rõ bản sắc văn hóa Việt cũng như mang đến cho quý đối tác những giải pháp marketing, truyền thông hiệu quả cho việc phát triển kinh doanh, xây dựng thương hiệu Việt xứng tầm.', 'https://www.messenger.com/t/inantuankhoakhoi/'),
(2, 2, ' 522-524  Nguyễn Chí Thanh, Phường 7, Quận 10, Thành phố Hồ Chí Minh', 'BÁC SĨ THẨM MỸ LÊ MAI HỮU', '/uploads/images/logo%20saigonhalo%20rong%20nen-01.png', '/uploads/images/logo%20saigonhalo%20rong%20nen-01.png', '/uploads/files/coverfb.png', '/uploads/images/logo%20saigonhalo%20rong%20nen-01.png', '/uploads/files/banner%20tet.jpg', 'dr.huu.thammy@gmail.com', '', '0933077766', '0933077766', 'https://www.facebook.com/', 'https://twitter.com', '', 'https://www.youtube.com', 'https://www.pinterest.com', 'https://www.tumblr.com', NULL, 'Chúng tôi sáng lập ra công ty Vnetcom  từ năm 2008 xuất phát từ niềm đam mê cái đẹp và văn hóa Việt. .Chúng tôi định hướng Vnetcom là một doanh nghiệp chuyên sâu về mỹ thuật ứng dụng và marketing online. Với sứ mệnh mang đến cho doanh nghiệp những giá trị sáng tạo có tính ứng dụng và mỹ thuật, thể hiện rõ bản sắc văn hóa Việt cũng như mang đến cho quý đối tác những giải pháp marketing, truyền thông hiệu quả cho việc phát triển kinh doanh, xây dựng thương hiệu Việt xứng tầm.', 'https://www.messenger.com/t/inantuankhoakhoi/');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) NOT NULL,
  `idSP` int(11) DEFAULT NULL,
  `UrlImage` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `Active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(4) NOT NULL,
  `idNguoiDang` tinyint(1) DEFAULT NULL,
  `idLoaiTin` int(4) DEFAULT NULL,
  `idTags` varchar(255) DEFAULT NULL,
  `UrlImage` varchar(255) CHARACTER SET utf8 NOT NULL,
  `NguoiDang` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Date` int(4) DEFAULT NULL,
  `SetHome` tinyint(1) DEFAULT 0,
  `set_care` tinyint(1) DEFAULT 0,
  `Seo_Keywords` text CHARACTER SET utf8 DEFAULT NULL,
  `Seo_Description` text CHARACTER SET utf8 DEFAULT NULL,
  `mo_rong` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ViewCount` int(4) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc_lang`
--

CREATE TABLE `tintuc_lang` (
  `id` int(4) NOT NULL,
  `idNgonNgu` tinyint(1) DEFAULT NULL,
  `idTinTuc` int(4) DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` text CHARACTER SET utf8 DEFAULT NULL,
  `Content` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(4) NOT NULL,
  `idCategory` int(4) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Date` int(4) DEFAULT NULL,
  `UrlImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` text CHARACTER SET utf8 DEFAULT NULL,
  `SetHome` text CHARACTER SET utf8 DEFAULT NULL,
  `Footer` tinyint(1) DEFAULT 0,
  `Active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `idCategory`, `Name`, `Alias`, `Link`, `Date`, `UrlImage`, `Description`, `SetHome`, `Footer`, `Active`) VALUES
(10, 4, 'Dr Apa - Taim\'s Reason To Smile - Ft. Taim Al Falasi (S02 E06)', 'Dr-Apa---Taims-Reason-To-Smile---Ft.-Taim-Al-Falasi-(S02-E06)', 'https://www.youtube.com/watch?v=DUCaOIzuXsk', 1558070326, '/uploads/images/559X309_VIDEO.jpg', '<p>Dr Apa - Taim&#39;s Reason To Smile - Ft. Taim Al Falasi (S02 E06)</p>\r\n', '1', 0, 1),
(18, 3, 'Dr Apa - Kattan Smile Makeover - Ft. Huda, Mona, Alya Kattan (E08)', 'Dr-Apa---Kattan-Smile-Makeover---Ft.-Huda,-Mona,-Alya-Kattan-(E08)', 'https://www.youtube.com/watch?v=DUCaOIzuXsk', 1558070195, '/uploads/images/559X309_VIDEO.jpg', '<p>Dr Apa - Kattan Smile Makeover - Ft. Huda, Mona, Alya Kattan (E07)</p>\r\n', '1', 1, 1),
(19, 2, 'Dr Apa - Kattan Smile Makeover - Ft. Huda, Mona, Alya Kattan (E07)', 'Dr-Apa---Kattan-Smile-Makeover---Ft.-Huda,-Mona,-Alya-Kattan-(E07)', 'https://www.youtube.com/watch?v=IeeIgFoaC9E', 1558070169, '/uploads/images/559X309_VIDEO.jpg', '<p>Dr Apa - Kattan Smile Makeover - Ft. Huda, Mona, Alya Kattan (E07)</p>\r\n', '1', 1, 1),
(20, 1, 'Dr Apa - The Dubai Clinic - Ft. Huda Kattan, AlReem Saif (E05)', 'Dr-Apa---The-Dubai-Clinic---Ft.-Huda-Kattan,-AlReem-Saif-(E05)', 'https://www.youtube.com/watch?v=IeeIgFoaC9E', 1558070109, '/uploads/images/559X309_VIDEO.jpg', '<p>Dr Apa - The Dubai Clinic - Ft. Huda Kattan, AlReem Saif (E04)</p>\r\n', '1', 1, 1),
(21, 1, 'Dr Apa - The Dubai Clinic - Ft. Huda Kattan, AlReem Saif (E04)', 'Dr-Apa---The-Dubai-Clinic---Ft.-Huda-Kattan,-AlReem-Saif-(E04)', 'https://www.youtube.com/watch?v=IeeIgFoaC9E', 1558070056, '/uploads/images/559X309_VIDEO.jpg', '<p>Dr Apa - The Dubai Clinic - Ft. Huda Kattan, AlReem Saif (E04)</p>\r\n', '1', 1, 1),
(22, 1, 'Dr Apa - The Dubai Clinic ', 'dr-apa---the-dubai-clinic', 'https://www.youtube.com/watch?v=IeeIgFoaC9E', 1561518745, '/uploads/files/post.jpg', '<p>Dr Apa - The Dubai Clinic&nbsp;</p>\r\n', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video_category`
--

CREATE TABLE `video_category` (
  `id` int(4) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_parent` int(4) DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `video_category`
--

INSERT INTO `video_category` (`id`, `name`, `id_parent`, `active`) VALUES
(1, 'Nâng Mũi Cấu Trúc', 0, 1),
(2, 'Nâng mũi S Line 3D', 0, 1),
(3, 'Sửa Mũi Phẫu Thuật Hỏng', 0, 1),
(4, 'Nâng Mũi Nam', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video_setting`
--

CREATE TABLE `video_setting` (
  `id` int(4) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `urlImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `video_setting`
--

INSERT INTO `video_setting` (`id`, `name`, `urlImage`, `description`) VALUES
(1, 'Video', '/uploads/images/559X309_VIDEO.jpg', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baogia`
--
ALTER TABLE `baogia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `camnhankhachhang`
--
ALTER TABLE `camnhankhachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cauhinh`
--
ALTER TABLE `cauhinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cauhinhhinhanh`
--
ALTER TABLE `cauhinhhinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `counttruycap`
--
ALTER TABLE `counttruycap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `custom`
--
ALTER TABLE `custom`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gioithieu_lang`
--
ALTER TABLE `gioithieu_lang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaihinhanh`
--
ALTER TABLE `loaihinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaiquangcao`
--
ALTER TABLE `loaiquangcao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham_lang`
--
ALTER TABLE `loaisanpham_lang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaitin_lang`
--
ALTER TABLE `loaitin_lang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Chỉ mục cho bảng `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quantri`
--
ALTER TABLE `quantri`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TaiKhoan` (`TaiKhoan`);

--
-- Chỉ mục cho bảng `raovat`
--
ALTER TABLE `raovat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Chỉ mục cho bảng `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `router`
--
ALTER TABLE `router`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham_lang`
--
ALTER TABLE `sanpham_lang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `single_page`
--
ALTER TABLE `single_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide_lang`
--
ALTER TABLE `slide_lang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Chỉ mục cho bảng `tags_tintuc`
--
ALTER TABLE `tags_tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongtinchung`
--
ALTER TABLE `thongtinchung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc_lang`
--
ALTER TABLE `tintuc_lang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `video_category`
--
ALTER TABLE `video_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `video_setting`
--
ALTER TABLE `video_setting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baogia`
--
ALTER TABLE `baogia`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `book`
--
ALTER TABLE `book`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `camnhankhachhang`
--
ALTER TABLE `camnhankhachhang`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `cauhinh`
--
ALTER TABLE `cauhinh`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cauhinhhinhanh`
--
ALTER TABLE `cauhinhhinhanh`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `counttruycap`
--
ALTER TABLE `counttruycap`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `custom`
--
ALTER TABLE `custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `gioithieu_lang`
--
ALTER TABLE `gioithieu_lang`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `loaihinhanh`
--
ALTER TABLE `loaihinhanh`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `loaiquangcao`
--
ALTER TABLE `loaiquangcao`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `loaisanpham_lang`
--
ALTER TABLE `loaisanpham_lang`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loaitin_lang`
--
ALTER TABLE `loaitin_lang`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `quantri`
--
ALTER TABLE `quantri`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `raovat`
--
ALTER TABLE `raovat`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT cho bảng `router`
--
ALTER TABLE `router`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham_lang`
--
ALTER TABLE `sanpham_lang`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40942;

--
-- AUTO_INCREMENT cho bảng `single_page`
--
ALTER TABLE `single_page`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `slide_lang`
--
ALTER TABLE `slide_lang`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tags_tintuc`
--
ALTER TABLE `tags_tintuc`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thongtinchung`
--
ALTER TABLE `thongtinchung`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tintuc_lang`
--
ALTER TABLE `tintuc_lang`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `video_category`
--
ALTER TABLE `video_category`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `video_setting`
--
ALTER TABLE `video_setting`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
