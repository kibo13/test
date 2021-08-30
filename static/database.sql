/*
 Navicat Premium Data Transfer

 Source Server         : mamp
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:8889
 Source Schema         : vokzal

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 31/08/2021 00:12:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for abouts
-- ----------------------------
DROP TABLE IF EXISTS `abouts`;
CREATE TABLE `abouts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of abouts
-- ----------------------------
INSERT INTO `abouts` VALUES (1, 2, '<p>Гастробар &laquo;Vokzal&raquo; распахнул свои двери в марте 2021 и явился совершенно новым явлением на ресторанном рынке Казахстана. Территория гастробара в размере 1800 м2 объединяет в себе 4 разных гастрономических направлений, а именно грузинская кухня, паназитская кухня, европейская кухня а также бургеры и стейки. Четыре шеф повара каждый со своей собственной кулинарной философией и свежим взглядом , при внедрении новой концепции гастробара привлекались лучшие специалисты из Казахстан, России и Грузии. Каждая кухня обладает неповторимым колоритом как в блюдах, а так и в оформлении. Три из четырех кухонь сделан в виде открытой кухни, внутри зала с гостями, чтобы гости могли наблюдать за процессом приготовления их любимых блюд, а так же и пообщаться с шеф поварами.</p>\r\n<p class=\"mt-3\">Еще одной гордостью гастробара Vokzal является концепция баров &ndash; Галерея Баров. В рамках Вокзала обьединены 5 баров, с собственной концепцией у каждого бара. Для внедрения барной, коктейльной карты данных баров привлекались лучшая команда барменов г. Алматы - &hellip; Начиная свой вечер, вы можете продегустировать &hellip; в Rock Bar, затем встретив свою подругу уютно присесть в Central Station bar, а в разгар вечера вы можете переместиться в самое тусовочное место гастробара &ndash; Green Bar, где несомненно, вы будете звездой вечера. А если вы устанете от шума и захочется уединится в беседе, то вам не надо идти далеко &ndash; вам нужно будет всего лишь подняться на 2й этаж и поймать свое настроение в GK Bar. В каждом баре, наш гость найдет частичку своей души&hellip;</p>', '<p>Gastrobar &laquo;Vokzal&raquo; opened its doors in March 2021 and was a completely new phenomenon on the restaurant market of Kazakhstan. Territory of the gastro-bar of 1800 m2 combines 4 different gastronomic directions, namely Georgian cuisine, pan-Asian cuisine, European cuisine as well as burgers and steaks. Four chefs with their own culinary philosophy and fresh point of view, while implementing the new gastrobar concept the best specialists from Kazakhstan, Russia and Georgia were brought in. Each kitchen has a unique flavor, both in dishes and in the design. Three of the four kitchens is made in the form of an open kitchen, inside the hall with guests, so guests can watch the process of cooking their favorite dishes, as well as communicate with chefs.</p>\r\n<p class=\"mt-3\">Another pride of Vokzal gastrobar is the bar concept - Bar Gallery. Within Vokzal there are 5 bars with their own concept for each bar. To implement the bar, cocktail menu of these bars we brought the best team of bartenders of Almaty - ... Starting your evening you can taste ... in Rock Bar, then meeting your girlfriend cozy sitting in Central Station bar, and in the middle of the evening you can move to the party place of the gastronomic bar - Green Bar, where undoubtedly you will be the star of the evening. If you get tired of the noise and want to be alone in a discussion you do not have to go far - all you need is to come up to the 2nd floor and catch your mood in GK Bar. In each bar, our guest will find a piece of his soul...</p>', '<p>Гастробар &laquo;Вокзал&raquo; 2021 жылдың наурызында өз есігін ашты және Қазақстанның мейрамхана нарығында мүлде жаңа құбылыс болды. Гастробардың ауданы 1800 м2 4 түрлі гастрономиялық бағытты біріктіреді, атап айтқанда грузин тағамдары, паназиялық тағамдар, еуропалық тағамдар, сонымен қатар гамбургерлер мен стейктер. Төрт аспазшы әрқайсысының жеке асқазан -ішек жолының жаңа тұжырымдамасын жүзеге асыруға өзіндік аспаздық философиямен және жаңа көзқараспен Қазақстан, Ресей және Грузияның үздік мамандары тартылды. Әр ас үйдің ыдыс -аяқта да, дизайнында да ерекше дәмі бар. Төрт ас үйдің үшеуі ашық ас түрінде, залдың ішінде қонақтармен бірге жасалған, сондықтан қонақтар өздерінің сүйікті тағамдарын дайындау процесін бақылай алады, сонымен қатар аспазшылармен сөйлесе алады.</p>\r\n<p class=\"mt-3\">Вокзал гастробарының тағы бір мақтанышы - барлар концепциясы - Барлар галереясы. Станцияда 5 бар біріктірілген, олардың әрқайсысының өзіндік концепциясы бар. Бұл барлардың коктейль картасын таныстыру үшін Алматыдағы ең жақсы бармендер тобы тартылды - ... Кешіңізден бастап сіз рок -барда дәм тата аласыз, содан кейін досыңызбен кездесіп, ыңғайлы жерде отырыңыз. Орталық вокзалдың бары, ал кеш ортасында сіз мейрамханаға баруға болатын орын - Green Bar, онда сіз сөзсіз кеш жұлдызы боласыз. Ал егер сіз шуылдан шаршап, әңгімеде зейнетке шыққыңыз келсе, онда алысқа барудың қажеті жоқ - сізге тек 2 -қабатқа көтеріліп, GK Bar -да көңіл -күйіңізді көтеру қажет. Әр барда біздің қонақ өз жанының бір бөлігін табады ...</p>', NULL, '2021-08-11 19:02:10');

-- ----------------------------
-- Table structure for assortment_continent
-- ----------------------------
DROP TABLE IF EXISTS `assortment_continent`;
CREATE TABLE `assortment_continent`  (
  `assortment_id` bigint(20) NOT NULL,
  `continent_id` bigint(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of assortment_continent
-- ----------------------------
INSERT INTO `assortment_continent` VALUES (7, 2);
INSERT INTO `assortment_continent` VALUES (13, 2);
INSERT INTO `assortment_continent` VALUES (8, 2);
INSERT INTO `assortment_continent` VALUES (12, 2);
INSERT INTO `assortment_continent` VALUES (5, 2);
INSERT INTO `assortment_continent` VALUES (9, 2);
INSERT INTO `assortment_continent` VALUES (10, 2);
INSERT INTO `assortment_continent` VALUES (11, 2);
INSERT INTO `assortment_continent` VALUES (18, 3);
INSERT INTO `assortment_continent` VALUES (16, 3);
INSERT INTO `assortment_continent` VALUES (3, 3);
INSERT INTO `assortment_continent` VALUES (1, 3);
INSERT INTO `assortment_continent` VALUES (4, 3);
INSERT INTO `assortment_continent` VALUES (6, 3);
INSERT INTO `assortment_continent` VALUES (5, 3);
INSERT INTO `assortment_continent` VALUES (17, 3);
INSERT INTO `assortment_continent` VALUES (21, 3);
INSERT INTO `assortment_continent` VALUES (2, 4);
INSERT INTO `assortment_continent` VALUES (16, 4);
INSERT INTO `assortment_continent` VALUES (3, 4);
INSERT INTO `assortment_continent` VALUES (1, 4);
INSERT INTO `assortment_continent` VALUES (15, 4);
INSERT INTO `assortment_continent` VALUES (4, 4);
INSERT INTO `assortment_continent` VALUES (5, 4);
INSERT INTO `assortment_continent` VALUES (14, 4);
INSERT INTO `assortment_continent` VALUES (20, 1);
INSERT INTO `assortment_continent` VALUES (23, 1);
INSERT INTO `assortment_continent` VALUES (19, 1);
INSERT INTO `assortment_continent` VALUES (8, 1);
INSERT INTO `assortment_continent` VALUES (22, 1);
INSERT INTO `assortment_continent` VALUES (25, 5);
INSERT INTO `assortment_continent` VALUES (24, 5);

-- ----------------------------
-- Table structure for assortments
-- ----------------------------
DROP TABLE IF EXISTS `assortments`;
CREATE TABLE `assortments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of assortments
-- ----------------------------
INSERT INTO `assortments` VALUES (1, 'Закуски', 'Жеңіл тағамдар', 'Snacks', '2021-08-14 08:37:51', '2021-08-14 08:37:51');
INSERT INTO `assortments` VALUES (2, 'Гарниры', 'Бүйір тағамдар', 'Side dishes', '2021-08-14 08:39:06', '2021-08-14 08:39:06');
INSERT INTO `assortments` VALUES (3, 'Десерты', 'Десерттер', 'Desserts', '2021-08-14 08:39:37', '2021-08-14 08:39:37');
INSERT INTO `assortments` VALUES (4, 'Салаты', 'Салаттар', 'Salads', '2021-08-14 08:40:03', '2021-08-14 08:40:03');
INSERT INTO `assortments` VALUES (5, 'Супы', 'Сорпалар', 'Soups', '2021-08-14 08:40:26', '2021-08-14 08:40:26');
INSERT INTO `assortments` VALUES (6, 'Соусы', 'Тұздықтар', 'Sauces', '2021-08-14 09:06:57', '2021-08-14 09:06:57');
INSERT INTO `assortments` VALUES (7, 'БАО', 'БАО', 'BAO', '2021-08-14 09:08:50', '2021-08-14 09:08:50');
INSERT INTO `assortments` VALUES (8, 'Роллы', 'Роллдар', 'Rolls', '2021-08-14 09:09:17', '2021-08-14 09:09:17');
INSERT INTO `assortments` VALUES (9, 'Суси', 'Суси', 'Susi', '2021-08-14 09:09:59', '2021-08-14 09:09:59');
INSERT INTO `assortments` VALUES (10, 'Татаки', 'Татаки', 'Tataki', '2021-08-14 09:10:26', '2021-08-14 09:10:26');
INSERT INTO `assortments` VALUES (11, 'Темпура', 'Темпура', 'Tempura', '2021-08-14 09:11:02', '2021-08-14 09:11:02');
INSERT INTO `assortments` VALUES (12, 'Сатай', 'Сатай', 'Satay', '2021-08-14 09:11:36', '2021-08-14 09:11:36');
INSERT INTO `assortments` VALUES (13, 'Вок', 'Вок', 'Wok', '2021-08-14 09:12:18', '2021-08-14 09:12:18');
INSERT INTO `assortments` VALUES (14, 'Хлеб', 'Нан', 'Bread', '2021-08-14 09:13:02', '2021-08-14 09:13:02');
INSERT INTO `assortments` VALUES (15, 'Закуски к пиву', 'Сыра тағамдары', 'Beer snacks', '2021-08-14 09:13:30', '2021-08-14 09:13:30');
INSERT INTO `assortments` VALUES (16, 'Горячие закуски', 'Ыстық тағамдар', 'Hot snack', '2021-08-14 09:13:52', '2021-08-14 09:13:52');
INSERT INTO `assortments` VALUES (17, 'Хачапури', 'Хачапури', 'Khachapuri', '2021-08-14 09:14:12', '2021-08-14 09:14:12');
INSERT INTO `assortments` VALUES (18, 'Горячие блюда', 'Ыстық тағамдар', 'Hot dishes', '2021-08-14 09:14:34', '2021-08-14 09:14:34');
INSERT INTO `assortments` VALUES (19, 'Пицца', 'Пицца', 'Pizza', '2021-08-14 09:14:54', '2021-08-14 09:14:54');
INSERT INTO `assortments` VALUES (20, 'Бургеры', 'Бургерлер', 'Burgers', '2021-08-14 09:15:12', '2021-08-14 09:15:12');
INSERT INTO `assortments` VALUES (21, 'Шашлыки', 'Кебабтар', 'Kebabs', '2021-08-14 09:15:35', '2021-08-14 09:15:35');
INSERT INTO `assortments` VALUES (22, 'Стейки', 'Стейки', 'Steak', '2021-08-14 09:15:54', '2021-08-14 09:15:54');
INSERT INTO `assortments` VALUES (23, 'Детские бургеры', 'Балаларға арналған гамбургерлер', 'Children\'s burgers', '2021-08-14 09:16:19', '2021-08-14 09:16:19');
INSERT INTO `assortments` VALUES (24, 'Безалкогольные напитки', 'Алкогольсіз сусындар', 'Non-alcoholic beverages', '2021-08-15 09:56:49', '2021-08-15 11:01:15');
INSERT INTO `assortments` VALUES (25, 'Алкогольные напитки', 'Алкогольді сусындар', 'Alcoholic drinks', '2021-08-15 09:57:09', '2021-08-15 11:00:55');

-- ----------------------------
-- Table structure for bars
-- ----------------------------
DROP TABLE IF EXISTS `bars`;
CREATE TABLE `bars`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bars
-- ----------------------------
INSERT INTO `bars` VALUES (1, 5, 'Central Station Bar', 'Орталық вокзал бар', 'Central Station Bar', 'Гастробар VOKZAL – новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее собой большое разнообразие гастрономических вкусов. Уникальность данного проекта заключается в гармоничном объединении.', 'VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және гастрономиялық талғамдардың алуан түрін көрсететін мұнай астанасы картасындағы жаңа бағыт. Бұл жобаның бірегейлігі үйлесімді комбинацияда.', 'VOKZAL gastrobar is a new direction on the map of the oil capital, occupying an area of ​​1800 m2 and representing a wide variety of gastronomic tastes. The uniqueness of this project lies in the harmonious combination.', 'bars/FnyNk1jwm170fSTXTXZvP1mX8qjJN3uB6LMgPl4F.jpg', 'bars1.jpg', '2021-08-10 08:05:17', '2021-08-11 14:27:05');
INSERT INTO `bars` VALUES (2, 5, 'Свежий бар', 'Жасыл бар', 'Green Bar', 'Гастробар VOKZAL – новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее собой большое разнообразие гастрономических вкусов. Уникальность данного проекта заключается в гармоничном объединении.', 'VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және гастрономиялық талғамдардың алуан түрін көрсететін мұнай астанасы картасындағы жаңа бағыт. Бұл жобаның бірегейлігі үйлесімді комбинацияда.', 'VOKZAL gastrobar is a new direction on the map of the oil capital, covering an area of ​​1800 m2 and showing a variety of gastronomic tastes. The uniqueness of this project lies in the harmonious combination.', 'bars/LniSbi0bCBGX8EQucgZC3WsZCCCc0uHs7pmMOpCo.jpg', 'bars2.jpg', '2021-08-10 08:08:22', '2021-08-10 16:02:25');
INSERT INTO `bars` VALUES (3, 5, 'Рок-бар', 'Рок-бар', 'Rock Bar', 'Гастробар VOKZAL – новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее собой большое разнообразие гастрономических вкусов. Уникальность данного проекта заключается в гармоничном объединении.', 'VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және гастрономиялық талғамдардың алуан түрін көрсететін мұнай астанасы картасындағы жаңа бағыт. Бұл жобаның бірегейлігі үйлесімді комбинацияда.', 'VOKZAL gastrobar is a new direction on the map of the oil capital, covering an area of 1800 m2 and showing a variety of gastronomic tastes. The uniqueness of this project lies in the harmonious combination.', 'bars/5KKwCv6dGecy4bVjRQi4KaPToRUwO4CFMg4miLN1.jpg', 'bars3.jpg', '2021-08-10 08:10:44', '2021-08-10 16:02:01');
INSERT INTO `bars` VALUES (4, 5, 'GK Бар', 'GK Бар', 'GK Bar', 'Гастробар VOKZAL – новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее собой большое разнообразие гастрономических вкусов. Уникальность данного проекта заключается в гармоничном объединении.', 'VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және гастрономиялық талғамдардың алуан түрін көрсететін мұнай астанасы картасындағы жаңа бағыт. Бұл жобаның бірегейлігі үйлесімді комбинацияда.', 'VOKZAL gastrobar is a new direction on the map of the oil capital, covering an area of 1800 m2 and showing a variety of gastronomic tastes. The uniqueness of this project lies in the harmonious combination.', 'bars/s1Q10ru7TKnlXx6ly4iUuPhA0tZRXKhaLsgjMM84.jpg', 'bars4.jpg', '2021-08-10 08:11:40', '2021-08-10 16:02:07');
INSERT INTO `bars` VALUES (5, 5, 'Loft Бар', 'Loft Бар', 'Loft Bar', 'Гастробар VOKZAL – новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее собой большое разнообразие гастрономических вкусов. Уникальность данного проекта заключается в гармоничном объединении.', 'VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және гастрономиялық талғамдардың алуан түрін көрсететін мұнай астанасы картасындағы жаңа бағыт. Бұл жобаның бірегейлігі үйлесімді комбинацияда.', 'VOKZAL gastrobar is a new direction on the map of the oil capital, covering an area of 1800 m2 and showing a variety of gastronomic tastes. The uniqueness of this project lies in the harmonious combination.', 'bars/3O0gsS90LZXdpDcGaiHw8dSAkeHJvVo2yM56PyeR.jpg', 'bars5.jpg', '2021-08-10 08:13:04', '2021-08-10 16:02:12');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (2, 'О нас', 'Біз туралы', 'About Us', 'about', 'categories/SYcSc1B4YEqiWMhbODq2HWsxKpLWw4bubF4T3Z2T.jpg', 'study-bg.jpg', '2021-08-08 14:16:26', '2021-08-11 18:09:46');
INSERT INTO `categories` VALUES (3, 'Бесконечность вкуса', 'Дәмнің шексіздігі', 'Infinity of taste', 'continents', 'categories/wPe5dNXSIQ9y1CNjckudMICckbspkjVuIL31rFD6.jpg', 'continent-bg.jpg', '2021-08-08 14:18:48', '2021-08-10 17:22:14');
INSERT INTO `categories` VALUES (4, 'Кулинарная студия', 'Аспаздық студия', 'Culinary studio', 'studios', 'categories/xXU9pPVA5TWRPmQv9YyTXZ5N6LtqbDU1EmfVGe77.jpg', 'study-bg.jpg', '2021-08-08 14:19:22', '2021-08-12 16:41:58');
INSERT INTO `categories` VALUES (5, 'Галерея баров', 'Барлар галереясы', 'Bars gallery', 'bars', 'categories/psFes2zK4NQ0rT9rR3s5dM1fdWEGcP2ecVLyUtGp.jpg', 'bars-bg.jpg', '2021-08-08 14:19:52', '2021-08-10 16:45:48');
INSERT INTO `categories` VALUES (6, 'VIP кабины', 'VIP кабиналар', 'VIP cabins', 'vips', 'categories/W5UWffccForWMW3gXleJB2tlUjUcVCKMDnwugrfP.jpg', 'vip-bg.jpg', '2021-08-08 14:20:50', '2021-08-10 18:16:27');
INSERT INTO `categories` VALUES (7, 'Дети', 'Балалар', 'Children', 'children', 'categories/svktC2RWMIFsLmS4ZCfzVxlqmtdj0qhL31AUFA74.jpg', 'children-bg.jpg', '2021-08-08 14:21:22', '2021-08-12 05:20:44');
INSERT INTO `categories` VALUES (8, 'Доставка', 'Жеткізу', 'Delivery', 'deliveries', 'categories/5nTQEDglzpnPA65Scp7RXIQCsNROjaWF9MClON7d.jpg', 'delivery-bg.jpg', '2021-08-08 14:22:42', '2021-08-14 05:23:09');
INSERT INTO `categories` VALUES (9, 'Команда', 'Команда', 'Team', 'teams', 'categories/JZpd6koeMFzuQX9LSzXxJIlbJbCbUQyc3lYEx805.jpg', 'team-bg.jpg', '2021-08-08 14:23:10', '2021-08-10 18:40:45');
INSERT INTO `categories` VALUES (11, 'Контакты', 'Байланыстар', 'Contacts', 'contacts', 'categories/GoyUH5VhrDVNVEWrxGhlayAcKaIAAaxegCfvDhph.jpg', 'contacts-bg.jpg', '2021-08-07 18:32:38', '2021-08-11 08:13:43');

-- ----------------------------
-- Table structure for children
-- ----------------------------
DROP TABLE IF EXISTS `children`;
CREATE TABLE `children`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `note_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `tip_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `tip_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `tip_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of children
-- ----------------------------
INSERT INTO `children` VALUES (1, 7, '<p>Гастробар VOKZAL &ndash; новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее собой большое разнообразие гастрономических вкусов. Уникальность данного проекта заключается в гармоничном объединении. Гастробар VOKZAL &ndash; новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее.</p>\r\n<p class=\"mt-3\">Гастробар VOKZAL &ndash; новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее. Уникальность данного проекта заключается в гармоничном объединении.</p>', '<p>VOKZAL gastrobar is a new direction on the map of the oil capital, occupying an area of ​​1800 m2 and representing a wide variety of gastronomic tastes. The uniqueness of this project lies in the harmonious combination. VOKZAL gastrobar is a new direction on the map of the oil capital, occupying an area of ​​1800 m2 and representing.</p>\r\n<p class=\"mt-3\">VOKZAL gastrobar is a new direction on the map of the oil capital, occupying an area of ​​1800 m2 and representing. The uniqueness of this project lies in the harmonious combination.</p>', '<p>VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және гастрономиялық талғамдардың алуан түрін көрсететін мұнай астанасы картасындағы жаңа бағыт. Бұл жобаның бірегейлігі үйлесімді комбинацияда. VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және ұсынатын мұнай астанасының картасындағы жаңа бағыт.</p>\r\n<p class=\"mt-3\">VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және ұсынатын мұнай астанасының картасындағы жаңа бағыт. Бұл жобаның бірегейлігі үйлесімді комбинацияда.</p>', '2021-08-12 12:07:25', '2021-08-12 16:30:41', '<p>Тут необходимо ввести примечание</p>', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Перевод\"><span class=\"Y2IQFc\" lang=\"kk\">Мұнда сіз жазбаны енгізуіңіз керек</span></pre>', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Перевод\"><span class=\"Y2IQFc\" lang=\"en\">Here you need to enter a note</span></pre>', '<p>Тут необходимо ввести комментарий</p>', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Перевод\"><span class=\"Y2IQFc\" lang=\"kk\">Мұнда сіз түсініктеме енгізуіңіз керек</span></pre>', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Перевод\"><span class=\"Y2IQFc\" lang=\"en\">Here you need to comment</span></pre>', 'children/TwwgBmRIapHEdeI6e9d87mZ7XCFbJ711LaQz0pGz.jpg', 'child3.jpg');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_from` int(11) NOT NULL,
  `day_to` int(11) NOT NULL,
  `time_from` time(0) NOT NULL,
  `time_to` time(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adm_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ds_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES (1, 11, 'Использование данного сайта, в том числе заполнение различных форм, заявок, а также заказ Вами товаров / услуг с использованием данного сайта означает Ваше согласие с условиями настоящего Соглашения.', 'Using this site, including filling out various forms, applications, as well as ordering goods / services by you using this site, means your agreement with the terms of this Agreement.', 'Бұл сайтты пайдалану, оның ішінде әр түрлі формаларды, қосымшаларды толтыру, сондай -ақ осы сайтты пайдалану арқылы тауарларға / қызметтерге тапсырыс беру сіздің осы Келісім шарттарымен келіскеніңізді білдіреді.', 'Атырау, Ормангазы, 12', 'Atyrau, Qurmangazy, 12', 'Атырау, Құрманғазы, 12', '+7 771 260 47 62', 'vokzal1@infinityplaza.kz', 1, 7, '12:00:00', '02:00:00', '2021-08-11 15:46:51', '2021-08-13 17:06:01', 'Гастробар «Vokzal»', 'Гастробар «Vokzal»', 'Гастробар «Vokzal»', 'www.gastrobarvokzal.kz', '+7 771 121 36 51', '+7 771 123 45 67');

-- ----------------------------
-- Table structure for continents
-- ----------------------------
DROP TABLE IF EXISTS `continents`;
CREATE TABLE `continents`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of continents
-- ----------------------------
INSERT INTO `continents` VALUES (1, 3, 'Black Panther Burger & Steaks', 'Black Panther Burger & Steaks', 'Black Panther Burger & Steaks', 'Гастробар VOKZAL – новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее собой большое разнообразие гастрономических вкусов. Уникальность данного проекта заключается в гармоничном объединении.', 'VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және гастрономиялық талғамдардың алуан түрін көрсететін мұнай астанасы картасындағы жаңа бағыт. Бұл жобаның бірегейлігі үйлесімді комбинацияда.', 'VOKZAL gastrobar is a new direction on the map of the oil capital, covering an area of ​​1800 m2 and showing a variety of gastronomic tastes. The uniqueness of this project lies in the harmonious combination.', 'continents/cghFkSLIutvgd4f3nxlnwz5MyUmToMzXh9LNsJzg.jpg', 'continent1.jpg', '2021-08-10 17:08:08', '2021-08-15 09:48:56');
INSERT INTO `continents` VALUES (2, 3, 'Паназиатская кухня', 'Паназиялық тағамдар', 'Pan-Asian dishes', 'Гастробар VOKZAL – новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее собой большое разнообразие гастрономических вкусов. Уникальность данного проекта заключается в гармоничном объединении.', 'VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және гастрономиялық талғамдардың алуан түрін көрсететін мұнай астанасы картасындағы жаңа бағыт. Бұл жобаның бірегейлігі үйлесімді комбинацияда.', 'VOKZAL gastrobar is a new direction on the map of the oil capital, covering an area of 1800 m2 and showing a variety of gastronomic tastes. The uniqueness of this project lies in the harmonious combination.', 'continents/TMVYUb2r8ih2JdgM1zKvFSvolTJjUAyWED8FjBrn.jpg', 'continent2.jpg', '2021-08-10 17:08:57', '2021-08-10 17:08:57');
INSERT INTO `continents` VALUES (3, 3, 'Грузинская кухня', 'Грузин тағамдары', 'Georgian cuisine', 'Гастробар VOKZAL – новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее собой большое разнообразие гастрономических вкусов. Уникальность данного проекта заключается в гармоничном объединении.', 'VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және гастрономиялық талғамдардың алуан түрін көрсететін мұнай астанасы картасындағы жаңа бағыт. Бұл жобаның бірегейлігі үйлесімді комбинацияда.', 'VOKZAL gastrobar is a new direction on the map of the oil capital, covering an area of 1800 m2 and showing a variety of gastronomic tastes. The uniqueness of this project lies in the harmonious combination.', 'continents/olHeflHBxMPMrbLfflCRs78H5VYLfPX5Gql8Im2F.jpg', 'continent3.jpg', '2021-08-10 17:09:41', '2021-08-10 17:09:41');
INSERT INTO `continents` VALUES (4, 3, 'Европейская кухня', 'Еуропалық тағамдар', 'European cuisine', 'Гастробар VOKZAL – новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее собой большое разнообразие гастрономических вкусов. Уникальность данного проекта заключается в гармоничном объединении.', 'VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және гастрономиялық талғамдардың алуан түрін көрсететін мұнай астанасы картасындағы жаңа бағыт. Бұл жобаның бірегейлігі үйлесімді комбинацияда.', 'VOKZAL gastrobar is a new direction on the map of the oil capital, covering an area of 1800 m2 and showing a variety of gastronomic tastes. The uniqueness of this project lies in the harmonious combination.', 'continents/kDtk9hDqUKNQyucu6MUenA81HFd8Ej6bMXXNifJE.jpg', 'continent4.jpg', '2021-08-10 17:10:16', '2021-08-11 14:32:01');
INSERT INTO `continents` VALUES (5, 3, 'Бар', 'Бар', 'Bar', 'Предприятие общественного питания, оборудованное барной стойкой и реализующее в зависимости от специализации алкогольные и (или) безалкогольные напитки, горячие и прохладительные напитки, коктейли, холодные и горячие закуски и блюда в ограниченном ассортименте, покупные товары.', 'Мамандануына қарай алкогольді және (немесе) алкогольсіз сусындарды, ыстық және суық сусындарды, коктейльдерді, салқын және ыстық тағамдар мен шектеулі ассортиментте, сатып алынатын тауарларды сататын бармен жабдықталған тамақтану мекемесі.', 'A catering establishment equipped with a bar counter and selling, depending on the specialization, alcoholic and (or) non-alcoholic drinks, hot and cold drinks, cocktails, cold and hot snacks and meals in a limited range, purchased goods.', 'continents/bbIELF5fKUsaOX4dKr0rc1zZUR9EmUlcN0hcsTG0.jpg', 'continent5.jpg', '2021-08-15 10:06:09', '2021-08-15 10:06:25');

-- ----------------------------
-- Table structure for days
-- ----------------------------
DROP TABLE IF EXISTS `days`;
CREATE TABLE `days`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `long_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of days
-- ----------------------------
INSERT INTO `days` VALUES (1, 'Понедельник', 'Monday', 'Дүйсенбі', 'Пн', 'Mo', 'Пн');
INSERT INTO `days` VALUES (2, 'Вторник', 'Tuesday ', 'Сейсенбі ', 'Вт', 'Tu', 'Вт');
INSERT INTO `days` VALUES (3, 'Среда', 'Wednesday ', 'Сәрсенбі ', 'Ср', 'We', 'Ср');
INSERT INTO `days` VALUES (4, 'Четверг', 'Thursday ', 'Бейсенбі ', 'Чт', 'Th', 'Чт');
INSERT INTO `days` VALUES (5, 'Пятница', 'Friday', 'Жұма ', 'Пт', 'Fr', 'Пт');
INSERT INTO `days` VALUES (6, 'Суббота', 'Saturday', 'Cенбі ', 'Сб', 'Sa', 'Сб');
INSERT INTO `days` VALUES (7, 'Воскресенье', 'Sunday', 'Жексенбі ', 'Вс', 'Su', 'Вс');

-- ----------------------------
-- Table structure for deliveries
-- ----------------------------
DROP TABLE IF EXISTS `deliveries`;
CREATE TABLE `deliveries`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of deliveries
-- ----------------------------
INSERT INTO `deliveries` VALUES (1, 8, 'Мы осуществляем доставку по г.Алматы', 'Біз Алматы бойынша жеткіземіз', 'We deliver across Almaty', '2021-08-14 11:33:01', '2021-08-14 05:34:21');

-- ----------------------------
-- Table structure for dish_order
-- ----------------------------
DROP TABLE IF EXISTS `dish_order`;
CREATE TABLE `dish_order`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `dish_id` bigint(20) UNSIGNED NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dish_order_order_id_foreign`(`order_id`) USING BTREE,
  INDEX `dish_order_dish_id_foreign`(`dish_id`) USING BTREE,
  CONSTRAINT `dish_order_dish_id_foreign` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `dish_order_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dish_order
-- ----------------------------
INSERT INTO `dish_order` VALUES (2, 2, 6, 1, '2021-08-24 16:06:45', '2021-08-24 16:06:45');
INSERT INTO `dish_order` VALUES (3, 2, 5, 1, '2021-08-24 16:06:46', '2021-08-24 16:06:46');
INSERT INTO `dish_order` VALUES (4, 3, 9, 1, '2021-08-24 16:29:11', '2021-08-24 16:29:11');
INSERT INTO `dish_order` VALUES (5, 4, 9, 1, '2021-08-24 17:49:45', '2021-08-24 17:49:45');
INSERT INTO `dish_order` VALUES (6, 5, 9, 1, '2021-08-25 18:19:46', '2021-08-25 18:19:46');
INSERT INTO `dish_order` VALUES (7, 6, 9, 1, '2021-08-28 09:14:27', '2021-08-28 09:14:27');
INSERT INTO `dish_order` VALUES (8, 7, 6, 1, '2021-08-29 15:23:04', '2021-08-29 15:23:04');
INSERT INTO `dish_order` VALUES (9, 7, 7, 1, '2021-08-29 15:23:06', '2021-08-29 15:23:06');
INSERT INTO `dish_order` VALUES (10, 8, 9, 1, '2021-08-29 15:53:47', '2021-08-29 15:53:47');
INSERT INTO `dish_order` VALUES (11, 9, 6, 1, '2021-08-29 15:55:36', '2021-08-29 15:55:36');

-- ----------------------------
-- Table structure for dishes
-- ----------------------------
DROP TABLE IF EXISTS `dishes`;
CREATE TABLE `dishes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `continent_id` int(11) NOT NULL,
  `assortment_id` int(11) NOT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `desc_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `price` double NOT NULL DEFAULT 0,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dishes
-- ----------------------------
INSERT INTO `dishes` VALUES (1, 1, 20, 'Чикен бургер', 'Тауық бургері', 'Chicken burger', 'Булочка бриошь, куриная грудка с вашим любимым вкусом, лист салата, помидор, маринованные огурцы, соус ранч', 'Бриош тоқаш, сіздің сүйікті дәмі бар тауықтың төс еті, салат, қызанақ, тұздалған қияр, ранч соусы', 'Briosh buns, chicken breast with your favorite flavor, salad, tomatoes, pickles, ranch sauce', 1400, 'dishes/7ppjfPQTksKO8ibHZVd4tr86LGazATJpHhc1Yt5R.png', 'georgian-img.png', '2021-08-14 16:31:01', '2021-08-14 16:32:47');
INSERT INTO `dishes` VALUES (3, 1, 20, 'Воппер', 'Воппер', 'Wopper', 'Фирменный, сытный бургер с овощами, со 100% говядиной, приготовленной на открытом огне', 'Ашық отта 100% сиыр еті қосылған, қолтаңбасы бар көкөністер қосылған гамбургер', 'Hamburger on the open fire with 100% beef, autographed vegetables', 1350, 'dishes/wMZrigwicNuErMR89Tj6eyxPDt408AO3wdBrc9Wn.png', 'georgian-img.png', '2021-08-14 17:56:07', '2021-08-14 21:06:01');
INSERT INTO `dishes` VALUES (4, 1, 20, 'Лонг Чикен', 'Ұзын тауық', 'Long Chicken', 'Сытный бургер с хрустящими листьями салата и нежным куриным филе', 'Қытырлақ салат пен жұмсақ тауық еті бар гамбургер', 'Hamburger with crispy salad and tender chicken', 1000, 'dishes/pGUy3UXvcLL8vYs3VZqzpHZ5aL7nPkdZR60eCMmz.png', 'georgian-img.png', '2021-08-14 18:18:27', '2021-08-14 21:07:04');
INSERT INTO `dishes` VALUES (5, 2, 8, 'Филадельфия маки', 'Филадельфия маки', 'Philadelphia maki', 'Самый популярный ролл с лососем и сливочным соусом', 'Лосось және кремді тұздық қосылған ең танымал ролл', 'The most popular roll with salmon and creamy sauce', 1270, 'dishes/liDG8IQG6VynnFOvxmQvFSoJCq8sQ4tBk9IZp3Ej.png', 'georgian-img.png', '2021-08-14 18:23:10', '2021-08-14 18:23:10');
INSERT INTO `dishes` VALUES (6, 2, 8, 'Калифорния маки', 'Калифорния көкнәрі', 'California poppies', 'Ролл с креветкой, авокадо, огурцом и икрой Тобико', 'Асшаян, авокадо, қияр және тобико уылдырығымен орама', 'Roll with shrimp, avocado, cucumber and Tobiko caviar', 1170, 'dishes/R3ix2yT2vu94wNwBdNz4e48mfsnRzC9U8OuNHrvh.png', 'georgian-img.png', '2021-08-14 18:24:23', '2021-08-14 18:24:23');
INSERT INTO `dishes` VALUES (7, 2, 8, 'Ясай ролл', 'Ясай ролл', 'Yasai roll', 'Фирменный ролл, в новой версии со шпинатом, морковью, маринованной редькой и яичными оладьями. Подается с горчичным соусом', 'Қолтаңба ролигі, шпинат, сәбіз, маринадталған шалғам және жұмыртқа құймақ қосылған жаңа нұсқада. Қыша тұздығымен бірге беріледі', 'Signature roll, in a new version with spinach, carrots, pickled radish and egg pancakes. Served with mustard sauce', 1270, 'dishes/NnDxysgTYFB1ozt9pvWFqQgW2p2re9Fl9Pge2gnV.png', 'georgian-img.png', '2021-08-14 18:26:08', '2021-08-14 18:26:08');
INSERT INTO `dishes` VALUES (8, 3, 17, 'Хачапури по Мегрельски', 'Мегрелиан тіліндегі Хачапури', 'Khachapuri in Megrelian', 'Хачапури по Мегрельски с двойным сыром', 'Мегрелиан Хачапури қос ірімшікпен', 'Megrelian Khachapuri with double cheese', 1800, 'dishes/r9fcBE439XAyulamftZZKUdrNRl7WJP3BFxTQVlG.png', 'georgian-img.png', '2021-08-14 18:29:11', '2021-08-14 18:29:11');
INSERT INTO `dishes` VALUES (9, 3, 17, 'Хачапури по-имеритински', 'Хачапури Имеритин стилінде', 'Khachapuri in Imeritin style', 'Закрытый хачапури по-имеритински с сыром', 'Ірімшік қосылған Имеритин стиліндегі хачапури', 'Closed Imeritin style khachapuri with cheese', 1500, 'dishes/dlFG2iFva3bfjMxCISiprlXolp1p2NgQFlZ4AQYb.png', 'georgian-img.png', '2021-08-14 18:30:27', '2021-08-14 18:30:27');
INSERT INTO `dishes` VALUES (10, 3, 17, 'Хачапури по-аджарски', 'Аджария Хачапури', 'Adjarian Khachapuri', 'Хачапури по-аджарски с яйцом и пышным тестом', 'Аджариялық хачапури жұмыртқа мен жұмсақ қамырмен', 'Adjarian khachapuri with egg and fluffy dough', 1900, 'dishes/dedo6Piar2mC2EfHi9jH7ZHfxLhSDfC4mH6oB6vE.png', 'georgian-img.png', '2021-08-14 18:31:51', '2021-08-14 18:31:51');
INSERT INTO `dishes` VALUES (11, 4, 4, 'Свежий салат', 'Жаңа салат', 'Fresh salad', 'Огурцы, помидоры, салат, лук, зелень', 'Қияр, қызанақ, салат, пияз, шөптер', 'Cucumbers, tomatoes, lettuce, onions, herbs', 590, 'dishes/e19m6NdK62WpooqNNhanjiRckFVfPSycTBvr9pGI.png', 'georgian-img.png', '2021-08-14 18:35:08', '2021-08-14 18:35:08');
INSERT INTO `dishes` VALUES (12, 4, 4, 'Греческий салат', 'Грек салаты', 'Greek salad', 'Помидоры, огурцы, репчатый лук, листья салата, маслины, оливковое масло, сок лимона', 'Қызанақ, қияр, пияз, салат, зәйтүн, зәйтүн майы, лимон шырыны', 'Tomatoes, cucumbers, onions, lettuce, olives, olive oil, lemon juice', 1290, 'dishes/if1FNq2O4QkAJZh57jLrtuRz9gZRVbe1OYvXG1dB.png', 'georgian-img.png', '2021-08-14 18:36:43', '2021-08-14 18:36:43');
INSERT INTO `dishes` VALUES (13, 4, 4, 'Малибу', 'Малибу', 'Malibu', 'Копченая курица, помидоры, огурцы, сыр, сухари, майонез', 'Ысталған тауық еті, қызанақ, қияр, ірімшік, крекер, майонез', 'Smoked chicken, tomatoes, cucumbers, cheese, crackers, mayonnaise', 1090, 'dishes/pgEhOo3R3SMne2lSWckyikgOD6pOlWwRlZGthBgq.png', 'georgian-img.png', '2021-08-14 18:37:49', '2021-08-14 18:37:49');
INSERT INTO `dishes` VALUES (15, 1, 19, 'Пицца с морепродуктами', 'Теңіз өнімдері қосылған пицца', 'Pizza with seafood', 'Сыр моцарелла пицца соус маслины креветки лосось', 'Моцарелла ірімшігі пицца соусы зәйтүн асшаяндары лосось', 'Mozzarella ірімшігі pizza sauces zytun assayandary salmon', 1600, 'dishes/iFkmOV3youMvyfJd1vDuN40g8go7ppRxN4I1y1uq.png', 'georgian-img.png', '2021-08-15 07:18:33', '2021-08-15 07:18:33');
INSERT INTO `dishes` VALUES (16, 1, 19, 'Пицца болоньезе', 'Пицца болоньезе', 'Pizza bolognese', 'Сыр моцарелла пицца соус болоньезе', 'Моцарелла ірімшігі пицца больнес соусы', 'Mozzarella cheese pizza bolognese sauce', 1400, 'dishes/XFb8qOlmWa8W3ryRcaRIqe1wgJNX6N0yStOPx35r.png', 'georgian-img.png', '2021-08-15 07:19:46', '2021-08-15 07:19:46');
INSERT INTO `dishes` VALUES (17, 1, 19, 'Пицца грибная', 'Саңырауқұлақ пицца', 'Mushroom pizza', 'Пицца соус сыр моцарелла шампиньоны', 'Пицца соусы ірімшігі моззарелла', 'Pizza sauce cheese mozzarella mushrooms', 1200, 'dishes/cLJaXBKrazXXsLZxmrI612bF6yeh0zowATGxlUS5.png', 'georgian-img.png', '2021-08-15 07:21:00', '2021-08-15 07:21:00');
INSERT INTO `dishes` VALUES (18, 5, 25, 'Grants Triple Wood', 'Grants Triple Wood', 'Grants Triple Wood', 'Виски, Шотландский', 'Виски, шотланд', 'Whiskey, Scotch', 5315, 'dishes/28CuXEKuhFFi6fC2pjuDWLeafHyxnGFQcnahkTEx.png', 'georgian-img.png', '2021-08-15 10:13:41', '2021-08-15 10:13:41');
INSERT INTO `dishes` VALUES (19, 5, 25, 'Виски Evan Williams 43%', 'Виски Evan Williams 43%', 'Evan Williams Whiskey 43%', 'Виски Эван Уильямс', 'Эван Уильямс виски', 'Evan Williams whiskey', 6524, 'dishes/qer76yZPa5AGfEVjMaBJHo1Lw5v5pMC73pwUWGVZ.png', 'georgian-img.png', '2021-08-15 10:15:06', '2021-08-15 10:15:06');
INSERT INTO `dishes` VALUES (20, 5, 25, 'Игристое вино Asti Martini 7,5%', 'Газдалған шарап Asti Martini 7,5%', 'Sparkling wine Asti Martini 7,5%', 'Игристое вино Асти Мартини', 'Жарқыраған шарап Асти Мартини', 'Sparkling wine Asti Martini', 3591, 'dishes/cwnn7oaMNVhOV9abwh5GRxLSAwL107LDdU0QlImN.png', 'georgian-img.png', '2021-08-15 10:16:05', '2021-08-15 10:16:05');
INSERT INTO `dishes` VALUES (21, 5, 24, 'San Pellegrino Limonata', 'San Pellegrino Limonata', 'San Pellegrino Limonata', 'Безалкогольные, Лимонады', 'Алкогольсіз, лимонадтар', 'Non-alcoholic, Lemonades', 505, 'dishes/LdZVmUiapb8j07XnwuRrnlaWUTxGaUqRAbJUTOhq.png', 'georgian-img.png', '2021-08-15 10:17:08', '2021-08-15 10:17:08');
INSERT INTO `dishes` VALUES (22, 5, 24, 'San Pellegrino Aranciata', 'San Pellegrino Aranciata', 'San Pellegrino Aranciata', 'Безалкогольные, Лимонады', 'Алкогольсіз, лимонадтар', 'Non-alcoholic, Lemonades', 505, 'dishes/qyWlyszm3HGvbrEJsvkH1gWcpV6fxaC4ZN0cmf36.png', 'georgian-img.png', '2021-08-15 10:17:49', '2021-08-15 10:17:49');
INSERT INTO `dishes` VALUES (23, 5, 24, 'Биолимонад RIDE “Фруктовый микс”', 'Biolimonad RIDE «Жеміс қоспасы»', 'Biolimonad RIDE \"Fruit mix\"', 'Безалкогольные, Лимонады', 'Алкогольсіз, лимонадтар', 'Non-alcoholic, Lemonades', 519, 'dishes/2BEc7CG4whgsZZR7ttj1Au57jBh8NRLKAlSZPm14.png', 'georgian-img.png', '2021-08-15 10:18:39', '2021-08-15 11:00:04');

-- ----------------------------
-- Table structure for features
-- ----------------------------
DROP TABLE IF EXISTS `features`;
CREATE TABLE `features`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `desc_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of features
-- ----------------------------
INSERT INTO `features` VALUES (1, 'Атмосфера', 'Атмосфера', 'Atmosphere', 'В наших кафе царит атмосфера вечного праздника! Для детей Gastrobar Vokzal – это возможность погрузиться в любимый мультик, полакомиться любимыми сладостями и повеселиться! Взрослые ценят Gastrobar Vokzal вкусные блюда, за гостеприимство и доброжелательность, а еще – за возможность комфортного досуга, который всегда можно разделить со своим ребенком.', 'Біздің кафелерде мәңгілік мерекенің атмосферасы орнаған! Балалар үшін Гастробар Вокзал - бұл сүйікті мультфильмге енуге, сүйікті тәттілерден ләззат алуға және көңіл көтеруге мүмкіндік! Ересектер Гастробар Вокзалдың дәмді тағамдарын, қонақжайлылығы мен достық қарым -қатынасын, сондай -ақ сіздің балаңызбен әрқашан бөлісуге болатын жайлы демалыс мүмкіндігін бағалайды.', 'Our cafes have an eternal holiday atmosphere! Gastrobar Station for children is an opportunity to get into your favorite cartoon, enjoy your favorite sweets and have fun! Adults will appreciate the delicious food, hospitality and friendliness of the Gastrobar Station, as well as the opportunity for a comfortable holiday that you can always share with your child.', 'features/ueoX1WqkFAlJBBpy7tybyBbkDs5o0sZIvlftlDiG.svg', 'child-icon1.svg', '2021-08-12 15:39:52', '2021-08-12 15:39:52');
INSERT INTO `features` VALUES (2, 'Кухня', 'Ас үй', 'Kitchen', 'В наших кафе царит атмосфера вечного праздника! Для детей Gastrobar Vokzal – это возможность погрузиться в любимый мультик, полакомиться любимыми сладостями и повеселиться! Взрослые ценят Gastrobar Vokzal вкусные блюда, за гостеприимство и доброжелательность, а еще – за возможность комфортного досуга, который всегда можно разделить со своим ребенком.', 'Біздің кафелерде мәңгілік мерекенің атмосферасы орнаған! Балалар үшін Гастробар Вокзал - бұл сүйікті мультфильмге енуге, сүйікті тәттілерден ләззат алуға және көңіл көтеруге мүмкіндік! Ересектер Гастробар Вокзалдың дәмді тағамдарын, қонақжайлылығы мен достық қарым -қатынасын, сондай -ақ сіздің балаңызбен әрқашан бөлісуге болатын жайлы демалыс мүмкіндігін бағалайды.', 'The atmosphere of an eternal holiday reigns in our cafes! For children, Gastrobar Vokzal is an opportunity to immerse yourself in your favorite cartoon, enjoy your favorite sweets and have fun! Adults appreciate Gastrobar Vokzal\'s delicious food, for its hospitality and friendliness, and also for the opportunity for comfortable leisure, which can always be shared with your child.', 'features/x7oLtGs5Y8fgyOeWdDhxpRyRUxmO5Fx9aVLtbrhC.svg', 'child-icon2.svg', '2021-08-12 15:40:41', '2021-08-12 15:40:41');
INSERT INTO `features` VALUES (3, 'Обслуживание', 'Қызмет', 'Service', 'В наших кафе царит атмосфера вечного праздника! Для детей Gastrobar Vokzal – это возможность погрузиться в любимый мультик, полакомиться любимыми сладостями и повеселиться! Взрослые ценят Gastrobar Vokzal вкусные блюда, за гостеприимство и доброжелательность, а еще – за возможность комфортного досуга, который всегда можно разделить со своим ребенком.', 'Біздің кафелерде мәңгілік мерекенің атмосферасы орнаған! Балалар үшін Гастробар Вокзал - бұл сүйікті мультфильмге енуге, сүйікті тәттілерден ләззат алуға және көңіл көтеруге мүмкіндік! Ересектер Гастробар Вокзалдың дәмді тағамдарын, қонақжайлылығы мен достық қарым -қатынасын, сондай -ақ сіздің балаңызбен әрқашан бөлісуге болатын жайлы демалыс мүмкіндігін бағалайды.', 'Our cafes have an eternal holiday atmosphere! Gastrobar Station for children is an opportunity to get into your favorite cartoon, enjoy your favorite sweets and have fun! Adults will appreciate the delicious food, hospitality and friendliness of the Gastrobar Station, as well as the opportunity for a comfortable holiday that you can always share with your child.', 'features/y6mwBxJgMzxBnBoB4psDr1BINTY5nScozG92A2bW.svg', 'child-icon3.svg', '2021-08-12 15:41:49', '2021-08-12 15:45:17');
INSERT INTO `features` VALUES (4, 'Досуг', 'Бос уақыт', 'Leisure', 'В наших кафе царит атмосфера вечного праздника! Для детей Gastrobar Vokzal – это возможность погрузиться в любимый мультик, полакомиться любимыми сладостями и повеселиться! Взрослые ценят Gastrobar Vokzal вкусные блюда, за гостеприимство и доброжелательность, а еще – за возможность комфортного досуга, который всегда можно разделить со своим ребенком.', 'Біздің кафелерде мәңгілік мерекенің атмосферасы орнаған! Балалар үшін Гастробар Вокзал - бұл сүйікті мультфильмге енуге, сүйікті тәттілерден ләззат алуға және көңіл көтеруге мүмкіндік! Ересектер Гастробар Вокзалдың дәмді тағамдарын, қонақжайлылығы мен достық қарым -қатынасын, сондай -ақ сіздің балаңызбен әрқашан бөлісуге болатын жайлы демалыс мүмкіндігін бағалайды.', 'The atmosphere of an eternal holiday reigns in our cafes! For children, Gastrobar Vokzal is an opportunity to immerse yourself in your favorite cartoon, enjoy your favorite sweets and have fun! Adults appreciate Gastrobar Vokzal\'s delicious food, for its hospitality and friendliness, and also for the opportunity for comfortable leisure, which can always be shared with your child.', 'features/tbx8iGydBtzM61CIYtN8fVdXtuATrnf20Fcbxkhz.svg', 'child-icon4.svg', '2021-08-12 15:42:35', '2021-08-12 15:42:35');

-- ----------------------------
-- Table structure for galleries
-- ----------------------------
DROP TABLE IF EXISTS `galleries`;
CREATE TABLE `galleries`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bar_id` int(11) NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `desc_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of galleries
-- ----------------------------
INSERT INTO `galleries` VALUES (1, 1, NULL, NULL, NULL, 'galleries/GU57ydKyvHJJa7L1ZYnO73VJjzzHDjTGVnIAy81w.jpg', 'gallery5.jpg', NULL, '2021-08-13 05:55:08');
INSERT INTO `galleries` VALUES (2, 1, NULL, NULL, NULL, 'galleries/nuu0cZCx7WykLq5crrQzevxZse4mmyleyNCsLkoU.jpg', 'gallery3.jpg', '2021-08-13 05:26:50', '2021-08-13 05:26:50');
INSERT INTO `galleries` VALUES (3, 1, NULL, NULL, NULL, 'galleries/BOCk1jfpVr4KyFWjVpX4Nu3Yz9RuZMpMC4JJYGUq.jpg', 'gallery1.jpg', '2021-08-13 05:27:41', '2021-08-13 05:27:41');
INSERT INTO `galleries` VALUES (4, 1, NULL, NULL, NULL, 'galleries/BmfX8EM9g5MBIzE9dYA77YQ8ZRvY5egrifDiogrD.jpg', 'gallery4.jpg', '2021-08-13 05:30:30', '2021-08-13 05:30:30');
INSERT INTO `galleries` VALUES (5, 1, NULL, NULL, NULL, 'galleries/XU16Q8PDQObbjQCwawfJbgu5jmpgmcepuMh0RC5D.jpg', 'gallery3.jpg', NULL, '2021-08-13 05:55:17');
INSERT INTO `galleries` VALUES (6, 1, NULL, NULL, NULL, 'galleries/8n5Q5gvfCa1cxHQTHMVCr1xWh8JxRK0tYdH1QGuu.jpg', 'gallery4.jpg', '2021-08-13 11:32:42', '2021-08-13 05:55:25');
INSERT INTO `galleries` VALUES (7, 2, NULL, NULL, NULL, 'galleries/pBwa1WpKLg5A0kvMYrTJ3k2YXZKP5ZavypGuXPT3.jpg', 'gallery2.jpg', '2021-08-13 11:32:52', '2021-08-13 05:55:32');
INSERT INTO `galleries` VALUES (8, 2, NULL, NULL, NULL, 'galleries/aX1uHlFkU7p6znj3xl35HAedeavgvwwwdGjgZiQH.jpg', 'gallery1.jpg', '2021-08-13 11:32:52', '2021-08-13 05:56:07');
INSERT INTO `galleries` VALUES (9, 2, NULL, NULL, NULL, 'galleries/l20ORBfDTARFJXCSfYzrjvxYLlD8sc8BESuZABpL.jpg', 'gallery2.jpg', '2021-08-13 11:32:52', '2021-08-13 05:56:29');
INSERT INTO `galleries` VALUES (10, 2, NULL, NULL, NULL, 'galleries/ENRiAexEXeXWiGd8P5lkklFTffTSxQ89S0kbU0QI.jpg', 'gallery5.jpg', '2021-08-13 11:32:52', '2021-08-13 05:57:00');
INSERT INTO `galleries` VALUES (11, 2, NULL, NULL, NULL, 'galleries/j47WffDPZtWSLkI1sL96isxqPOjzsTmvc9SRjKBw.jpg', 'gallery3.jpg', '2021-08-13 11:32:52', '2021-08-13 05:57:46');
INSERT INTO `galleries` VALUES (12, 2, NULL, NULL, NULL, 'galleries/Sb9tkaQj2k9ZCyUMovMCGMQqhKsf5mpz5NVCAnpV.jpg', 'gallery5.jpg', '2021-08-13 11:32:52', '2021-08-13 05:58:05');
INSERT INTO `galleries` VALUES (13, 3, NULL, NULL, NULL, 'galleries/QYZukNXncIK1dJzwVWbeGbDA8uGfmMMnuMfueTfc.jpg', 'gallery2.jpg', '2021-08-13 11:44:05', '2021-08-13 05:58:12');
INSERT INTO `galleries` VALUES (14, 3, NULL, NULL, NULL, 'galleries/TK0Kpuy23p9YM3zXGGNNa7Qb94Tg7DkJKnnfdoHj.jpg', 'gallery2.jpg', '2021-08-13 11:44:02', '2021-08-13 05:59:34');
INSERT INTO `galleries` VALUES (15, 3, NULL, NULL, NULL, 'galleries/H6X6yPpX3kZVXL9QkLcsgV0PkgnGx21OFzWryAU7.jpg', 'gallery1.jpg', '2021-08-13 11:44:13', '2021-08-13 05:59:40');
INSERT INTO `galleries` VALUES (16, 3, NULL, NULL, NULL, 'galleries/BSFrfLf0caqd296jnXoSPLFsMTDg1JbwLZqq23gD.jpg', 'gallery5.jpg', '2021-08-13 11:44:13', '2021-08-13 05:58:45');
INSERT INTO `galleries` VALUES (17, 3, NULL, NULL, NULL, 'galleries/h6ksC2bTSkagLTUnkwUGdnqTKHttGihNbTSkhvmL.jpg', 'gallery1.jpg', '2021-08-13 11:44:31', '2021-08-13 05:57:07');
INSERT INTO `galleries` VALUES (18, 3, NULL, NULL, NULL, 'galleries/IvQmU6hce32NnOU9yPKOYV4A2W8kpTV9cjg3KCrB.jpg', 'gallery1.jpg', '2021-08-13 11:44:38', '2021-08-13 05:58:19');
INSERT INTO `galleries` VALUES (19, 4, NULL, NULL, NULL, 'galleries/htgeNOnqKquEGTTLMVzPn8vqAW8RioHYh5ykPG7C.jpg', 'gallery4.jpg', '2021-08-13 11:44:38', '2021-08-13 05:58:58');
INSERT INTO `galleries` VALUES (20, 4, NULL, NULL, NULL, 'galleries/JaQSIsjxc1NW2kNNPoSMH3AqCxYSgWILGEQ1MSQz.jpg', 'gallery3.jpg', '2021-08-13 11:44:38', '2021-08-13 05:59:28');
INSERT INTO `galleries` VALUES (21, 4, NULL, NULL, NULL, 'galleries/bp25fZJySTVeJsIPnJg22xqwN8DR6jKfcn7tEZSJ.jpg', 'gallery4.jpg', '2021-08-13 11:45:17', '2021-08-13 05:58:32');
INSERT INTO `galleries` VALUES (22, 4, NULL, NULL, NULL, 'galleries/pILrReSQnT5NUUHsRBfsRoF1wD18TIAerXA8YdKZ.jpg', 'gallery3.jpg', '2021-08-13 11:45:26', '2021-08-13 05:58:26');
INSERT INTO `galleries` VALUES (23, 4, NULL, NULL, NULL, 'galleries/MWhWYyAATIT0LsCJvhqzpUThGkV7jT4E2YvT7gAb.jpg', 'gallery4.jpg', '2021-08-13 11:45:33', '2021-08-13 05:57:14');
INSERT INTO `galleries` VALUES (24, 4, NULL, NULL, NULL, 'galleries/vSUq4lDkAVSJsCF08iPl0ccPnUrT8HfQ08jQyN69.jpg', 'gallery3.jpg', '2021-08-13 11:45:33', '2021-08-13 05:58:51');
INSERT INTO `galleries` VALUES (25, 5, NULL, NULL, NULL, 'galleries/wVP5hkaDQRwVvKUm2HK5O3pX48Wg9WIuHCVc42WA.jpg', 'gallery2.jpg', '2021-08-13 11:45:51', '2021-08-13 05:59:22');
INSERT INTO `galleries` VALUES (26, 5, NULL, NULL, NULL, 'galleries/fvQsM0rKdYIAte75i17koYekDNRgDypTiQ3EA555.jpg', 'gallery3.jpg', '2021-08-13 11:46:00', '2021-08-13 05:59:15');
INSERT INTO `galleries` VALUES (27, 5, NULL, NULL, NULL, 'galleries/BjBNf1vlHMkgnArqc7qFc5xCEHpL6GBzOGhzWdMo.jpg', 'gallery2.jpg', '2021-08-13 11:46:00', '2021-08-13 05:58:39');
INSERT INTO `galleries` VALUES (28, 5, NULL, NULL, NULL, 'galleries/bdTKa5ajoPYjajr9bc3d8UfXdAppoxibZpG0ERtF.jpg', 'gallery2.jpg', '2021-08-13 11:46:00', '2021-08-13 05:59:04');
INSERT INTO `galleries` VALUES (29, 5, NULL, NULL, NULL, 'galleries/BUVpPnCtdMW9FaPYYiCUugsOQ5Wt2opozWEUURq8.jpg', 'gallery5.jpg', '2021-08-13 11:46:00', '2021-08-13 05:59:10');
INSERT INTO `galleries` VALUES (30, 5, NULL, NULL, NULL, 'galleries/J6o31UF0PTHOnIiAheeYToHKWlPzi8VFfCPZSgC7.jpg', 'gallery1.jpg', '2021-08-13 11:46:00', '2021-08-13 05:57:21');

-- ----------------------------
-- Table structure for halls
-- ----------------------------
DROP TABLE IF EXISTS `halls`;
CREATE TABLE `halls`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_hall_id` int(11) NOT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `desc_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of halls
-- ----------------------------
INSERT INTO `halls` VALUES (1, 2, 'Детский зал #1', 'Балалар залы #1', 'Children\'s hall #1', 'Знакомство со вкусами начинается со взгляда и для этого дизайнеры разработали концепцию открытой кухни. Таким образом гости могут узнать поэтапное приготовление блюд и восхититься профессиональным мастерством каждого шеф-повара и его команды.', 'Дәммен танысу бір қарағанда басталады, және бұл үшін дизайнерлер ашық ас үйдің тұжырымдамасын жасады. Осылайша, қонақтар тағамдарды кезең-кезеңмен дайындау туралы біле алады және әр аспаз мен оның командасының кәсіби шеберлігіне сүйсінеді.', 'Acquaintance with tastes begins with a glance, and for this, the designers have developed the concept of an open kitchen. Thus, guests can learn about the step-by-step preparation of dishes and admire the professional skills of each chef and his team.', 'halls/xG9ipOBNcrc9SFHna7zrsxeIsOJFecvtU7auvjGG.jpg', 'child1.jpg', '2021-08-12 11:21:27', '2021-08-12 11:24:27');
INSERT INTO `halls` VALUES (2, 2, 'Детский зал #2', 'Балалар залы #2', 'Children\'s hall #2', 'Знакомство со вкусами начинается со взгляда и для этого дизайнеры разработали концепцию открытой кухни. Таким образом гости могут узнать поэтапное приготовление блюд и восхититься профессиональным мастерством каждого шеф-повара и его команды.', 'Дәммен танысу бір қарағанда басталады, және бұл үшін дизайнерлер ашық ас үйдің тұжырымдамасын жасады. Осылайша, қонақтар тағамдарды кезең-кезеңмен дайындау туралы біле алады және әр аспаз мен оның командасының кәсіби шеберлігіне сүйсінеді.', 'Getting to know the taste begins at first glance, and for this the designers have created the concept of an open kitchen. In this way, guests can learn how to cook dishes step by step and admire the professionalism of each chef and his team.', 'halls/ZSVrcPCmiUD2zFSpZtTHTrT3YG5lckLIS3ep2knw.jpg', 'child2.jpg', '2021-08-12 11:25:35', '2021-08-12 11:25:35');
INSERT INTO `halls` VALUES (3, 3, 'Кулинарная студия #1', 'Аспаздық студия #1', 'Culinary studio #1', 'Знакомство со вкусами начинается со взгляда и для этого дизайнеры разработали концепцию открытой кухни. Таким образом гости могут узнать поэтапное приготовление блюд и восхититься профессиональным мастерством каждого шеф-повара и его команды.', 'Дәммен танысу бір қарағанда басталады, және бұл үшін дизайнерлер ашық ас үйдің тұжырымдамасын жасады. Осылайша, қонақтар тағамдарды кезең-кезеңмен дайындау туралы біле алады және әр аспаз мен оның командасының кәсіби шеберлігіне сүйсінеді.', 'Acquaintance with tastes begins with a glance, and for this, the designers have developed the concept of an open kitchen. Thus, guests can learn about the step-by-step preparation of dishes and admire the professional skills of each chef and his team.', 'halls/rRng5Phpo4xHHRHqMVe6n9VSihoKsWD0jsflzayb.jpg', 'study1.jpg', '2021-08-12 11:27:31', '2021-08-12 11:31:24');
INSERT INTO `halls` VALUES (4, 3, 'Кулинарная студия #2', 'Аспаздық студия #2', 'Culinary studio #2', 'Знакомство со вкусами начинается со взгляда и для этого дизайнеры разработали концепцию открытой кухни. Таким образом гости могут узнать поэтапное приготовление блюд и восхититься профессиональным мастерством каждого шеф-повара и его команды.', 'Дәммен танысу бір қарағанда басталады, және бұл үшін дизайнерлер ашық ас үйдің тұжырымдамасын жасады. Осылайша, қонақтар тағамдарды кезең-кезеңмен дайындау туралы біле алады және әр аспаз мен оның командасының кәсіби шеберлігіне сүйсінеді.', 'Acquaintance with tastes begins with a glance, and for this, the designers have developed the concept of an open kitchen. Thus, guests can learn about the step-by-step preparation of dishes and admire the professional skills of each chef and his team.', 'halls/BH53zKwS03V5ovnD2OLs7q8GrhLU5ROEkcFWcE6C.jpg', 'study2.jpg', '2021-08-12 11:27:31', '2021-08-12 11:31:16');
INSERT INTO `halls` VALUES (5, 3, 'Кулинарная студия #3', 'Аспаздық студия #3', 'Culinary studio #3', 'Знакомство со вкусами начинается со взгляда и для этого дизайнеры разработали концепцию открытой кухни. Таким образом гости могут узнать поэтапное приготовление блюд и восхититься профессиональным мастерством каждого шеф-повара и его команды.', 'Дәммен танысу бір қарағанда басталады, және бұл үшін дизайнерлер ашық ас үйдің тұжырымдамасын жасады. Осылайша, қонақтар тағамдарды кезең-кезеңмен дайындау туралы біле алады және әр аспаз мен оның командасының кәсіби шеберлігіне сүйсінеді.', 'Acquaintance with tastes begins with a glance, and for this, the designers have developed the concept of an open kitchen. Thus, guests can learn about the step-by-step preparation of dishes and admire the professional skills of each chef and his team.', 'halls/dr68hS6F726kj3LGDbIDj23qg56fsf2po6qbB1xi.jpg', 'study3.jpg', '2021-08-12 11:27:31', '2021-08-12 11:31:03');

-- ----------------------------
-- Table structure for homes
-- ----------------------------
DROP TABLE IF EXISTS `homes`;
CREATE TABLE `homes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `intro_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `intro_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `intro_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homes
-- ----------------------------
INSERT INTO `homes` VALUES (1, '<div class=\"main__title\"><span class=\"\">VOKZAL</span>&nbsp;<br />gastrobar</div>\r\n<div class=\"main__text\">\r\n<div class=\"main__text--inner\">\r\n<p>Гастробар VOKZAL &ndash; новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее собой большое разнообразие гастрономических вкусов. Уникальность данного проекта заключается в гармоничном объединении 4 авторских кухонь и 5 баров с развернутой барной картой.</p>\r\n<p>Гости и жители города могут отведать авторское исполнение грузинской кухни, паназиатской кухни, европейской кухни, а также уже зарекомендовавшие себя бургеры Black Panther Burger, и стейки премиального качества. Для достоверной подачи блюд каждой культуры были приглашены четыре шеф-повара и лучшие специалисты Казахстана, России и Грузии.</p>\r\n<p>Знакомство со вкусами начинается со взгляда и для этого дизайнеры разработали концепцию открытой кухни. Таким образом гости могут узнать поэтапное приготовление блюд и восхититься профессиональным мастерством каждого шеф-повара и его команды. Стоит только намекнуть об этом менеджеру зала и вы займете удобное и комфортное место у любой из открытых зон.</p>\r\n</div>\r\n</div>', '<div class=\"main__title\"><span class=\"\">VOKZAL</span>&nbsp;<br />gastrobar</div>\r\n<div class=\"main__text\">\r\n<div class=\"main__text--inner\">\r\n<p>Gastrobar VOKZAL &ndash; a new direction on the map of the oil capital, covering an area of ​​1800 m2 and representing a wide variety of gastronomic tastes. The uniqueness of this project lies in the harmonious combination of 4 author\'s kitchens and 5 bars with an expanded bar card.</p>\r\n<p>Guests and residents of the city can taste the author\'s performance of Georgian cuisine, Pan-Asian cuisine, European cuisine, as well as the already proven Black Panther Burger burgers, and premium quality steaks. Four chefs and the best specialists from Kazakhstan, Russia and Georgia were invited to faithfully serve dishes of each culture.</p>\r\n<p>Acquaintance with tastes begins with a glance, and for this, the designers have developed the concept of an open kitchen. Thus, guests can learn about the step-by-step preparation of dishes and admire the professional skills of each chef and his team. One has only to hint about this to the manager of the hall and you will take a convenient and comfortable place near any of the open areas.</p>\r\n</div>\r\n</div>', '<div class=\"main__title\"><span class=\"\">VOKZAL</span>&nbsp;<br />gastrobar</div>\r\n<div class=\"main__text\">\r\n<div class=\"main__text--inner\">\r\n<p>VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және гастрономиялық талғамдардың алуан түрін көрсететін мұнай астанасы картасындағы жаңа бағыт. Бұл жобаның бірегейлігі 4 авторлық ас үй мен 5 бардың кеңейтілген баркартамен үйлесімді үйлесімінде.</p>\r\n<p>Қала қонақтары мен тұрғындары грузин тағамдарының, паназиялық тағамдардың, еуропалық тағамдардың, сондай-ақ қазірдің өзінде дәлелденген Black Panther Burger гамбургерлерінің авторлық қойылымынан дәм тата алады. жоғары сапалы стейктер. Әр мәдениеттің тағамдарына адал қызмет етуге Қазақстаннан, Ресейден және Грузиядан төрт аспазшы мен үздік мамандар шақырылды.</p>\r\n<p>Дәммен танысу бір қарағанда басталады, және бұл үшін дизайнерлер ашық ас үй туралы тұжырымдама жасады. Осылайша Қонақтар қадамдық пісіру туралы біліп, тамашалай алады әрбір аспазшы мен оның командасының кәсіби дағдылары. Бұл туралы залдың менеджеріне айту керек, сонда сіз оны қабылдайсыз кез келген ашық алаңның жанында ыңғайлы және жайлы орын.</p>\r\n</div>\r\n</div>', 'home/mgFe0O4nyULgwhK2LpzvLlidGxaR854fAxMjULBA.jpg', 'facade.jpg', '2021-08-13 08:53:02', '2021-08-13 03:18:34');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (2, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (3, '2021_08_07_162751_create_categories_table', 2);
INSERT INTO `migrations` VALUES (5, '2021_08_08_175944_create_bars_table', 3);
INSERT INTO `migrations` VALUES (6, '2021_08_10_115315_create_continents_table', 4);
INSERT INTO `migrations` VALUES (7, '2021_08_10_181213_create_vips_table', 5);
INSERT INTO `migrations` VALUES (10, '2021_08_10_183540_create_teams_table', 6);
INSERT INTO `migrations` VALUES (16, '2021_08_11_064327_create_days_table', 7);
INSERT INTO `migrations` VALUES (21, '2021_08_11_064548_create_contacts_table', 8);
INSERT INTO `migrations` VALUES (22, '2021_08_11_172917_create_abouts_table', 9);
INSERT INTO `migrations` VALUES (23, '2021_08_12_051314_create_children_table', 10);
INSERT INTO `migrations` VALUES (26, '2021_08_12_093953_create_type_halls_table', 11);
INSERT INTO `migrations` VALUES (27, '2021_08_12_094014_create_halls_table', 11);
INSERT INTO `migrations` VALUES (28, '2021_08_12_094026_create_features_table', 11);
INSERT INTO `migrations` VALUES (30, '2021_08_12_160908_alter_table_children', 12);
INSERT INTO `migrations` VALUES (31, '2021_08_12_163535_create_studios_table', 13);
INSERT INTO `migrations` VALUES (33, '2021_08_13_023558_create_homes_table', 14);
INSERT INTO `migrations` VALUES (34, '2021_08_13_034147_create_galleries_table', 15);
INSERT INTO `migrations` VALUES (35, '2021_08_13_074639_create_news_table', 16);
INSERT INTO `migrations` VALUES (37, '2021_08_13_163336_alter_table_contacts', 17);
INSERT INTO `migrations` VALUES (39, '2021_08_14_052037_create_deliveries_table', 18);
INSERT INTO `migrations` VALUES (40, '2021_08_14_064331_create_assortments_table', 19);
INSERT INTO `migrations` VALUES (51, '2021_08_14_192332_create_assortment_continent_table', 20);
INSERT INTO `migrations` VALUES (52, '2021_08_14_192651_create_dishes_table', 20);
INSERT INTO `migrations` VALUES (77, '2021_08_15_181208_create_orders_table', 21);
INSERT INTO `migrations` VALUES (78, '2021_08_15_181218_create_dish_order_table', 21);
INSERT INTO `migrations` VALUES (79, '2021_08_26_143100_alter_table_vips', 22);
INSERT INTO `migrations` VALUES (80, '2021_08_30_085803_create_photos_table', 23);
INSERT INTO `migrations` VALUES (81, '2021_08_30_112125_create_translates_table', 24);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_public` date NOT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_in` date NULL DEFAULT NULL,
  `time_in` time(0) NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `step` tinyint(4) NOT NULL DEFAULT 1,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `corp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `flat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pay` tinyint(4) NULL DEFAULT NULL,
  `total` double NOT NULL DEFAULT 0,
  `check` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (2, '2021-08-24', '22:13:00', 1, 3, 'Иван', 'Иванович', '+7 888 888 88 88', 'Атырау', 'Авиационная', '7', NULL, '15', 1, 2440, 1, '2021-08-24 16:06:45', '2021-08-24 17:19:48');
INSERT INTO `orders` VALUES (3, '2021-08-24', '22:29:00', 1, 3, 'Игорь', 'Сергеев', '+7 777 777 77 77', 'Атырау', 'Карпова', '9', NULL, '11', 2, 1500, 0, '2021-08-24 16:29:11', '2021-08-24 16:29:33');
INSERT INTO `orders` VALUES (4, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-08-24 17:49:45', '2021-08-24 17:49:45');
INSERT INTO `orders` VALUES (5, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-08-25 18:19:46', '2021-08-25 18:19:46');
INSERT INTO `orders` VALUES (6, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-08-28 09:14:27', '2021-08-28 09:14:27');
INSERT INTO `orders` VALUES (7, '2021-08-29', '21:52:00', 1, 3, 'Сидоров', 'Петр', '+7 232 323 23 23', 'Атырау', 'Комарова', '10', NULL, '12', 2, 2440, 0, '2021-08-29 15:23:04', '2021-08-29 15:52:58');
INSERT INTO `orders` VALUES (8, NULL, NULL, 0, 3, 'Быстряков', 'Иван', '+7 123 131 23 12', 'Атырау', 'Кома', '11', NULL, '11', NULL, 0, 0, '2021-08-29 15:53:47', '2021-08-29 15:54:17');
INSERT INTO `orders` VALUES (9, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-08-29 15:55:36', '2021-08-29 15:55:36');

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vip_id` int(11) NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of photos
-- ----------------------------
INSERT INTO `photos` VALUES (1, 1, 'photos/gVdiRRKJK7T88286SUNpMXXy0TXdf3cUck7BHQYq.jpg', 'cabine1.jpg', '2021-08-30 09:58:32', '2021-08-30 09:58:32');
INSERT INTO `photos` VALUES (2, 1, 'photos/plmmfejPH3ADF18HjquFoWAG8OHVvKOGWKByErbA.jpg', 'cabine1.jpg', '2021-08-30 09:59:22', '2021-08-30 09:59:56');
INSERT INTO `photos` VALUES (3, 1, 'photos/0h2nq7NMyISgw9SoUuQ4hCCDkPGdYhLzoq3BJPpu.jpg', 'cabine1.jpg', '2021-08-30 09:59:30', '2021-08-30 10:00:02');
INSERT INTO `photos` VALUES (4, 1, 'photos/FPEwRBfWFAhUDRBs7yiJ7rGYQMPa5TYb6eyTzF3R.jpg', 'cabine1.jpg', '2021-08-30 09:59:34', '2021-08-30 09:59:39');
INSERT INTO `photos` VALUES (5, 2, 'photos/hFlQelXblVvWeUSXrsnO0ktQs3aIvi8Khx2gnCaq.jpg', 'cabine2.jpg', '2021-08-30 09:59:50', '2021-08-30 09:59:50');
INSERT INTO `photos` VALUES (6, 2, 'photos/EIqqpbe0axvSUGpsv07PIQmBBoWktKYLh7UPBDZd.jpg', 'cabine2.jpg', '2021-08-30 10:00:11', '2021-08-30 10:00:11');
INSERT INTO `photos` VALUES (7, 2, 'photos/v1uPGdiBDNeFKqWKd8P9reXiyYgbN0OWblMEpGpg.jpg', 'cabine2.jpg', '2021-08-30 10:00:18', '2021-08-30 10:00:18');
INSERT INTO `photos` VALUES (8, 2, 'photos/uzsHAjjnTUUTKgXQdPiCTQ81OdZ2Hlv44A9yaEFP.jpg', 'cabine2.jpg', '2021-08-30 10:00:23', '2021-08-30 10:00:23');
INSERT INTO `photos` VALUES (9, 3, 'photos/BXMLqJLgwq7OTG46hS9LhYDaI6m0FHxsTD9LjMqs.jpg', 'cabine3.jpg', '2021-08-30 10:00:29', '2021-08-30 10:00:29');
INSERT INTO `photos` VALUES (10, 3, 'photos/XXzcx08z6qByInJa1z2zCXyGeKRt2miIXFtkiVJZ.jpg', 'cabine3.jpg', '2021-08-30 10:00:36', '2021-08-30 10:00:36');
INSERT INTO `photos` VALUES (11, 3, 'photos/ybM9jvNf2cJucBMLvH1V1wlDk6tGX5FMKlXCP2iw.jpg', 'cabine3.jpg', '2021-08-30 10:00:43', '2021-08-30 10:00:43');
INSERT INTO `photos` VALUES (12, 3, 'photos/5VlWvFIOy1LI4K5q0XT17xDM2xhqSW0kfudK9Rd5.jpg', 'cabine3.jpg', '2021-08-30 10:00:50', '2021-08-30 10:00:50');
INSERT INTO `photos` VALUES (13, 4, 'photos/a4kcByupJVY9N2B2LOiyCWrvDR001SFQkXzUZWsc.jpg', 'cabine4.jpg', '2021-08-30 10:00:57', '2021-08-30 10:00:57');
INSERT INTO `photos` VALUES (14, 4, 'photos/gFTAJhLM4uitm54RsYftuTJC5BcuWyttZOqoTYFA.jpg', 'cabine4.jpg', '2021-08-30 10:01:04', '2021-08-30 10:01:04');
INSERT INTO `photos` VALUES (15, 4, 'photos/a2zwCHOSKlLXVJerOX0lBfCFuh5sYBY85VAfX11F.jpg', 'cabine4.jpg', '2021-08-30 10:01:10', '2021-08-30 10:01:10');
INSERT INTO `photos` VALUES (17, 4, 'photos/7QKUCulz7rT4xYFi9fVJhuXFtJyAmgY4FaZcJ5Y0.jpg', 'cabine4.jpg', '2021-08-30 10:01:52', '2021-08-30 10:01:52');

-- ----------------------------
-- Table structure for studios
-- ----------------------------
DROP TABLE IF EXISTS `studios`;
CREATE TABLE `studios`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `intro_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of studios
-- ----------------------------
INSERT INTO `studios` VALUES (1, 4, '<p>Гастробар VOKZAL &ndash; новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее собой большое разнообразие гастрономических вкусов. Уникальность данного проекта заключается в гармоничном объединении. Гастробар VOKZAL &ndash; новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее.</p>\r\n<p class=\"mt-3\">Гастробар VOKZAL &ndash; новое направление на карте нефтяной столицы, занимающее площадь 1800 м2 и представляющее. Уникальность данного проекта заключается в гармоничном объединении.</p>', '<p>VOKZAL gastrobar is a new direction on the map of the oil capital, covering an area of ​​1800 m2 and showing a variety of gastronomic tastes. The uniqueness of this project lies in the harmonious combination. VOKZAL gastrobar is a new route on the map of the oil capital, which occupies and represents an area of ​​1800 m2.</p>\r\n<p class=\"mt-3\">VOKZAL gastrobar is a new route on the map of the oil capital, which occupies and represents an area of ​​1800 m2. The uniqueness of this project lies in the harmonious combination.</p>', '<p>VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және гастрономиялық талғамдардың алуан түрін көрсететін мұнай астанасы картасындағы жаңа бағыт. Бұл жобаның бірегейлігі үйлесімді комбинацияда. VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және ұсынатын мұнай астанасының картасындағы жаңа бағыт.</p>\r\n<p class=\"mt-3\">VOKZAL gastrobar - бұл 1800 м2 аумақты алып жатқан және ұсынатын мұнай астанасының картасындағы жаңа бағыт. Бұл жобаның бірегейлігі үйлесімді комбинацияда.</p>', '<p>Знакомство со вкусами начинается со взгляда и для этого дизайнеры разработали концепцию открытой кухни. Таким образом гости могут узнать поэтапное приготовление блюд и восхититься профессиональным мастерством каждого шеф-повара и его команды. Стоит только намекнуть об этом менеджеру зала и вы займете удобное и комфортное место у любой из открытых зон. Знакомство со вкусами начинается со взгляда и для этого дизайнеры разработали концепцию открытой кухни. Таким образом гости могут узнать поэтапное приготовление блюд и восхититься профессиональным мастерством каждого шеф-повара и его команды. Стоит только намекнуть об этом менеджеру зала и вы займете удобное и комфортное место у любой из открытых зон.</p>\r\n<p class=\"mt-3\">Знакомство со вкусами начинается со взгляда и для этого дизайнеры разработали концепцию открытой кухни. Таким образом гости могут узнать поэтапное приготовление блюд и восхититься профессиональным мастерством каждого шеф-повара и его команды. Стоит только намекнуть об этом менеджеру зала и вы займете удобное и комфортное место у любой из открытых зон.</p>', '<p>Getting to know the taste begins at first glance, and for this the designers have created the concept of an open kitchen. In this way, guests can learn how to cook dishes step by step and admire the professionalism of each chef and his team. Just tell the manager of the hall, and you will have a comfortable and cozy place near any open space. Getting to know the taste begins at first glance, and for this the designers have created the concept of an open kitchen. In this way, guests can learn how to cook dishes step by step and admire the professionalism of each chef and his team. Just tell the manager of the hall, and you will have a comfortable and cozy place near any open space.</p>\r\n<p class=\"mt-3\">Getting to know the taste begins at first glance, and for this the designers have created the concept of an open kitchen. In this way, guests can learn how to cook dishes step by step and admire the professionalism of each chef and his team. Just tell the manager of the hall, and you will have a comfortable and cozy place near any open space.</p>', '<p>Дәммен танысу бір қарағанда басталады, және бұл үшін дизайнерлер ашық ас үйдің тұжырымдамасын жасады. Осылайша, қонақтар тағамдарды кезең-кезеңмен дайындау туралы біле алады және әр аспаз мен оның командасының кәсіби шеберлігіне сүйсінеді. Бұл туралы залдың менеджеріне ғана айту керек, сонда сіз кез келген ашық алаңның жанында ыңғайлы әрі жайлы орынға ие боласыз. Дәммен танысу бір қарағанда басталады, және бұл үшін дизайнерлер ашық ас үйдің тұжырымдамасын жасады. Осылайша, қонақтар тағамдарды кезең-кезеңмен дайындау туралы біле алады және әр аспаз мен оның командасының кәсіби шеберлігіне сүйсінеді. Бұл туралы залдың менеджеріне ғана айту керек, сонда сіз кез келген ашық алаңның жанында ыңғайлы әрі жайлы орынға ие боласыз.</p>\r\n<p class=\"mt-3\">Дәммен танысу бір қарағанда басталады, және бұл үшін дизайнерлер ашық ас үйдің тұжырымдамасын жасады. Осылайша, қонақтар тағамдарды кезең-кезеңмен дайындау туралы біле алады және әр аспаз мен оның командасының кәсіби шеберлігіне сүйсінеді. Бұл туралы залдың менеджеріне ғана айту керек, сонда сіз кез келген ашық алаңның жанында ыңғайлы әрі жайлы орынға ие боласыз.</p>', 'studios/TGYrHVvp7l0EjZ7KYQP2LAkNJwwNklANsAH3uxSl.jpg', 'study-img.jpg', NULL, '2021-08-12 17:09:26');

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teams
-- ----------------------------
INSERT INTO `teams` VALUES (6, 9, 'Теймураз Тагвиашвили', 'Теймураз Тагвиашвили', 'Teimuraz Tagviashvili', 'Шеф-повар грузинской кухни гастробара VOKZAL, владелец и бренд-шеф ресторана  грузинской кухни «Shavlego», шеф-повар координатор сети ресторанов «Дареджани» и Georgian reastaurant by Parmogiano Group.', 'VOKZAL gastrobar-да грузин тағамдарының аспазшысы, шавлего грузин тағамдары мейрамханасының иесі және бренд-аспазшысы, Дарежани мейрамханалар желісінің аспаз үйлестірушісі және Parmogiano Group грузин рестораны.', 'Georgian cuisine at VOKZAL gastrobar, owner and brand chef of Shavlego Georgian cuisine restaurant, chef coordinator of Darejani restaurant chain and Georgian restaurant Parmogiano Group.', 'teams/9yHH379t9vjNt7cB0gBTFlZcxBmIbRgIQRkmeprk.jpg', 'team1.jpg', '2021-08-10 19:04:43', '2021-08-29 14:16:31');

-- ----------------------------
-- Table structure for translates
-- ----------------------------
DROP TABLE IF EXISTS `translates`;
CREATE TABLE `translates`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of translates
-- ----------------------------
INSERT INTO `translates` VALUES (1, 'ourc', 'Наши контакты', 'Біздің байланыстар', 'Our contacts', 'Наши контакты', NULL, '2021-08-30 15:04:55');
INSERT INTO `translates` VALUES (2, 'news', 'Новости', 'Жаңалықтар', 'News', 'Новости', '2021-08-30 16:19:08', '2021-08-30 16:20:59');
INSERT INTO `translates` VALUES (3, 'profile', 'Профиль', 'Профиль', 'Profile', 'Профиль', '2021-08-30 16:21:57', '2021-08-30 16:21:57');
INSERT INTO `translates` VALUES (4, 'admin', 'Админ-панель', 'Әкімші тақтасы', 'Admin panel', 'Админ-панель', '2021-08-30 16:23:34', '2021-08-30 16:23:34');
INSERT INTO `translates` VALUES (5, 'see', 'Посмотреть сайт', 'Сайтты қарау', 'View site', 'Посмотреть сайт', '2021-08-30 16:25:15', '2021-08-30 16:25:15');
INSERT INTO `translates` VALUES (6, 'exit', 'Выйти', 'Шығу', 'Log off', 'Выйти', '2021-08-30 16:25:57', '2021-08-30 16:25:57');
INSERT INTO `translates` VALUES (7, 'rights', 'Все права защищены', 'Барлық құқықтар сақталған', 'All rights reserved', 'Все права защищены', '2021-08-30 16:26:56', '2021-08-30 16:26:56');
INSERT INTO `translates` VALUES (8, 'ch_room', 'Детский зал', 'Балалар залы', 'Children\'s hall', 'Детский зал', '2021-08-30 16:28:20', '2021-08-30 16:28:20');
INSERT INTO `translates` VALUES (9, 'app', 'Гастробар Vokzal', 'Гастробар Vokzal', 'Gastrobar Vokzal', 'Гастробар Vokzal', '2021-08-30 16:31:27', '2021-08-30 16:31:27');
INSERT INTO `translates` VALUES (10, 'fd_room', 'Кулинарная студия', 'Аспаздық студия', 'Culinary studio', 'Кулинарная студия', '2021-08-30 16:32:27', '2021-08-30 16:32:27');
INSERT INTO `translates` VALUES (11, 'halls', 'Залы', 'Залдар', 'Halls', 'Залы', '2021-08-30 16:33:47', '2021-08-30 16:33:47');
INSERT INTO `translates` VALUES (12, 'type_halls', 'Типы залов', 'Зал түрлері', 'Hall types', 'Типы залов', '2021-08-30 16:35:13', '2021-08-30 16:35:13');
INSERT INTO `translates` VALUES (13, 'site', 'Сайт', 'Сайт', 'Site', 'Сайт', '2021-08-30 16:35:57', '2021-08-30 16:35:57');
INSERT INTO `translates` VALUES (14, 'bar', 'Бар', 'Бар', 'Bar', 'Бар', '2021-08-30 16:36:28', '2021-08-30 16:36:28');
INSERT INTO `translates` VALUES (15, 'cabins', 'Кабины', 'Кабиналар', 'Cabins', 'Кабины', '2021-08-30 16:37:36', '2021-08-30 16:37:36');
INSERT INTO `translates` VALUES (16, 'translates', 'Переводы', 'Аудармалар', 'Translations', 'Переводы', '2021-08-30 16:38:18', '2021-08-30 16:38:18');
INSERT INTO `translates` VALUES (17, 'home', 'Главная', 'Yй', 'Home', 'Главная', '2021-08-30 16:39:07', '2021-08-30 16:39:07');
INSERT INTO `translates` VALUES (18, 'categories', 'Категории', 'Санаттар', 'Categories', 'Категории', '2021-08-30 16:40:37', '2021-08-30 16:40:37');
INSERT INTO `translates` VALUES (19, 'pages', 'Страницы', 'Беттер', 'Pages', 'Страницы', '2021-08-30 16:41:42', '2021-08-30 16:41:42');
INSERT INTO `translates` VALUES (20, 'sections', 'Разделы', 'Бөлімдер', 'Sections', 'Разделы', '2021-08-30 16:42:10', '2021-08-30 16:42:10');
INSERT INTO `translates` VALUES (21, 'orders', 'Заказы', 'Тапсырыстар', 'Orders', 'Заказы', '2021-08-30 16:42:47', '2021-08-30 16:42:47');
INSERT INTO `translates` VALUES (22, 'features', 'Особенности', 'Ерекшеліктер', 'Features', 'Особенности', '2021-08-30 16:43:33', '2021-08-30 16:43:33');
INSERT INTO `translates` VALUES (23, 'galleries', 'Галерея', 'Галерея', 'Gallery', 'Галерея', '2021-08-30 16:44:19', '2021-08-30 16:44:19');
INSERT INTO `translates` VALUES (24, 'bars', 'Бары', 'Барлар', 'Bars', 'Бары', '2021-08-30 16:44:55', '2021-08-30 16:44:55');
INSERT INTO `translates` VALUES (25, 'kitchens', 'Кухни', 'Ас үй', 'Kitchens', 'Кухни', '2021-08-30 16:45:28', '2021-08-30 16:45:28');
INSERT INTO `translates` VALUES (26, 'cat_menu', 'Категории меню', 'Мәзір санаттары', 'Menu categories', 'Категории меню', '2021-08-30 16:46:23', '2021-08-30 16:46:23');
INSERT INTO `translates` VALUES (27, 'dish', 'Блюдо', 'Ыдыс', 'Dish', 'Блюдо', '2021-08-30 16:46:56', '2021-08-30 16:46:56');
INSERT INTO `translates` VALUES (28, 'dishes', 'Блюда', 'Ыдыс -аяқ', 'Dishes', 'Блюда', '2021-08-30 16:47:29', '2021-08-30 16:47:29');
INSERT INTO `translates` VALUES (29, 'kitchen', 'Кухня', 'Ас үй', 'Kitchen', 'Кухня', '2021-08-30 16:48:09', '2021-08-30 16:48:09');
INSERT INTO `translates` VALUES (30, 'select_kitchen', 'Выберите кухню', 'Асүйді таңдаңыз', 'Choose a kitchen', 'Выберите кухню', '2021-08-30 16:48:51', '2021-08-30 16:48:51');
INSERT INTO `translates` VALUES (31, 'select_cat', 'Выберите категорию', 'Санатты таңдаңыз', 'Select a category', 'Выберите категорию', '2021-08-30 16:49:39', '2021-08-30 16:49:39');
INSERT INTO `translates` VALUES (32, 'select_cabin', 'Выберите кабину', 'Кабинаны таңдаңыз', 'Select a cab', 'Выберите кабину', '2021-08-30 16:50:23', '2021-08-30 16:50:23');
INSERT INTO `translates` VALUES (33, 'compound', 'Состав', 'Құрамы', 'Compound', 'Состав', '2021-08-30 16:51:06', '2021-08-30 16:51:06');
INSERT INTO `translates` VALUES (34, 'price', 'Цена', 'Бағасы', 'Price', 'Цена', '2021-08-30 16:52:35', '2021-08-30 16:52:35');
INSERT INTO `translates` VALUES (35, 'page', 'Страница', 'Бет', 'Page', 'Страница', '2021-08-30 16:53:28', '2021-08-30 16:53:28');
INSERT INTO `translates` VALUES (36, 'category', 'Категория', 'Санат', 'Category', 'Категория', '2021-08-30 16:53:55', '2021-08-30 16:53:55');
INSERT INTO `translates` VALUES (37, 'section', 'Раздел', 'Бөлім', 'Chapter', 'Раздел', '2021-08-30 16:55:40', '2021-08-30 16:55:40');
INSERT INTO `translates` VALUES (38, 't_action', 'Действия', 'Әрекеттер', 'Actions', 'Действия', '2021-08-30 16:57:05', '2021-08-30 16:57:05');
INSERT INTO `translates` VALUES (39, 'go_to', 'Перейти', 'Бару', 'Go to', 'Перейти', '2021-08-30 16:57:54', '2021-08-30 16:57:54');
INSERT INTO `translates` VALUES (40, 't_name', 'Название', 'Название', 'Name', 'Название', '2021-08-30 16:58:44', '2021-08-30 16:58:44');
INSERT INTO `translates` VALUES (41, 't_desc', 'Описание', 'Сипаттама', 'Description', 'Описание', '2021-08-30 16:59:30', '2021-08-30 16:59:30');
INSERT INTO `translates` VALUES (42, 't_edit', 'Редактировать', 'Өңдеу', 'Edit', 'Редактировать', '2021-08-30 17:00:12', '2021-08-30 17:00:12');
INSERT INTO `translates` VALUES (43, 't_delete', 'Удалить', 'Жою', 'Delete', 'Удалить', '2021-08-30 17:01:21', '2021-08-30 17:01:21');
INSERT INTO `translates` VALUES (44, 't_chef', 'Шеф-повар', 'Басшы', 'Chef', 'Шеф-повар', '2021-08-30 17:02:12', '2021-08-30 17:02:12');
INSERT INTO `translates` VALUES (45, 'select_type', 'Выберите тип', 'Түрді таңдаңыз', 'Select type', 'Выберите тип', '2021-08-30 17:03:01', '2021-08-30 17:03:01');
INSERT INTO `translates` VALUES (46, 'select_bar', 'Выберите бар', 'Жолақты таңдаңыз', 'Choose a bar', 'Выберите бар', '2021-08-30 17:03:50', '2021-08-30 17:03:50');
INSERT INTO `translates` VALUES (47, 'type', 'Тип', 'Түрі', 'Type', 'Тип', '2021-08-30 17:04:27', '2021-08-30 17:04:27');
INSERT INTO `translates` VALUES (48, 'date_publish', 'Дата публикации', 'Жарияланған күні', 'Date of publication', 'Дата публикации', '2021-08-30 17:05:31', '2021-08-30 17:05:31');
INSERT INTO `translates` VALUES (49, 'top', 'Тема', 'Тақырып', 'Theme', 'Тема', '2021-08-30 17:06:40', '2021-08-30 17:06:40');
INSERT INTO `translates` VALUES (50, 'bg', 'Задний фон', 'Фон', 'Background', 'Задний фон', '2021-08-30 17:07:56', '2021-08-30 17:07:56');
INSERT INTO `translates` VALUES (51, 'f_info', 'Общие сведения', 'Негізгі ақпарат', 'General information', 'Общие сведения', '2021-08-30 17:08:40', '2021-08-30 17:08:40');
INSERT INTO `translates` VALUES (52, 'address', 'Адрес', 'Мекенжай', 'Address', 'Адрес', '2021-08-30 17:09:26', '2021-08-30 17:09:26');
INSERT INTO `translates` VALUES (53, 'phone', 'Телефон', 'Телефон', 'Telephone', 'Телефон', '2021-08-30 17:10:00', '2021-08-30 17:10:00');
INSERT INTO `translates` VALUES (54, 'phones', 'Телефоны', 'Телефондар', 'Phones', 'Телефоны', '2021-08-30 17:10:41', '2021-08-30 17:10:41');
INSERT INTO `translates` VALUES (55, 'ph_main', 'Основной', 'Негізгі', 'Basic', 'Основной', '2021-08-30 17:12:05', '2021-08-30 17:12:05');
INSERT INTO `translates` VALUES (56, 'ph_adm', 'Администрация', 'Әкімшілік', 'Administration', 'Администрация', '2021-08-30 17:13:45', '2021-08-30 17:13:45');
INSERT INTO `translates` VALUES (57, 'ph_ds', 'Служба доставки', 'Жеткізу қызметі', 'Delivery service', 'Служба доставки', '2021-08-30 17:15:25', '2021-08-30 17:15:25');
INSERT INTO `translates` VALUES (58, 'email', 'E-mail', 'E-mail', 'E-mail', 'E-mail', '2021-08-30 17:15:57', '2021-08-30 17:15:57');
INSERT INTO `translates` VALUES (59, 'wh', 'Время работы', 'Жұмыс уақыты', 'Working hours', 'Время работы', '2021-08-30 17:16:37', '2021-08-30 17:16:37');
INSERT INTO `translates` VALUES (60, 'start', 'Начало', 'Бастау', 'Start', 'Начало', '2021-08-30 17:17:23', '2021-08-30 17:17:23');
INSERT INTO `translates` VALUES (61, 'end', 'Конец', 'Соңы', 'End', 'Конец', '2021-08-30 17:17:56', '2021-08-30 17:17:56');
INSERT INTO `translates` VALUES (62, 'add_record', 'Создание', 'Шығармашылық', 'Creation', 'Создание', '2021-08-30 17:19:15', '2021-08-30 17:19:15');
INSERT INTO `translates` VALUES (63, 'edit_record', 'Редактирование', 'Өңдеу', 'Edit', 'Редактирование', '2021-08-30 17:19:47', '2021-08-30 17:19:47');
INSERT INTO `translates` VALUES (64, 'create', 'Новая запись', 'Жаңа жазба', 'New entry', 'Новая запись', '2021-08-30 17:20:33', '2021-08-30 17:20:33');
INSERT INTO `translates` VALUES (65, 'save', 'Сохранить', 'Сақтау', 'Save', 'Сохранить', '2021-08-30 17:21:04', '2021-08-30 17:21:04');
INSERT INTO `translates` VALUES (66, 'upload', 'Загрузить', 'Жүктеу', 'Upload', 'Загрузить', '2021-08-30 17:21:37', '2021-08-30 17:21:37');
INSERT INTO `translates` VALUES (67, 'look', 'Посмотреть', 'Қараңыз', 'Look', 'Посмотреть', '2021-08-30 17:22:20', '2021-08-30 17:22:20');
INSERT INTO `translates` VALUES (68, 'image', 'Изображение', 'Кескін', 'Image', 'Изображение', '2021-08-30 17:22:45', '2021-08-30 17:22:45');
INSERT INTO `translates` VALUES (69, 'photo', 'Фото', 'Фото', 'Photo', 'Фото', '2021-08-30 17:23:14', '2021-08-30 17:23:14');
INSERT INTO `translates` VALUES (70, 'nofile', 'Файл не выбран', 'Таңдалған файл жоқ', 'No file selected', 'Файл не выбран', '2021-08-30 17:23:51', '2021-08-30 17:23:51');
INSERT INTO `translates` VALUES (71, 'note', 'Примечание', 'Ескерту', 'Note', 'Примечание', '2021-08-30 17:24:25', '2021-08-30 17:24:25');
INSERT INTO `translates` VALUES (72, 'comment', 'Комментарий', 'Пікір', 'Comment', 'Комментарий', '2021-08-30 17:25:41', '2021-08-30 17:25:41');
INSERT INTO `translates` VALUES (73, 'intro', 'Вводный текст', 'Кіріспе мәтін', 'Introductory text', 'Вводный текст', '2021-08-30 17:26:21', '2021-08-30 17:26:21');
INSERT INTO `translates` VALUES (74, 'signature', 'Подпись', 'Қолтаңба', 'Signature', 'Подпись', '2021-08-30 17:26:55', '2021-08-30 17:26:55');
INSERT INTO `translates` VALUES (75, 'more', 'Подробнее', 'Толығырақ', 'More', 'Подробнее', '2021-08-30 17:27:27', '2021-08-30 17:27:27');
INSERT INTO `translates` VALUES (76, 'o_menu', 'Наше меню', 'Біздің мәзір', 'Our menu', 'Наше меню', '2021-08-30 17:28:04', '2021-08-30 17:28:04');
INSERT INTO `translates` VALUES (77, 'menu', 'Меню', 'Мәзір', 'Menu', 'Меню', '2021-08-30 17:28:38', '2021-08-30 17:28:38');
INSERT INTO `translates` VALUES (78, 'buy', 'Купить', 'Сатып алу', 'Buy', 'Купить', '2021-08-30 17:32:09', '2021-08-30 17:32:09');
INSERT INTO `translates` VALUES (79, 'further', 'Далее', 'Әрі қарай', 'Further', 'Далее', '2021-08-30 17:32:57', '2021-08-30 17:32:57');
INSERT INTO `translates` VALUES (80, 'back', 'Вернуться', 'Артқа', 'Back', 'Вернуться', '2021-08-30 17:33:43', '2021-08-30 17:33:43');
INSERT INTO `translates` VALUES (81, 'gtc', 'Перейти в категорию', 'Санатқа өтіңіз', 'Go to category', 'Перейти в категорию', '2021-08-30 17:35:44', '2021-08-30 17:35:44');
INSERT INTO `translates` VALUES (82, 'food_delivery', 'Доставка еды', 'Азық-түлік', 'Food delivery', 'Доставка еды', '2021-08-30 17:36:46', '2021-08-30 17:36:46');
INSERT INTO `translates` VALUES (83, 'delivery', 'Доставка', 'Жеткізу', 'Delivery', 'Доставка', '2021-08-30 17:37:17', '2021-08-30 17:37:17');
INSERT INTO `translates` VALUES (84, 'city', 'Город', 'Қала', 'City', 'Город', '2021-08-30 17:37:43', '2021-08-30 17:37:43');
INSERT INTO `translates` VALUES (85, 'address_delivery', 'Адрес доставки', 'Жеткізу мекенжайы', 'Delivery address', 'Адрес доставки', '2021-08-30 17:39:48', '2021-08-30 17:39:48');
INSERT INTO `translates` VALUES (86, 'house', 'Дом', 'Yй', 'House', 'Дом', '2021-08-30 17:40:41', '2021-08-30 17:40:41');
INSERT INTO `translates` VALUES (87, 'corp', 'Корпус', 'Корпус', 'Frame', 'Корпус', '2021-08-30 17:41:40', '2021-08-30 17:41:40');
INSERT INTO `translates` VALUES (88, 'flat', 'Квартира', 'Пәтер', 'Flat', 'Квартира', '2021-08-30 17:42:17', '2021-08-30 17:42:17');
INSERT INTO `translates` VALUES (89, 'order_in_3', 'Оформление заказа в 3 шага', 'Оформление заказа в 3 шага', 'Checkout in 3 steps', 'Оформление заказа в 3 шага', '2021-08-30 17:43:11', '2021-08-30 17:43:11');
INSERT INTO `translates` VALUES (90, 'step', 'Шаг', 'Қадам', 'Step', 'Шаг', '2021-08-30 17:44:24', '2021-08-30 17:44:24');
INSERT INTO `translates` VALUES (91, 'contact_data', 'Контактные данные', 'Байланыс мәліметтері', 'Contact information', 'Контактные данные', '2021-08-30 17:46:05', '2021-08-30 17:46:05');
INSERT INTO `translates` VALUES (92, 'first_name', 'Имя', 'Аты', 'First name', 'Имя', '2021-08-30 17:47:13', '2021-08-30 17:47:13');
INSERT INTO `translates` VALUES (93, 'last_name', 'Фамилия', 'Тегі', 'Last name', 'Фамилия', '2021-08-30 17:47:51', '2021-08-30 17:47:51');
INSERT INTO `translates` VALUES (94, 'pay', 'Оплата', 'Төлем', 'Payment', 'Оплата', '2021-08-30 17:48:26', '2021-08-30 17:48:26');
INSERT INTO `translates` VALUES (95, 'credit', 'Онлайн оплата картой', 'Карта арқылы онлайн төлем', 'Online payment by card', 'Онлайн оплата картой', '2021-08-30 17:49:10', '2021-08-30 17:49:10');
INSERT INTO `translates` VALUES (96, 'cash', 'Наличными', 'Ақшалай түрде', 'Cash', 'Наличными', '2021-08-30 17:49:38', '2021-08-30 17:49:38');
INSERT INTO `translates` VALUES (97, 'cart_count', 'В вашей корзине', 'Сіздің арбаңызда', 'In your cart', 'В вашей корзине', '2021-08-30 17:50:40', '2021-08-30 17:50:40');
INSERT INTO `translates` VALUES (98, 'items', 'товаров', 'тауарлар', 'goods', 'товаров', '2021-08-30 17:51:16', '2021-08-30 17:51:16');
INSERT INTO `translates` VALUES (99, 'cart_empty', 'Ваша корзина пуста', 'Cебетіңіз бос', 'Your basket is empty', 'Ваша корзина пуста', '2021-08-30 17:52:05', '2021-08-30 17:52:05');
INSERT INTO `translates` VALUES (100, 'sum', 'Итого', 'Барлығы', 'Total', 'Итого', '2021-08-30 17:52:43', '2021-08-30 17:52:43');
INSERT INTO `translates` VALUES (101, 'total', 'Общая сумма', 'Жалпы сома', 'Total amount', 'Общая сумма', '2021-08-30 17:53:21', '2021-08-30 17:53:21');
INSERT INTO `translates` VALUES (102, 'to_pay', 'К оплате', 'К оплате', 'To pay', 'К оплате', '2021-08-30 17:54:06', '2021-08-30 17:54:06');
INSERT INTO `translates` VALUES (103, 'input_phone', 'Введите номер телефона', 'Телефон нөміріңізді енгізіңіз', 'Enter your phone number', 'Введите номер телефона', '2021-08-30 17:54:49', '2021-08-30 17:54:49');
INSERT INTO `translates` VALUES (104, 'atyrau', 'Атырау', 'Атырау', 'Atyrau', 'Атырау', '2021-08-30 17:55:18', '2021-08-30 17:55:18');
INSERT INTO `translates` VALUES (105, 'fn_hint', 'Иван', 'Иван', 'Иван', 'Иван', '2021-08-30 17:57:29', '2021-08-30 17:57:29');
INSERT INTO `translates` VALUES (106, 'ln_hint', 'Иванов', 'Иванов', 'Иванов', 'Иванов', '2021-08-30 17:57:50', '2021-08-30 17:57:50');
INSERT INTO `translates` VALUES (107, 'order_in', 'Оформление заказа', 'Тапсырысты қабылдау', 'Checkout', 'Оформление заказа', '2021-08-30 18:01:41', '2021-08-30 18:01:41');
INSERT INTO `translates` VALUES (108, 'order_more', 'Детали заказа', 'Тапсырыс мәліметтері', 'Order details', 'Детали заказа', '2021-08-30 18:02:31', '2021-08-30 18:02:31');
INSERT INTO `translates` VALUES (109, 'order_time', 'Дата и время', 'Күн мен уақыт', 'Date and time', 'Дата и время', '2021-08-30 18:03:09', '2021-08-30 18:03:09');
INSERT INTO `translates` VALUES (110, 'customer', 'Клиент', 'Тұтынушы', 'Customer', 'Клиент', '2021-08-30 18:04:01', '2021-08-30 18:04:29');
INSERT INTO `translates` VALUES (111, 'order_list', 'Состав заказа', 'Тапсырыс тізімі', 'Order list', 'Состав заказа', '2021-08-30 18:05:13', '2021-08-30 18:05:13');
INSERT INTO `translates` VALUES (112, 'order_check', 'Статус оплаты', 'Төлем жағдайы', 'Payment State', 'Статус оплаты', '2021-08-30 18:05:54', '2021-08-30 18:05:54');
INSERT INTO `translates` VALUES (113, 'count', 'Количество', 'Саны', 'Quantity', 'Количество', '2021-08-30 18:06:33', '2021-08-30 18:06:33');
INSERT INTO `translates` VALUES (114, 'order_card', 'Картой', 'Картой', 'By card', 'Картой', '2021-08-30 18:07:12', '2021-08-30 18:07:12');
INSERT INTO `translates` VALUES (115, 'order_cash', 'Наличными', 'Ақшалай түрде', 'In cash', 'Наличными', '2021-08-30 18:07:56', '2021-08-30 18:07:56');
INSERT INTO `translates` VALUES (116, 'order_code', 'Номер', 'Сан', 'Code', 'Номер', '2021-08-30 18:08:35', '2021-08-30 18:08:35');
INSERT INTO `translates` VALUES (117, 'state', 'Статус', 'Күй', 'Status', 'Статус', '2021-08-30 18:09:07', '2021-08-30 18:09:07');

-- ----------------------------
-- Table structure for type_halls
-- ----------------------------
DROP TABLE IF EXISTS `type_halls`;
CREATE TABLE `type_halls`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_halls
-- ----------------------------
INSERT INTO `type_halls` VALUES (2, 'Детский зал', 'Балалар залы', 'Children\'s hall', '2021-08-12 10:10:18', '2021-08-12 11:22:16');
INSERT INTO `type_halls` VALUES (3, 'Кулинарная студия', 'Аспаздық студия', 'Culinary studio', '2021-08-12 10:10:55', '2021-08-12 10:10:55');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin@admin.com', NULL, '$2y$10$Drl48DBHpbOTaAP/vvOZSeMERpnMpsiKCrcyTwg0WOS.aLSAgGpYm', NULL, '2021-08-02 18:43:03', '2021-08-11 18:10:43');

-- ----------------------------
-- Table structure for vips
-- ----------------------------
DROP TABLE IF EXISTS `vips`;
CREATE TABLE `vips`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `desc_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `desc_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `desc_kk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vips
-- ----------------------------
INSERT INTO `vips` VALUES (1, 'Париж', 'Париж', 'Paris', 'vips/cdttIJYEVdNO2dSGHBWiGiJ66tDpUW0CBhCMtNRl.jpg', 'vip1.jpg', '2021-08-10 18:23:58', '2021-08-30 08:48:34', 'Просторные караоке залы , оформлены в классическом стиле,которые помимо эстетической ценности несут в себе ценность акустическую, прекрасно поглощая звук, предотвращая его искажения и обеспечивая максимальный комфорт для исполнителяv', 'Просторные караоке залы , оформлены в классическом стиле,которые помимо эстетической ценности несут в себе ценность акустическую, прекрасно поглощая звук, предотвращая его искажения и обеспечивая максимальный комфорт для исполнителя', 'Просторные караоке залы , оформлены в классическом стиле,которые помимо эстетической ценности несут в себе ценность акустическую, прекрасно поглощая звук, предотвращая его искажения и обеспечивая максимальный комфорт для исполнителя');
INSERT INTO `vips` VALUES (2, 'АК Сити', 'АК қаласы', 'AK City', 'vips/QeEkngUS38CIIVJrSrXsNANxiPj42oiTdrQcsMrt.jpg', 'vip2.jpg', '2021-08-10 18:27:09', '2021-08-30 08:48:40', 'Просторные караоке залы , оформлены в классическом стиле,которые помимо эстетической ценности несут в себе ценность акустическую, прекрасно поглощая звук, предотвращая его искажения и обеспечивая максимальный комфорт для исполнителя', 'Просторные караоке залы , оформлены в классическом стиле,которые помимо эстетической ценности несут в себе ценность акустическую, прекрасно поглощая звук, предотвращая его искажения и обеспечивая максимальный комфорт для исполнителя', 'Просторные караоке залы , оформлены в классическом стиле,которые помимо эстетической ценности несут в себе ценность акустическую, прекрасно поглощая звук, предотвращая его искажения и обеспечивая максимальный комфорт для исполнителя');
INSERT INTO `vips` VALUES (3, 'Нью Йорк', 'Нью Йорк', 'New York', 'vips/15VC4TNrhfhg2dGQSbpFD9x0GMvtnN9RzjFpJymW.jpg', 'vip3.jpg', '2021-08-10 18:27:29', '2021-08-30 08:48:45', 'Просторные караоке залы , оформлены в классическом стиле,которые помимо эстетической ценности несут в себе ценность акустическую, прекрасно поглощая звук, предотвращая его искажения и обеспечивая максимальный комфорт для исполнителя', 'Просторные караоке залы , оформлены в классическом стиле,которые помимо эстетической ценности несут в себе ценность акустическую, прекрасно поглощая звук, предотвращая его искажения и обеспечивая максимальный комфорт для исполнителя', 'Просторные караоке залы , оформлены в классическом стиле,которые помимо эстетической ценности несут в себе ценность акустическую, прекрасно поглощая звук, предотвращая его искажения и обеспечивая максимальный комфорт для исполнителя');
INSERT INTO `vips` VALUES (4, 'Оксфорд', 'Оксфорд', 'Oxford', 'vips/2la3Dvf1iBHdFcOnN3D8PCv1uLjlHECLwt1gU6iE.jpg', 'vip4.jpg', '2021-08-10 18:27:48', '2021-08-30 08:48:50', 'Просторные караоке залы , оформлены в классическом стиле,которые помимо эстетической ценности несут в себе ценность акустическую, прекрасно поглощая звук, предотвращая его искажения и обеспечивая максимальный комфорт для исполнителя', 'Просторные караоке залы , оформлены в классическом стиле,которые помимо эстетической ценности несут в себе ценность акустическую, прекрасно поглощая звук, предотвращая его искажения и обеспечивая максимальный комфорт для исполнителя', 'Просторные караоке залы , оформлены в классическом стиле,которые помимо эстетической ценности несут в себе ценность акустическую, прекрасно поглощая звук, предотвращая его искажения и обеспечивая максимальный комфорт для исполнителя');

SET FOREIGN_KEY_CHECKS = 1;
