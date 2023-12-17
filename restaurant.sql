-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2023 lúc 06:32 AM
-- Phiên bản máy phục vụ: 8.0.34
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `restaurant`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int NOT NULL,
  `contactnumber` varchar(255) DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `paymentmethod` varchar(255) DEFAULT NULL,
  `productdetails` json DEFAULT NULL,
  `total` int DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `contactnumber`, `createdby`, `email`, `name`, `paymentmethod`, `productdetails`, `total`, `uuid`) VALUES
(4, '0123456789', 'admin@email.com', 'test2@email.com', 'test2', 'Debit Card', '[{\"id\": 1, \"name\": \"Cua rang me\", \"price\": 250000, \"total\": 250000, \"category\": \"Mon hai san\", \"quantity\": \"1\"}, {\"id\": 5, \"name\": \"Com chien ca man\", \"price\": 90000, \"total\": 90000, \"category\": \"Mon com\", \"quantity\": \"1\"}, {\"id\": 3, \"name\": \"Lau thai Tomyum \", \"price\": 150000, \"total\": 150000, \"category\": \"Mon lau\", \"quantity\": \"1\"}]', 490000, 'BILL-1701595479493'),
(5, '0199999999', 'admin@email.com', 'test1@email.com', 'test1', 'Cash', '[{\"id\": 6, \"name\": \"Che thai\", \"price\": 30000, \"total\": 60000, \"category\": \"Mon trang mieng\", \"quantity\": \"2\"}, {\"id\": 7, \"name\": \"Che buoi\", \"price\": 30000, \"total\": 30000, \"category\": \"Mon trang mieng\", \"quantity\": \"1\"}, {\"id\": 1, \"name\": \"Cua rang me\", \"price\": 250000, \"total\": 250000, \"category\": \"Mon hai san\", \"quantity\": \"1\"}, {\"id\": 8, \"name\": \"Lau hai san\", \"price\": 165000, \"total\": 165000, \"category\": \"Mon lau\", \"quantity\": \"1\"}]', 505000, 'BILL-1701596070607'),
(6, '0123456789', 'admin@email.com', 'test3@email.com', 'test3', 'Credit Card', '[{\"id\": 9, \"name\": \"Pho\", \"price\": 70000, \"total\": 70000, \"category\": \"Mon truyen thong Viet Nam\", \"quantity\": \"1\"}, {\"id\": 10, \"name\": \"Banh mi\", \"price\": 35000, \"total\": 35000, \"category\": \"Mon truyen thong Viet Nam\", \"quantity\": \"1\"}, {\"id\": 11, \"name\": \"Banh xeo\", \"price\": 45000, \"total\": 45000, \"category\": \"Mon truyen thong Viet Nam\", \"quantity\": \"1\"}, {\"id\": 12, \"name\": \"Goi cuon\", \"price\": 45000, \"total\": 45000, \"category\": \"Mon truyen thong Viet Nam\", \"quantity\": \"1\"}]', 195000, 'BILL-1701611361098'),
(7, '0123456789', 'user@email.com', 'test4@gmail.com', 'test4', 'Cash', '[{\"id\": 3, \"name\": \"Lau thai Tomyum \", \"price\": 150000, \"total\": 150000, \"category\": \"Mon lau\", \"quantity\": \"1\"}, {\"id\": 6, \"name\": \"Che thai\", \"price\": 30000, \"total\": 60000, \"category\": \"Mon trang mieng\", \"quantity\": \"2\"}, {\"id\": 10, \"name\": \"Banh mi\", \"price\": 35000, \"total\": 70000, \"category\": \"Mon truyen thong Viet Nam\", \"quantity\": \"2\"}, {\"id\": 9, \"name\": \"Pho\", \"price\": 70000, \"total\": 210000, \"category\": \"Mon truyen thong Viet Nam\", \"quantity\": \"3\"}]', 490000, 'BILL-1701611465791');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Mon hai san'),
(2, 'Mon com'),
(3, 'Mon lau'),
(6, 'Mon trang mieng'),
(7, 'Mon truyen thong Viet Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `category_fk` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `description`, `name`, `price`, `status`, `category_fk`) VALUES
(1, 'Cua tam bot và chien, an kem voi nuoc mam me chua ngot', 'Cua rang me', 250000, 'true', 1),
(3, 'Huong vi Thai Lan voi nuoc dung Tomyum cay nong', 'Lau thai Tomyum ', 150000, 'true', 3),
(5, 'Cơm trắng được chiên giòn cùng với miếng cá mặn tươi, nước mắm, và các loại gia vị đặc trưng', 'Com chien ca man', 90000, 'true', 2),
(6, 'Che la mot loai thach, nuoc duong, dau phong, hoac trai cay tuoi duoc che bien thanh nhieu loai che khac nhau', 'Che thai', 30000, 'true', 6),
(7, 'Che la mot loai thach, nuoc duong, dau phong, hoac trai cay tuoi duoc che bien thanh nhieu loai che khac nhau', 'Che buoi', 30000, 'true', 6),
(8, 'Nuoc deng hai san, nau cung cac loai hai san nhu tom, muc, so diep, va ca', 'Lau hai san', 165000, 'true', 3),
(9, 'Là một loại súp nước dùng cơ bản, thường được nấu từ xương gà hoặc bò, cùng với các gia vị tự nhiên như hành, gừng, và các loại thảo mộc khác', 'Pho', 70000, 'true', 7),
(10, 'Bánh mì Việt Nam là một loại bánh mì đặc trưng, thường được chế biến và ăn kèm theo cách riêng biệt tại Việt Nam.', 'Banh mi', 35000, 'true', 7),
(11, 'Là một loại bánh mỏng, giòn, vàng nâu, được làm từ bột gạo, nước cốt dừa, nước lọc, và nước cà cuống để tạo màu.', 'Banh xeo', 45000, 'true', 7),
(12, 'Là một món ăn nhẹ, tươi ngon và thường được ăn kèm với nước mắm pha chế', 'Goi cuon', 45000, 'true', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `password`, `contact_number`, `email`, `name`, `role`, `status`) VALUES
(1, '123', '12345', 'abc@gmail.com', 'abc', 'user', 'true'),
(2, '123', '12345', 'def@gmail.com', 'def', 'user', 'true'),
(3, '123', '12345', 'thy@mailinator.com', 'thy', 'admin', 'true'),
(4, '123', '12345', 'testmail@mailinator.com', 'testmail', 'user', 'true'),
(5, '123', '12345', 'monvsp38@gmail.com', 'monvsp38', 'user', 'true'),
(8, '123', '0123456789', 'user@email.com', 'user', 'user', 'true'),
(9, '123', '0123456789', 'admin@email.com', 'admin', 'admin', 'true');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK275nu1ncohhfur6qhxiwrm3go` (`category_fk`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK275nu1ncohhfur6qhxiwrm3go` FOREIGN KEY (`category_fk`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
