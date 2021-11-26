

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Samsung', 'Samsung Galaxy A52s', 29850.00, './assets/products/99.jpg', '2021-11-28 11:08:57'), -- NOW()
(2, 'Redmi', 'Redmi 9 Activ', 12999.00, './assets/products/98.jpg', '2021-11-28 11:08:57'),
(3, 'Redmi', 'Redmi Note 10 Pro Max', 19999.00, './assets/products/97.jpg', '2021-11-28 11:08:57'),
(4, 'Redmi', 'Redmi 9i Sport', 8799.00 , './assets/products/96.jpg', '2021-11-28 11:08:57'),
(5, 'Redmi', 'Redmi 9 Prime', 10499.00, './assets/products/95.jpg', '2021-11-28 11:08:57'),
(6, 'Redmi', 'Redmi Note 10S', 17900.00, './assets/products/94.jpg', '2021-11-28 11:08:57'),
(7, 'Redmi', 'Redmi Note 10T 5G', 15300.00, './assets/products/93.jpg', '2021-11-28 11:08:57'),
(8, 'Redmi', 'Redmi 8A Dual', 9990.00, './assets/products/92.jpg', '2021-11-28 11:08:57'),
(9, 'Samsung', 'Samsung Galaxy F12', 9490.00, './assets/products/91.jpg', '2021-11-28 11:08:57'),
(10, 'Samsung', 'Samsung Galaxy S21 5G', 37990.00, './assets/products/90.jpg', '2021-11-28 11:08:57'),
(11, 'Apple', 'Apple iPhone SE', 35249.00, './assets/products/89.jpg', '2021-11-28 11:08:57'),
(12, 'Apple', 'Apple iPhone 13', 89900.00, './assets/products/88.jpg', '2021-11-28 11:08:57'),
(13, 'Apple', 'Apple iPhone 12 Pro Max', 129900.00, './assets/products/87.jpg', '2021-11-28 11:08:57');


CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Daily', 'Tuition', '2020-03-28 13:07:17'),
(2, 'Akshay', 'Kashyap', '2020-03-28 13:07:17');




CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);



ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);



ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);



ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;


