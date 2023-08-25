/*
 Navicat Premium Data Transfer

 Source Server         : adamreaksmey
 Source Server Type    : MySQL
 Source Server Version : 100425 (10.4.25-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : technovage-test

 Target Server Type    : MySQL
 Target Server Version : 100425 (10.4.25-MariaDB)
 File Encoding         : 65001

 Date: 25/08/2023 10:44:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `registration_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'adam', 'adam@gmail.com', NULL, '$2y$10$OxMIGfH5shEnwuECpoNrou5RWbDmei3FL.4bpMgNJKApobp1FWy3K', '45|CxuqHlBx4mub1VYPzEzyvuDARW5wauTv4X8DOyfJ', NULL, '2023-08-22 10:57:41', NULL, NULL, '2023-08-17');
INSERT INTO `users` VALUES (2, 'Zhu Xiaoming', 'xiaomingzhu1@icloud.com', '2018-06-25 03:35:03', 'Qln7QUoz2M', 'BPov7O4h1P', '2004-06-23 07:49:26', '2012-02-03 14:51:23', '838-253-3069', '60 Lark Street', '2000-04-26');
INSERT INTO `users` VALUES (3, 'Grace Dixon', 'dixongra1962@gmail.com', '2009-01-30 03:51:16', 'jlYc3dy4d5', '2gYKwfcrs6', '2020-02-24 08:24:58', '2010-02-08 18:29:31', '755-4788-5840', '527 Shennan Ave, Futian District', '2017-02-03');
INSERT INTO `users` VALUES (4, 'Yuen Wing Fat', 'wingfatyue63@hotmail.com', '2011-10-28 19:50:27', 'UJJuvJqqf0', 'UKOtPNJ7v8', '2004-02-17 19:10:49', '2022-02-26 08:18:56', '146-6052-0690', '615 Tianhe Road, Tianhe District', '2001-08-25');
INSERT INTO `users` VALUES (5, 'Wu Rui', 'wurui1213@hotmail.com', '2013-03-07 10:54:08', 'QVW8WRZf1o', 'BmqcWb10T8', '2005-10-12 08:32:58', '2007-12-20 15:37:28', '66-813-8715', '3-27-8 Higashitanabe, Higashisumiyoshi Ward', '2009-06-03');
INSERT INTO `users` VALUES (6, 'Qian Xiaoming', 'xqia@hotmail.com', '2008-08-24 17:55:09', 'VaSFeW6DEw', '3X3yBF2qfd', '2012-05-18 07:44:35', '2006-03-14 23:12:16', '(20) 2928 7738', '286 Hanover Street', '2018-04-08');
INSERT INTO `users` VALUES (7, 'Ono Hikari', 'onohik5@gmail.com', '2010-08-10 18:15:04', 'o7n3S7CnSk', 'OIUakvufNt', '2008-10-01 09:01:01', '2010-09-22 15:08:38', '80-6761-2500', '2-1-14 Tenjinnomori, Nishinari Ward', '2004-03-31');
INSERT INTO `users` VALUES (8, 'Victoria Ramos', 'victoriaramos@icloud.com', '2020-10-09 06:06:42', 'Ypq8S8NLQb', 'nWzB65Wsi1', '2001-11-30 18:24:15', '2014-10-20 05:50:03', '(151) 882 8984', '404 Trafalgar Square, Charing Cross', '2017-01-27');
INSERT INTO `users` VALUES (9, 'Ota Mitsuki', 'otmitsuki@outlook.com', '2022-12-07 19:46:59', 'bMLzTvg0Ug', 'mFFP0ylMHm', '2005-04-28 16:31:43', '2017-01-01 18:01:35', '7685 363017', '4 Mosley St', '2016-01-20');
INSERT INTO `users` VALUES (10, 'Du Lan', 'landu@outlook.com', '2011-06-28 06:53:27', 'mKBGU1sTeo', 'CWTdjWtHio', '2016-08-01 15:21:52', '2016-06-19 05:25:56', '614-655-5807', '660 Diplomacy Drive', '2000-01-04');
INSERT INTO `users` VALUES (11, 'Tiffany Baker', 'tifbaker@icloud.com', '2015-12-31 09:20:11', 'IJJbydgHoW', 'j8sYxzQ945', '2009-12-06 20:23:25', '2002-04-11 00:40:51', '70-6754-9422', '5-4-3 Kikusui 3 Jo, Shiroishi Ward,', '2014-03-31');
INSERT INTO `users` VALUES (12, 'Laura Hunt', 'hlau7@mail.com', '2012-11-04 05:49:36', '5252E8UqFO', 'H1ArskBroN', '2009-04-11 19:14:07', '2012-08-26 16:17:57', '312-407-5389', '522 Pedway', '2008-06-03');
INSERT INTO `users` VALUES (13, 'Yamazaki Sara', 'yamasar84@gmail.com', '2020-07-23 08:20:53', 'DjvWJjW74V', 'Pqb8o7tgVk', '2002-02-13 07:03:02', '2020-12-31 03:58:12', '28-1759-7885', '409 3rd Section Hongxing Road, Jinjiang District', '2021-04-24');
INSERT INTO `users` VALUES (14, 'Gu Lan', 'gulan@gmail.com', '2015-05-31 22:58:17', 'PwmUrhUZBl', 'P3MdcKyhkS', '2015-09-14 11:19:43', '2015-04-02 14:09:23', '(1865) 54 3106', '834 Osney Mead', '2017-11-23');
INSERT INTO `users` VALUES (15, 'Luis Spencer', 'luisspenc7@gmail.com', '2007-03-23 00:12:28', 'mfRtLCcWvH', 'FB7sKC2f6d', '2015-06-04 23:18:37', '2023-06-27 07:32:31', '760-515-6971', '492 Zhongshan 5th Rd, Zimaling Shangquan', '2004-03-25');
INSERT INTO `users` VALUES (16, 'Tamura Nanami', 'tamuranan9@outlook.com', '2023-07-22 15:20:00', 'KTPk5EVmfl', 'Rz3UxDpHu7', '2007-10-10 19:30:18', '2004-10-29 11:31:45', '70-3845-1624', '5-19-2 Shinei 4 Jo, Kiyota Ward', '2014-05-20');
INSERT INTO `users` VALUES (17, 'Ito Nanami', 'itn@outlook.com', '2007-10-25 06:58:00', 'AhetKP68wQ', 'LPgEzbIFRU', '2001-03-04 23:12:53', '2004-10-28 21:56:05', '614-303-8715', '998 East Cooke Road', '2003-02-12');
INSERT INTO `users` VALUES (18, 'Sakai Kasumi', 'kasusakai@gmail.com', '2017-05-18 08:32:57', '8MA7MX79Ub', 'BzZXuz6bTD', '2004-03-15 19:24:48', '2009-03-02 19:55:27', '70-9003-4522', '2-3-2 Yoyogi, Shibuya-ku', '2020-12-07');
INSERT INTO `users` VALUES (19, 'Suzuki Momoe', 'momoe1999@outlook.com', '2003-04-11 00:15:48', 'P92RGcYHyD', '4opIDhhWj8', '2012-06-05 08:40:52', '2016-07-07 22:25:12', '213-410-3508', '949 Wall Street', '2001-08-06');
INSERT INTO `users` VALUES (20, 'Qiu Zhiyuan', 'qizhiyuan46@mail.com', '2004-05-29 00:13:12', 'opobMWDsr3', 'm1HuGlY1KP', '2015-12-17 06:40:45', '2008-04-29 22:13:07', '212-336-6958', '697 Wooster Street', '2009-11-27');
INSERT INTO `users` VALUES (21, 'Murata Hikari', 'hikmura629@gmail.com', '2022-06-12 02:08:10', 'fD2uLW4qG7', 'thQdd8p3sm', '2008-03-22 21:00:41', '2021-06-24 15:22:05', '90-6504-4052', '2-5-6 Chitose, Atsuta Ward', '2004-10-04');
INSERT INTO `users` VALUES (22, 'Peng Yuning', 'ypen218@hotmail.com', '2002-06-23 06:55:08', 'uW30p7h7dZ', 'dmQGcGqsfs', '2014-07-06 07:44:47', '2009-08-15 13:24:47', '90-4331-1509', '2-1-9 Kaminopporo 1 Jo, Atsubetsu Ward', '2003-02-10');
INSERT INTO `users` VALUES (23, 'Yuan Rui', 'yuanru@outlook.com', '2012-02-05 09:24:56', 'qw4Isn23xZ', 'iD9aIKhmpz', '2022-12-06 20:57:32', '2009-04-19 02:12:46', '718-620-0468', '153 Nostrand Ave', '2010-01-09');
INSERT INTO `users` VALUES (24, 'Yamashita Daisuke', 'daisukeyama217@outlook.com', '2016-12-24 13:43:50', '6aQzgThz31', 'QkMxtDBhu7', '2012-06-09 11:31:10', '2011-10-24 09:08:49', '718-713-9213', '658 Bergen St', '2009-08-08');
INSERT INTO `users` VALUES (25, 'Stanley Turner', 'turner88@mail.com', '2013-12-11 11:37:26', 'tIer9YTrcI', 'b7D1jERwGA', '2007-04-02 17:33:54', '2001-06-28 06:16:16', '330-146-4890', '791 Collier Road', '2003-02-19');
INSERT INTO `users` VALUES (26, 'Su Yunxi', 'suyunxi@gmail.com', '2006-08-17 08:52:31', 'I9c0jFS2oz', 'tcoLn85Zuk', '2000-09-22 06:18:41', '2004-07-02 08:06:52', '11-601-5716', '2-1-1 Kaminopporo 1 Jo, Atsubetsu Ward', '2006-11-10');
INSERT INTO `users` VALUES (27, 'Morita Ikki', 'morita702@outlook.com', '2015-02-26 10:48:23', '4hbpbuBtCQ', 'zamrpVU2DJ', '2011-07-19 03:26:04', '2020-05-21 20:53:08', '70-3963-4009', '3-27-10 Higashitanabe, Higashisumiyoshi Ward', '2019-09-26');
INSERT INTO `users` VALUES (28, 'Mui Kwok Wing', 'kwokwingmui@gmail.com', '2001-12-14 10:09:39', 'RPYyxLktH6', 'yoFHam6j0G', '2020-08-11 19:08:09', '2010-03-25 03:21:25', '52-825-9479', '2-5-13 Chitose, Atsuta Ward', '2013-07-02');
INSERT INTO `users` VALUES (29, 'Chang Ka Ling', 'kalingchang@gmail.com', '2020-11-03 08:21:25', 'HqGVEtmPZ8', 'sUaDplyd7r', '2022-04-16 18:30:24', '2019-06-16 05:19:38', '66-203-6764', '1-7-8 Omido, Higashiosaka', '2004-11-19');
INSERT INTO `users` VALUES (30, 'Koon Lai Yan', 'koon5@icloud.com', '2009-03-03 23:11:57', '267ftabaHq', 'RBITR8L8cp', '2019-06-01 01:40:40', '2018-02-27 21:42:06', '(151) 009 1204', '387 Hanover St', '2010-12-07');
INSERT INTO `users` VALUES (31, 'Tao Siu Wai', 'taosw@icloud.com', '2003-09-12 23:41:39', 'qiXntYzzl0', 'rWHKKDuCOW', '2002-07-08 12:10:11', '2021-01-30 12:46:29', '52-450-8656', '4 1-1715 Sekohigashi, Moriyama Ward', '2009-11-06');
INSERT INTO `users` VALUES (32, 'Chin Tin Lok', 'tinlokch5@gmail.com', '2007-11-01 04:47:07', 'r5oL2J5Yj1', 'SOCatmNNia', '2019-09-27 05:56:53', '2021-06-24 08:55:20', '90-5413-0468', '3-27-18 Higashitanabe, Higashisumiyoshi Ward', '2006-06-25');
INSERT INTO `users` VALUES (33, 'Wei Yunxi', 'yunxiwei3@outlook.com', '2000-10-05 03:23:45', 'qFRJ2VGXiG', 'QUxqwsvnvp', '2020-10-21 07:24:40', '2020-03-01 02:46:02', '718-780-7028', '446 Bergen St', '2005-06-09');
INSERT INTO `users` VALUES (34, 'Takagi Minato', 'takagi3@gmail.com', '2018-02-03 13:55:16', '0tVBpcAJzu', 'dHB6W7M9hJ', '2010-11-04 12:27:03', '2018-09-27 19:15:33', '(151) 189 5347', '745 Trafalgar Square, Charing Cross', '2002-08-26');
INSERT INTO `users` VALUES (35, 'Hou Lan', 'houl6@icloud.com', '2004-09-04 09:32:19', 'K4hxSprSWU', 'ljU12FZ9t7', '2004-06-10 00:25:17', '2001-12-02 18:14:06', '3-2270-7978', '3-15-4 Ginza, Chuo-ku', '2018-02-14');
INSERT INTO `users` VALUES (36, 'Hashimoto Ayato', 'ayato05@gmail.com', '2002-08-19 10:59:16', 'ub66y5TM10', 'y6fe9hlQmi', '2005-05-19 07:10:22', '2008-06-12 14:42:46', '151-0355-7023', '430 68 Qinghe Middle St, Haidian District', '2014-03-30');
INSERT INTO `users` VALUES (37, 'Shi Shihan', 'shihan1117@outlook.com', '2010-01-13 01:24:56', 'kLOiQYYLDO', 'TmmMsYoy1a', '2006-11-20 17:45:29', '2012-01-21 04:39:21', '838-910-5151', '934 Lark Street', '2019-02-17');
INSERT INTO `users` VALUES (38, 'Liao Tsz Hin', 'tszhin1@hotmail.com', '2006-03-21 16:19:07', 'cLS3OY9MlR', 'oxxEd9W8UP', '2004-07-25 02:02:14', '2007-06-10 19:58:11', '5231 924150', '971 Sackville St', '2001-05-12');
INSERT INTO `users` VALUES (39, 'Ando Takuya', 'tando@mail.com', '2021-12-26 18:58:10', 'UOb0HKFPXy', 'SeUxzEpYY0', '2001-03-11 03:53:38', '2016-09-20 07:06:20', '213-177-0070', '125 Wall Street', '2004-12-28');
INSERT INTO `users` VALUES (40, 'Wu Xiaoming', 'xwu3@hotmail.com', '2008-12-09 05:02:53', '8DBcvX8jzK', 'TseXr2JBw5', '2022-09-05 23:47:18', '2010-12-29 02:29:57', '52-736-4958', '3-19-3 Shimizu, Kita Ward', '2020-02-22');
INSERT INTO `users` VALUES (41, 'Chung Wai Lam', 'chung6@hotmail.com', '2020-03-30 00:23:22', 'SpCWgMpray', 'PlcdxBLdOG', '2019-07-22 05:28:57', '2000-11-14 14:11:37', '718-647-2265', '917 Nostrand Ave', '2003-01-29');
INSERT INTO `users` VALUES (42, 'Murakami Ren', 'renmurakami@icloud.com', '2001-12-29 09:29:33', '2OOPUskllT', 'MjpcueXcds', '2018-09-24 19:41:06', '2022-02-10 11:36:37', '70-4048-0969', '3-9-18 Gakuenminami', '2017-10-17');
INSERT INTO `users` VALUES (43, 'Miyamoto Rena', 'renami@yahoo.com', '2016-02-09 05:56:15', 'w3qoXYt2Ho', 'BQTKV8Dy6X', '2022-10-28 18:36:50', '2004-11-27 06:00:36', '(1223) 15 3341', '127 Whitehouse Lane, Huntingdon Rd', '2023-03-17');
INSERT INTO `users` VALUES (44, 'Lori Hunter', 'lori2003@mail.com', '2019-11-11 12:24:34', 'QELl0TzTwL', 'Q68r3VuNK9', '2013-04-23 02:00:40', '2021-10-26 04:11:57', '90-4733-8294', '2-5-1 Chitose, Atsuta Ward', '2014-09-08');
INSERT INTO `users` VALUES (45, 'Yamamoto Ayano', 'ayaya@icloud.com', '2012-04-20 21:22:15', 'JfbLuAemdt', 'AE6fatPJUc', '2005-03-23 08:37:20', '2003-04-21 17:03:47', '52-277-4988', '3-19-9 Shimizu, Kita Ward', '2022-09-19');
INSERT INTO `users` VALUES (46, 'Lok Ming', 'lok118@outlook.com', '2000-03-30 23:42:17', 'yS3GK4HRMN', 'AQRM6nNBzR', '2003-02-09 01:46:36', '2000-02-04 03:11:11', '163-9355-6670', '267 4th Section  Renmin South Road, Jinjiang District', '2002-03-30');
INSERT INTO `users` VALUES (47, 'Pauline Taylor', 'pauline5@hotmail.com', '2017-09-03 19:50:12', 'OK7hZLHbdH', 'x6p9Vctjcr', '2023-03-21 17:04:43', '2007-12-10 13:48:10', '7297 710123', '194 Wyngate Dr', '2010-03-08');
INSERT INTO `users` VALUES (48, 'Barbara James', 'bjames@outlook.com', '2015-04-14 13:01:33', 'pEUdTiYqdk', 'lvZbfL8ooC', '2002-01-24 23:59:15', '2016-06-02 07:29:23', '312-156-4015', '127 Pedway', '2017-07-14');
INSERT INTO `users` VALUES (49, 'Ono Yamato', 'ono74@hotmail.com', '2003-10-09 23:12:21', 'mOyHz6Xy1s', '4ItQ5FhUbr', '2011-01-09 17:32:25', '2011-10-20 09:54:40', '52-808-6031', '4 4-20 Kawagishicho, Mizuho Ward', '2005-01-01');
INSERT INTO `users` VALUES (50, 'Ogawa Rin', 'ogawarin@outlook.com', '2017-10-09 06:32:11', 'eq7tdFjWhj', 'B0ctzfyXPQ', '2007-04-25 20:08:18', '2009-03-13 04:33:27', '(1223) 87 0013', '998 The Pavilion, Lammas Field, Driftway', '2011-05-20');
INSERT INTO `users` VALUES (51, 'Kwan Wing Fat', 'wingfatk@gmail.com', '2004-08-01 10:58:45', '02rWkFlJ4C', '97cYgnQGWn', '2009-08-09 19:18:31', '2019-06-04 08:03:56', '718-759-6551', '374 Bergen St', '2007-04-13');
INSERT INTO `users` VALUES (52, 'tester user', 'tester@gmail.com', NULL, 'gjghjghjghjghjghj', 'asdjahdjkaskjdhjada', NULL, NULL, '011 25 2644', 'ajdhjahdkjashdjkashdasd', '2007-04-13');

SET FOREIGN_KEY_CHECKS = 1;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for purchases
-- ----------------------------
DROP TABLE IF EXISTS `purchases`;
CREATE TABLE `purchases`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` bigint UNSIGNED NULL DEFAULT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `customer_id`(`customer_id` ASC) USING BTREE,
  CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;