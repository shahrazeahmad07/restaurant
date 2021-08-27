#
# TABLE STRUCTURE FOR: tbl_admin_currencies
#

DROP TABLE IF EXISTS `tbl_admin_currencies`;

CREATE TABLE `tbl_admin_currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `code` varchar(25) DEFAULT NULL,
  `symbol` varchar(25) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbl_admin_user_menus
#

DROP TABLE IF EXISTS `tbl_admin_user_menus`;

CREATE TABLE `tbl_admin_user_menus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) DEFAULT NULL,
  `controller_name` varchar(50) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbl_attendance
#

DROP TABLE IF EXISTS `tbl_attendance`;

CREATE TABLE `tbl_attendance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: tbl_companies
#

DROP TABLE IF EXISTS `tbl_companies`;

CREATE TABLE `tbl_companies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `currency` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) DEFAULT NULL,
  `outlet_id` int(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_companies` (`id`, `currency`, `timezone`, `date_format`, `outlet_id`) VALUES (1, ৳, Asia/Dhaka, d/m/Y, 1);


#
# TABLE STRUCTURE FOR: tbl_customer_due_receives
#

DROP TABLE IF EXISTS `tbl_customer_due_receives`;

CREATE TABLE `tbl_customer_due_receives` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `only_date` date DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: tbl_customers
#

DROP TABLE IF EXISTS `tbl_customers`;

CREATE TABLE `tbl_customers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `gst_number` varchar(50) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `date_of_birth` date DEFAULT NULL,
  `date_of_anniversary` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `tbl_customers` (`id`, `name`, `phone`, `email`, `address`, `gst_number`, `area_id`, `user_id`, `company_id`, `del_status`, `date_of_birth`, `date_of_anniversary`) VALUES (1, Walk-in Customer, , NULL, NULL, NULL, 0, 1, 1, Live, NULL, NULL);
INSERT INTO `tbl_customers` (`id`, `name`, `phone`, `email`, `address`, `gst_number`, `area_id`, `user_id`, `company_id`, `del_status`, `date_of_birth`, `date_of_anniversary`) VALUES (2, fawad khan, 92123123, , multan, , NULL, 1, 1, Live, 1970-01-01, 1970-01-01);
INSERT INTO `tbl_customers` (`id`, `name`, `phone`, `email`, `address`, `gst_number`, `area_id`, `user_id`, `company_id`, `del_status`, `date_of_birth`, `date_of_anniversary`) VALUES (3, afaq khan, 03334568490, theprofexo@gmail.com, Naka chowk, , NULL, 1, 1, Live, 1970-01-01, 1970-01-01);
INSERT INTO `tbl_customers` (`id`, `name`, `phone`, `email`, `address`, `gst_number`, `area_id`, `user_id`, `company_id`, `del_status`, `date_of_birth`, `date_of_anniversary`) VALUES (4, afaq ali, 03334568490, , , , NULL, 1, 1, Live, 1970-01-01, 1970-01-01);


#
# TABLE STRUCTURE FOR: tbl_employees
#

DROP TABLE IF EXISTS `tbl_employees`;

CREATE TABLE `tbl_employees` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: tbl_expense_items
#

DROP TABLE IF EXISTS `tbl_expense_items`;

CREATE TABLE `tbl_expense_items` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbl_expenses
#

DROP TABLE IF EXISTS `tbl_expenses`;

CREATE TABLE `tbl_expenses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: tbl_food_menu_categories
#

DROP TABLE IF EXISTS `tbl_food_menu_categories`;

CREATE TABLE `tbl_food_menu_categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) unsigned DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_food_menu_categories` (`id`, `category_name`, `description`, `user_id`, `company_id`, `del_status`) VALUES (1, Fast Food, , 1, 1, Live);
INSERT INTO `tbl_food_menu_categories` (`id`, `category_name`, `description`, `user_id`, `company_id`, `del_status`) VALUES (2, BAR B.Q, , 1, 1, Live);
INSERT INTO `tbl_food_menu_categories` (`id`, `category_name`, `description`, `user_id`, `company_id`, `del_status`) VALUES (3, Chicken, , 1, 1, Live);
INSERT INTO `tbl_food_menu_categories` (`id`, `category_name`, `description`, `user_id`, `company_id`, `del_status`) VALUES (4, Drinks, , 1, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_food_menus
#

DROP TABLE IF EXISTS `tbl_food_menus`;

CREATE TABLE `tbl_food_menus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `sale_price` float(10,2) DEFAULT NULL,
  `tax_information` text,
  `vat_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `veg_item` varchar(50) DEFAULT 'Veg No',
  `beverage_item` varchar(50) DEFAULT 'Beverage No',
  `bar_item` varchar(50) DEFAULT 'Bar No',
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `tbl_food_menus` (`id`, `code`, `name`, `category_id`, `description`, `sale_price`, `tax_information`, `vat_id`, `user_id`, `company_id`, `photo`, `veg_item`, `beverage_item`, `bar_item`, `del_status`) VALUES (1, 001, Pizza, 1, , 500.00, [], NULL, 1, 1, 703fff804b28df5c69c9cc03b5ccfa38.jpg, Veg No, Beverage No, Bar No, Live);
INSERT INTO `tbl_food_menus` (`id`, `code`, `name`, `category_id`, `description`, `sale_price`, `tax_information`, `vat_id`, `user_id`, `company_id`, `photo`, `veg_item`, `beverage_item`, `bar_item`, `del_status`) VALUES (2, 002, chicken, 3, , 150.00, [], NULL, 1, 1, NULL, Veg No, Beverage Yes, Bar No, Live);
INSERT INTO `tbl_food_menus` (`id`, `code`, `name`, `category_id`, `description`, `sale_price`, `tax_information`, `vat_id`, `user_id`, `company_id`, `photo`, `veg_item`, `beverage_item`, `bar_item`, `del_status`) VALUES (3, 003, small piza, 1, paper fund, 150.00, [], NULL, 1, 1, NULL, Veg No, Beverage Yes, Bar No, Live);


#
# TABLE STRUCTURE FOR: tbl_food_menus_ingredients
#

DROP TABLE IF EXISTS `tbl_food_menus_ingredients`;

CREATE TABLE `tbl_food_menus_ingredients` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `food_menu_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `tbl_food_menus_ingredients` (`id`, `ingredient_id`, `consumption`, `food_menu_id`, `user_id`, `company_id`, `del_status`) VALUES (1, 2, 0.50, 1, 1, 1, Live);
INSERT INTO `tbl_food_menus_ingredients` (`id`, `ingredient_id`, `consumption`, `food_menu_id`, `user_id`, `company_id`, `del_status`) VALUES (2, 1, 0.01, 1, 1, 1, Live);
INSERT INTO `tbl_food_menus_ingredients` (`id`, `ingredient_id`, `consumption`, `food_menu_id`, `user_id`, `company_id`, `del_status`) VALUES (3, 2, 2.00, 2, 1, 1, Live);
INSERT INTO `tbl_food_menus_ingredients` (`id`, `ingredient_id`, `consumption`, `food_menu_id`, `user_id`, `company_id`, `del_status`) VALUES (4, 2, 2.00, 3, 1, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_food_menus_modifiers
#

DROP TABLE IF EXISTS `tbl_food_menus_modifiers`;

CREATE TABLE `tbl_food_menus_modifiers` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `modifier_id` int(10) DEFAULT NULL,
  `food_menu_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_holds
#

DROP TABLE IF EXISTS `tbl_holds`;

CREATE TABLE `tbl_holds` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(50) DEFAULT NULL,
  `hold_no` varchar(30) NOT NULL DEFAULT '000000',
  `total_items` int(10) DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `due_amount` double(10,2) DEFAULT NULL,
  `due_payment_date` date DEFAULT NULL,
  `disc` varchar(50) DEFAULT NULL,
  `disc_actual` float(10,2) DEFAULT NULL,
  `vat` float(10,2) DEFAULT NULL,
  `total_payable` float(10,2) DEFAULT NULL,
  `payment_method_id` int(10) DEFAULT NULL,
  `table_id` int(10) DEFAULT NULL,
  `total_item_discount_amount` float(10,2) NOT NULL,
  `sub_total_with_discount` float(10,2) NOT NULL,
  `sub_total_discount_amount` float(10,2) NOT NULL,
  `total_discount_amount` float(10,2) NOT NULL,
  `delivery_charge` float(10,2) NOT NULL,
  `sub_total_discount_value` varchar(10) NOT NULL,
  `sub_total_discount_type` varchar(20) NOT NULL,
  `token_no` varchar(50) DEFAULT NULL,
  `sale_date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_time` varchar(15) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `waiter_id` int(10) DEFAULT '0',
  `outlet_id` int(10) DEFAULT NULL,
  `order_status` tinyint(1) DEFAULT NULL COMMENT '1=new order, 2=cancelled order, 3=invoiced order',
  `sale_vat_objects` text,
  `order_type` tinyint(1) DEFAULT NULL COMMENT '1=dine in, 2 = take away, 3 = delivery',
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `tbl_holds` (`id`, `customer_id`, `hold_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `due_payment_date`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `token_no`, `sale_date`, `date_time`, `sale_time`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `sale_vat_objects`, `order_type`, `del_status`) VALUES (1, , 1, 1, 500.00, NULL, NULL, NULL, NULL, NULL, 0.00, 500.00, NULL, 0, 0.00, 500.00, 0.00, 0.00, 0.00, , plain, NULL, 2019-11-13, 2019-11-13 14:03:43, 2019-11-13 02:0, 3, 0, 1, 1, [], 1, Live);


#
# TABLE STRUCTURE FOR: tbl_holds_details
#

DROP TABLE IF EXISTS `tbl_holds_details`;

CREATE TABLE `tbl_holds_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `food_menu_id` int(10) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `menu_price_without_discount` float(10,2) NOT NULL,
  `menu_price_with_discount` float(10,2) NOT NULL,
  `menu_unit_price` float(10,2) NOT NULL,
  `menu_vat_percentage` float(10,2) NOT NULL,
  `menu_taxes` text,
  `menu_discount_value` varchar(20) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL,
  `menu_note` varchar(150) DEFAULT NULL,
  `discount_amount` double(10,2) DEFAULT NULL,
  `holds_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `tbl_holds_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `holds_id`, `user_id`, `outlet_id`, `del_status`) VALUES (1, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, 1, 3, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_holds_details_modifiers
#

DROP TABLE IF EXISTS `tbl_holds_details_modifiers`;

CREATE TABLE `tbl_holds_details_modifiers` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `modifier_id` int(15) NOT NULL,
  `modifier_price` float(10,2) NOT NULL,
  `food_menu_id` int(10) NOT NULL,
  `holds_id` int(15) NOT NULL,
  `holds_details_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `outlet_id` int(15) NOT NULL,
  `customer_id` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbl_ingredient_categories
#

DROP TABLE IF EXISTS `tbl_ingredient_categories`;

CREATE TABLE `tbl_ingredient_categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `tbl_ingredient_categories` (`id`, `category_name`, `description`, `user_id`, `company_id`, `del_status`) VALUES (1, Cooking Item, , 1, 1, Live);
INSERT INTO `tbl_ingredient_categories` (`id`, `category_name`, `description`, `user_id`, `company_id`, `del_status`) VALUES (2, test, , 1, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_ingredients
#

DROP TABLE IF EXISTS `tbl_ingredients`;

CREATE TABLE `tbl_ingredients` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `purchase_price` float(10,2) DEFAULT NULL,
  `alert_quantity` float(10,2) DEFAULT NULL,
  `unit_id` int(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `tbl_ingredients` (`id`, `code`, `name`, `category_id`, `purchase_price`, `alert_quantity`, `unit_id`, `user_id`, `company_id`, `del_status`) VALUES (1, 001, Salt, 1, 100.00, 1.00, 1, 1, 1, Live);
INSERT INTO `tbl_ingredients` (`id`, `code`, `name`, `category_id`, `purchase_price`, `alert_quantity`, `unit_id`, `user_id`, `company_id`, `del_status`) VALUES (2, 002, Cheese, 1, 200.00, 2.00, 1, 1, 1, Live);
INSERT INTO `tbl_ingredients` (`id`, `code`, `name`, `category_id`, `purchase_price`, `alert_quantity`, `unit_id`, `user_id`, `company_id`, `del_status`) VALUES (3, 003, chicken, 2, 123.00, 2.00, 3, 1, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_inventory_adjustment
#

DROP TABLE IF EXISTS `tbl_inventory_adjustment`;

CREATE TABLE `tbl_inventory_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbl_inventory_adjustment_ingredients
#

DROP TABLE IF EXISTS `tbl_inventory_adjustment_ingredients`;

CREATE TABLE `tbl_inventory_adjustment_ingredients` (
  `id` int(10) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption_amount` float(10,2) DEFAULT NULL,
  `inventory_adjustment_id` int(10) DEFAULT NULL,
  `consumption_status` enum('Plus','Minus','','') DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: tbl_modifier_ingredients
#

DROP TABLE IF EXISTS `tbl_modifier_ingredients`;

CREATE TABLE `tbl_modifier_ingredients` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `modifier_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: tbl_modifiers
#

DROP TABLE IF EXISTS `tbl_modifiers`;

CREATE TABLE `tbl_modifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

#
# TABLE STRUCTURE FOR: tbl_notification_bar_kitchen_panel
#

DROP TABLE IF EXISTS `tbl_notification_bar_kitchen_panel`;

CREATE TABLE `tbl_notification_bar_kitchen_panel` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `notification` text NOT NULL,
  `outlet_id` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_notification_bar_kitchen_panel` (`id`, `notification`, `outlet_id`) VALUES (1, Order:A 000016 has been modified, 1);
INSERT INTO `tbl_notification_bar_kitchen_panel` (`id`, `notification`, `outlet_id`) VALUES (2, Order:A 000016 has been modified, 1);
INSERT INTO `tbl_notification_bar_kitchen_panel` (`id`, `notification`, `outlet_id`) VALUES (3, Order:A 000017 has been modified, 1);
INSERT INTO `tbl_notification_bar_kitchen_panel` (`id`, `notification`, `outlet_id`) VALUES (4, Order:A 000037 has been modified, 1);


#
# TABLE STRUCTURE FOR: tbl_notifications
#

DROP TABLE IF EXISTS `tbl_notifications`;

CREATE TABLE `tbl_notifications` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `notification` text NOT NULL,
  `outlet_id` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbl_orders_table
#

DROP TABLE IF EXISTS `tbl_orders_table`;

CREATE TABLE `tbl_orders_table` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `persons` int(5) NOT NULL,
  `booking_time` datetime NOT NULL,
  `sale_id` int(10) NOT NULL,
  `sale_no` varchar(20) NOT NULL,
  `outlet_id` int(10) NOT NULL,
  `table_id` int(10) NOT NULL,
  `del_status` varchar(20) NOT NULL DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES (1, 2, 2019-11-13 13:31:46, 2, 000002, 1, 1, Deleted);
INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES (2, 4, 2019-11-13 13:31:46, 2, 000002, 1, 2, Deleted);
INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES (5, 4, 2019-11-13 13:37:55, 8, 000008, 1, 2, Deleted);
INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES (6, 3, 2019-11-13 15:31:11, 10, 000010, 1, 1, Deleted);
INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES (7, 2, 2019-12-18 18:25:24, 14, 000014, 1, 1, Deleted);
INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES (8, 3, 2019-12-19 19:42:48, 16, 000016, 1, 1, Deleted);
INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES (9, 1, 2019-12-22 00:26:36, 17, 000017, 1, 3, Deleted);
INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES (10, 3, 2020-01-11 16:14:42, 31, 000031, 1, 1, Deleted);
INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES (11, 1, 2020-01-11 21:03:02, 33, 000033, 1, 1, Live);
INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES (12, 1, 2020-01-13 12:06:02, 34, 000034, 1, 2, Live);
INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES (13, 1, 2020-01-13 12:37:48, 35, 000035, 1, 3, Live);
INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES (14, 1, 2020-01-13 12:56:38, 36, 000036, 1, 3, Deleted);
INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES (15, 1, 2020-01-13 12:56:38, 36, 000036, 1, 4, Deleted);
INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES (16, 1, 2020-01-13 12:57:41, 37, 000037, 1, 4, Deleted);


#
# TABLE STRUCTURE FOR: tbl_outlet_taxes
#

DROP TABLE IF EXISTS `tbl_outlet_taxes`;

CREATE TABLE `tbl_outlet_taxes` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `tax` varchar(50) NOT NULL,
  `outlet_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `company_id` int(15) NOT NULL,
  `del_status` varchar(100) NOT NULL DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbl_outlets
#

DROP TABLE IF EXISTS `tbl_outlets`;

CREATE TABLE `tbl_outlets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `outlet_name` varchar(50) DEFAULT NULL,
  `outlet_code` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `invoice_print` enum('Yes','No') DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `invoice_footer` varchar(500) DEFAULT NULL,
  `collect_tax` varchar(10) DEFAULT NULL,
  `tax_title` varchar(10) DEFAULT NULL,
  `tax_registration_no` varchar(30) DEFAULT NULL,
  `tax_is_gst` varchar(10) NOT NULL,
  `state_code` varchar(10) DEFAULT NULL,
  `pre_or_post_payment` varchar(500) DEFAULT 'Post Payment',
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_outlets` (`id`, `outlet_name`, `outlet_code`, `address`, `phone`, `invoice_print`, `starting_date`, `invoice_footer`, `collect_tax`, `tax_title`, `tax_registration_no`, `tax_is_gst`, `state_code`, `pre_or_post_payment`, `user_id`, `company_id`, `del_status`) VALUES (1, HANGRY RESTAURANT, 000001, Gulghast Mall, (210) 224-1313, Yes, 2018-02-18, Thank you for visiting us!, No, , , No, , Post Payment, 1, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_payment_methods
#

DROP TABLE IF EXISTS `tbl_payment_methods`;

CREATE TABLE `tbl_payment_methods` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_payment_methods` (`id`, `name`, `description`, `user_id`, `company_id`, `del_status`) VALUES (3, Cash, , 1, 1, Deleted);
INSERT INTO `tbl_payment_methods` (`id`, `name`, `description`, `user_id`, `company_id`, `del_status`) VALUES (4, Card, , 1, 1, Live);
INSERT INTO `tbl_payment_methods` (`id`, `name`, `description`, `user_id`, `company_id`, `del_status`) VALUES (5, Paypal, , 1, 1, Deleted);
INSERT INTO `tbl_payment_methods` (`id`, `name`, `description`, `user_id`, `company_id`, `del_status`) VALUES (6, Cash, , 1, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_purchase
#

DROP TABLE IF EXISTS `tbl_purchase`;

CREATE TABLE `tbl_purchase` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) DEFAULT NULL,
  `supplier_id` int(10) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  `subtotal` float(10,2) DEFAULT NULL,
  `other` float(10,2) DEFAULT NULL,
  `grand_total` float(10,2) DEFAULT NULL,
  `paid` float(10,2) DEFAULT NULL,
  `due` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_purchase` (`id`, `reference_no`, `supplier_id`, `date`, `subtotal`, `other`, `grand_total`, `paid`, `due`, `note`, `user_id`, `outlet_id`, `del_status`) VALUES (1, 000001, 1, 2019-11-14, NULL, NULL, 1000.00, 1000.00, 0.00, NULL, 1, 1, Live);
INSERT INTO `tbl_purchase` (`id`, `reference_no`, `supplier_id`, `date`, `subtotal`, `other`, `grand_total`, `paid`, `due`, `note`, `user_id`, `outlet_id`, `del_status`) VALUES (2, 000002, 2, 2019-11-13, NULL, NULL, 2000.00, 2000.00, 0.00, NULL, 1, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_purchase_ingredients
#

DROP TABLE IF EXISTS `tbl_purchase_ingredients`;

CREATE TABLE `tbl_purchase_ingredients` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(10) DEFAULT NULL,
  `unit_price` float(10,2) DEFAULT NULL,
  `quantity_amount` float(10,2) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `purchase_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_purchase_ingredients` (`id`, `ingredient_id`, `unit_price`, `quantity_amount`, `total`, `purchase_id`, `outlet_id`, `del_status`) VALUES (1, 1, 10.00, 100.00, 1000.00, 1, 1, Live);
INSERT INTO `tbl_purchase_ingredients` (`id`, `ingredient_id`, `unit_price`, `quantity_amount`, `total`, `purchase_id`, `outlet_id`, `del_status`) VALUES (2, 2, 10.00, 200.00, 2000.00, 2, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_register
#

DROP TABLE IF EXISTS `tbl_register`;

CREATE TABLE `tbl_register` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `opening_balance` float(10,2) NOT NULL,
  `closing_balance` float(10,2) NOT NULL,
  `opening_balance_date_time` datetime NOT NULL,
  `closing_balance_date_time` datetime NOT NULL,
  `sale_paid_amount` float(10,2) NOT NULL,
  `customer_due_receive` float(10,2) NOT NULL,
  `payment_methods_sale` text NOT NULL,
  `register_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=open,2=closed',
  `user_id` int(15) NOT NULL,
  `outlet_id` int(15) NOT NULL,
  `company_id` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES (38, 0.00, 0.00, 2020-01-11 21:13:28, 0000-00-00 00:00:00, 0.00, 0.00, , 1, 1, 1, 1);
INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES (39, 0.00, 0.00, 2020-01-11 00:00:00, 0000-00-00 00:00:00, 0.00, 0.00, , 1, 23, 1, 1);
INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES (40, 0.00, 0.00, 2020-01-13 12:03:30, 0000-00-00 00:00:00, 0.00, 0.00, , 1, 21, 1, 1);
INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES (41, 0.00, 0.00, 2020-01-13 12:04:36, 0000-00-00 00:00:00, 0.00, 0.00, , 1, 1, 1, 1);
INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES (42, 0.00, 0.00, 2020-01-13 12:11:27, 0000-00-00 00:00:00, 0.00, 0.00, , 1, 23, 1, 1);
INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES (43, 0.00, 0.00, 2020-01-13 12:24:02, 0000-00-00 00:00:00, 0.00, 0.00, , 1, 24, 1, 1);
INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES (44, 0.00, 0.00, 2020-01-13 12:27:53, 0000-00-00 00:00:00, 0.00, 0.00, , 1, 25, 1, 1);
INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES (45, 0.00, 0.00, 2020-01-13 12:34:41, 2020-01-13 12:59:43, 0.00, 0.00, {"Cash": ,"Paypal": ,"Card": }, 2, 26, 1, 1);
INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES (46, 0.00, 0.00, 2020-01-13 12:59:54, 2020-01-13 13:05:06, 0.00, 0.00, {"Cash": ,"Paypal": ,"Card": }, 2, 26, 1, 1);
INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES (47, 0.00, 0.00, 2020-01-13 13:05:34, 2020-01-13 13:08:19, 0.00, 0.00, {"Cash": ,"Paypal": ,"Card": }, 2, 26, 1, 1);
INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES (48, 0.00, 0.00, 2020-01-13 13:09:00, 0000-00-00 00:00:00, 0.00, 0.00, , 1, 26, 1, 1);
INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES (49, 0.00, 0.00, 2020-01-13 16:59:14, 0000-00-00 00:00:00, 0.00, 0.00, , 1, 28, 1, 1);


#
# TABLE STRUCTURE FOR: tbl_sale_consumptions
#

DROP TABLE IF EXISTS `tbl_sale_consumptions`;

CREATE TABLE `tbl_sale_consumptions` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `sale_id` int(10) DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (1, 1, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (2, 2, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (8, 8, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (9, 9, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (10, 10, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (11, 11, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (12, 12, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (13, 13, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (14, 14, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (15, 15, 0, 3, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (18, 16, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (20, 17, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (21, 18, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (22, 19, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (23, 20, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (24, 21, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (25, 22, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (26, 23, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (27, 24, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (28, 25, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (29, 26, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (30, 27, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (31, 28, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (32, 29, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (33, 30, 0, 3, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (34, 31, 0, 12, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (35, 32, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (36, 33, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (37, 34, 0, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (38, 35, 0, 26, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (39, 36, 0, 26, 1, Live);
INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (41, 37, 0, 26, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_sale_consumptions_of_menus
#

DROP TABLE IF EXISTS `tbl_sale_consumptions_of_menus`;

CREATE TABLE `tbl_sale_consumptions_of_menus` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `sale_consumption_id` int(10) DEFAULT NULL,
  `sales_id` int(10) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `food_menu_id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (1, 2, 0.50, 1, 1, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (2, 1, 0.01, 1, 1, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (3, 2, 0.50, 2, 2, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (4, 1, 0.01, 2, 2, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (15, 2, 0.50, 8, 8, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (16, 1, 0.01, 8, 8, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (17, 2, 0.50, 9, 9, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (18, 1, 0.01, 9, 9, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (19, 2, 0.50, 10, 10, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (20, 1, 0.01, 10, 10, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (21, 2, 1.00, 11, 11, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (22, 1, 0.02, 11, 11, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (23, 2, 1.00, 12, 12, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (24, 1, 0.02, 12, 12, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (25, 2, 1.00, 13, 13, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (26, 1, 0.02, 13, 13, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (27, 2, 0.50, 13, 13, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (28, 1, 0.01, 13, 13, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (29, 2, 0.50, 14, 14, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (30, 1, 0.01, 14, 14, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (31, 2, 0.50, 15, 15, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (32, 1, 0.01, 15, 15, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (47, 2, 0.50, 18, 16, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (48, 1, 0.01, 18, 16, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (49, 2, 0.50, 18, 16, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (50, 1, 0.01, 18, 16, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (51, 2, 0.50, 18, 16, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (52, 1, 0.01, 18, 16, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (53, 2, 0.50, 18, 16, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (54, 1, 0.01, 18, 16, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (59, 2, 0.50, 20, 17, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (60, 1, 0.01, 20, 17, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (61, 2, 0.50, 20, 17, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (62, 1, 0.01, 20, 17, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (63, 2, 0.50, 21, 18, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (64, 1, 0.01, 21, 18, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (65, 2, 0.50, 21, 18, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (66, 1, 0.01, 21, 18, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (67, 2, 0.50, 21, 18, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (68, 1, 0.01, 21, 18, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (69, 2, 0.50, 21, 18, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (70, 1, 0.01, 21, 18, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (71, 2, 0.50, 21, 18, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (72, 1, 0.01, 21, 18, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (73, 2, 0.50, 21, 18, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (74, 1, 0.01, 21, 18, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (75, 2, 0.50, 22, 19, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (76, 1, 0.01, 22, 19, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (77, 2, 0.50, 22, 19, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (78, 1, 0.01, 22, 19, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (79, 2, 0.50, 22, 19, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (80, 1, 0.01, 22, 19, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (81, 2, 0.50, 22, 19, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (82, 1, 0.01, 22, 19, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (83, 2, 0.50, 22, 19, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (84, 1, 0.01, 22, 19, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (85, 2, 0.50, 22, 19, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (86, 1, 0.01, 22, 19, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (87, 2, 0.50, 23, 20, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (88, 1, 0.01, 23, 20, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (89, 2, 0.50, 23, 20, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (90, 1, 0.01, 23, 20, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (91, 2, 0.50, 23, 20, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (92, 1, 0.01, 23, 20, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (93, 2, 0.50, 23, 20, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (94, 1, 0.01, 23, 20, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (95, 2, 0.50, 23, 20, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (96, 1, 0.01, 23, 20, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (97, 2, 0.50, 23, 20, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (98, 1, 0.01, 23, 20, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (99, 2, 0.50, 24, 21, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (100, 1, 0.01, 24, 21, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (101, 2, 0.50, 24, 21, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (102, 1, 0.01, 24, 21, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (103, 2, 0.50, 24, 21, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (104, 1, 0.01, 24, 21, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (105, 2, 0.50, 24, 21, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (106, 1, 0.01, 24, 21, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (107, 2, 0.50, 24, 21, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (108, 1, 0.01, 24, 21, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (109, 2, 0.50, 24, 21, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (110, 1, 0.01, 24, 21, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (111, 2, 0.50, 25, 22, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (112, 1, 0.01, 25, 22, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (113, 2, 0.50, 25, 22, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (114, 1, 0.01, 25, 22, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (115, 2, 0.50, 25, 22, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (116, 1, 0.01, 25, 22, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (117, 2, 0.50, 25, 22, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (118, 1, 0.01, 25, 22, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (119, 2, 0.50, 25, 22, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (120, 1, 0.01, 25, 22, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (121, 2, 0.50, 25, 22, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (122, 1, 0.01, 25, 22, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (123, 2, 0.50, 26, 23, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (124, 1, 0.01, 26, 23, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (125, 2, 0.50, 26, 23, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (126, 1, 0.01, 26, 23, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (127, 2, 0.50, 26, 23, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (128, 1, 0.01, 26, 23, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (129, 2, 0.50, 26, 23, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (130, 1, 0.01, 26, 23, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (131, 2, 0.50, 26, 23, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (132, 1, 0.01, 26, 23, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (133, 2, 0.50, 26, 23, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (134, 1, 0.01, 26, 23, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (135, 2, 0.50, 27, 24, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (136, 1, 0.01, 27, 24, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (137, 2, 0.50, 28, 25, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (138, 1, 0.01, 28, 25, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (139, 2, 0.50, 28, 25, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (140, 1, 0.01, 28, 25, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (141, 2, 0.50, 28, 25, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (142, 1, 0.01, 28, 25, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (143, 2, 0.50, 28, 25, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (144, 1, 0.01, 28, 25, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (145, 2, 0.50, 29, 26, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (146, 1, 0.01, 29, 26, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (147, 2, 0.50, 30, 27, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (148, 1, 0.01, 30, 27, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (149, 2, 2.00, 31, 28, 0, 2, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (150, 2, 0.50, 31, 28, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (151, 1, 0.01, 31, 28, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (152, 2, 0.50, 32, 29, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (153, 1, 0.01, 32, 29, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (154, 2, 0.50, 33, 30, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (155, 1, 0.01, 33, 30, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (156, 2, 0.50, 34, 31, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (157, 1, 0.01, 34, 31, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (158, 2, 0.50, 35, 32, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (159, 1, 0.01, 35, 32, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (160, 2, 2.00, 35, 32, 0, 2, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (161, 2, 0.50, 36, 33, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (162, 1, 0.01, 36, 33, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (163, 2, 0.50, 36, 33, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (164, 1, 0.01, 36, 33, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (165, 2, 1.00, 37, 34, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (166, 1, 0.02, 37, 34, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (167, 2, 2.00, 38, 35, 0, 2, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (168, 2, 1.00, 39, 36, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (169, 1, 0.02, 39, 36, 0, 1, 1, 1, Live);
INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES (171, 2, 2.00, 41, 37, 0, 2, 1, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_sale_consumptions_of_modifiers_of_menus
#

DROP TABLE IF EXISTS `tbl_sale_consumptions_of_modifiers_of_menus`;

CREATE TABLE `tbl_sale_consumptions_of_modifiers_of_menus` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `sale_consumption_id` int(10) DEFAULT NULL,
  `sales_id` int(10) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `food_menu_id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: tbl_sales
#

DROP TABLE IF EXISTS `tbl_sales`;

CREATE TABLE `tbl_sales` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(50) DEFAULT NULL,
  `sale_no` varchar(30) NOT NULL DEFAULT '000000',
  `total_items` int(10) DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `due_amount` float(10,2) DEFAULT NULL,
  `disc` varchar(50) DEFAULT NULL,
  `disc_actual` float(10,2) DEFAULT NULL,
  `vat` float(10,2) DEFAULT NULL,
  `total_payable` float(10,2) DEFAULT NULL,
  `payment_method_id` int(10) DEFAULT NULL,
  `close_time` time NOT NULL,
  `table_id` int(10) DEFAULT NULL,
  `total_item_discount_amount` float(10,2) NOT NULL,
  `sub_total_with_discount` float(10,2) NOT NULL,
  `sub_total_discount_amount` float(10,2) NOT NULL,
  `total_discount_amount` float(10,2) NOT NULL,
  `delivery_charge` float(10,2) NOT NULL,
  `sub_total_discount_value` varchar(10) NOT NULL,
  `sub_total_discount_type` varchar(20) NOT NULL,
  `sale_date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_time` time NOT NULL,
  `cooking_start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cooking_done_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `user_id` int(10) DEFAULT NULL,
  `waiter_id` int(10) NOT NULL DEFAULT '0',
  `outlet_id` int(10) DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order, 2=invoiced order, 3=closed order',
  `order_type` tinyint(1) NOT NULL COMMENT '1=dine in, 2 = take away, 3 = delivery',
  `del_status` varchar(50) DEFAULT 'Live',
  `sale_vat_objects` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (1, 1, 000001, 1, 500.00, 500.00, 0.00, NULL, NULL, 0.00, 500.00, 6, 13:30:27, NULL, 0.00, 500.00, 0.00, 0.00, 0.00, , plain, 2019-11-13, 2019-11-13 23:20:51, 13:20:51, 0000-00-00 00:00:00, 2019-11-13 13:25:13, No, 1, 3, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (2, 1, 000002, 1, 500.00, 500.00, 0.00, NULL, NULL, 0.00, 500.00, 6, 13:32:14, NULL, 0.00, 500.00, 0.00, 0.00, 0.00, , plain, 2019-11-13, 2019-11-13 23:31:46, 13:31:46, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 9, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (8, 1, 000008, 1, 500.00, 500.00, 0.00, NULL, NULL, 0.00, 500.00, 6, 11:17:08, NULL, 0.00, 500.00, 0.00, 0.00, 0.00, , plain, 2019-11-13, 2019-11-13 23:37:55, 13:37:55, 0000-00-00 00:00:00, 2019-12-16 15:42:48, No, 1, 9, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (9, 2, 000009, 1, 500.00, 500.00, 0.00, NULL, NULL, 0.00, 500.00, 6, 11:17:42, NULL, 0.00, 500.00, 0.00, 0.00, 0.00, , plain, 2019-11-13, 2019-11-13 23:41:43, 13:41:43, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 0, 1, 3, 3, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (10, 1, 000010, 1, 500.00, 500.00, 0.00, NULL, NULL, 0.00, 500.00, 6, 18:12:59, NULL, 0.00, 500.00, 0.00, 0.00, 0.00, , plain, 2019-11-13, 2019-11-14 01:31:11, 15:31:11, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 3, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (11, 2, 000011, 1, 1000.00, 1000.00, 0.00, NULL, NULL, 0.00, 1000.00, 6, 11:18:12, NULL, 0.00, 1000.00, 0.00, 0.00, 0.00, , plain, 2019-11-13, 2019-11-14 01:39:04, 15:39:04, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 0, 1, 3, 3, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (12, 2, 000012, 1, 1000.00, 1000.00, 0.00, NULL, NULL, 0.00, 1000.00, 6, 13:18:42, NULL, 0.00, 1000.00, 0.00, 0.00, 0.00, , plain, 2019-11-13, 2019-11-14 01:39:05, 15:39:05, 0000-00-00 00:00:00, 2019-12-18 18:34:37, No, 1, 0, 1, 3, 3, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (13, 1, 000013, 2, 1500.00, 1500.00, NULL, NULL, NULL, 0.00, 1500.00, 3, 15:16:38, NULL, 0.00, 1500.00, 0.00, 0.00, 0.00, , plain, 2019-11-23, 2019-11-24 01:16:38, 15:16:38, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 4, 1, 3, 2, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (14, 1, 000014, 1, 500.00, 500.00, 0.00, NULL, NULL, 0.00, 500.00, 6, 18:40:22, NULL, 0.00, 500.00, 0.00, 0.00, 0.00, , plain, 2019-12-18, 2019-12-19 04:25:24, 18:25:24, 0000-00-00 00:00:00, 2019-12-18 18:31:44, No, 1, 4, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (15, 1, 000015, 1, 500.00, 500.00, 0.00, NULL, NULL, 0.00, 500.00, 6, 13:19:05, NULL, 0.00, 500.00, 0.00, 0.00, 0.00, , plain, 2019-12-18, 2019-12-19 04:58:36, 18:58:36, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 3, 3, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (16, 1, 000016, 4, 2000.00, 2000.00, 0.00, NULL, NULL, 0.00, 2000.00, 6, 14:57:26, NULL, 0.00, 2000.00, 0.00, 0.00, 0.00, , plain, 2019-12-19, 2019-12-20 05:47:48, 19:47:48, 0000-00-00 00:00:00, 2019-12-19 19:48:26, Yes, 1, 4, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (17, 1, 000017, 2, 1000.00, 1000.00, NULL, NULL, NULL, 0.00, 1000.00, 3, 00:28:40, NULL, 0.00, 1000.00, 0.00, 0.00, 0.00, , plain, 2019-12-22, 2019-12-22 10:28:40, 00:28:40, 0000-00-00 00:00:00, 2019-12-22 00:27:37, Yes, 1, 4, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (18, 1, 000018, 6, 3000.00, 3000.00, 0.00, NULL, NULL, 0.00, 3000.00, 6, 19:24:03, NULL, 0.00, 3000.00, 0.00, 0.00, 0.00, , plain, 2019-12-27, 2019-12-28 00:35:47, 14:35:47, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 4, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (19, 1, 000019, 6, 3000.00, 3000.00, NULL, NULL, NULL, 0.00, 3000.00, 3, 14:35:48, NULL, 0.00, 3000.00, 0.00, 0.00, 0.00, , plain, 2019-12-27, 2019-12-28 00:35:48, 14:35:48, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 4, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (20, 1, 000020, 6, 3000.00, 3000.00, 0.00, NULL, NULL, 0.00, 3000.00, 6, 13:19:16, NULL, 0.00, 3000.00, 0.00, 0.00, 0.00, , plain, 2019-12-27, 2019-12-28 00:35:48, 14:35:48, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 4, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (21, 1, 000021, 6, 3000.00, 3000.00, NULL, NULL, NULL, 0.00, 3000.00, 3, 14:35:50, NULL, 0.00, 3000.00, 0.00, 0.00, 0.00, , plain, 2019-12-27, 2019-12-28 00:35:50, 14:35:50, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 4, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (22, 1, 000022, 6, 3000.00, 3000.00, NULL, NULL, NULL, 0.00, 3000.00, 3, 14:35:51, NULL, 0.00, 3000.00, 0.00, 0.00, 0.00, , plain, 2019-12-27, 2019-12-28 00:35:51, 14:35:51, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 4, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (23, 1, 000023, 6, 3000.00, 3000.00, 0.00, NULL, NULL, 0.00, 3000.00, 6, 13:19:28, NULL, 0.00, 3000.00, 0.00, 0.00, 0.00, , plain, 2019-12-27, 2019-12-28 00:35:51, 14:35:51, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 4, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (24, 1, 000024, 1, 500.00, 500.00, NULL, NULL, NULL, 0.00, 500.00, 3, 14:55:14, NULL, 0.00, 500.00, 0.00, 0.00, 0.00, , plain, 2019-12-27, 2019-12-28 00:55:14, 14:55:14, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 3, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (25, 1, 000025, 4, 2000.00, 2000.00, 0.00, NULL, NULL, 0.00, 2000.00, 6, 13:19:41, NULL, 0.00, 2000.00, 0.00, 0.00, 0.00, , plain, 2019-12-28, 2019-12-28 12:42:40, 02:42:40, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 4, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (26, 1, 000026, 1, 500.00, 500.00, 0.00, NULL, NULL, 0.00, 500.00, 6, 13:19:58, NULL, 0.00, 500.00, 0.00, 0.00, 0.00, , plain, 2020-01-01, 2020-01-02 04:28:46, 18:28:46, 0000-00-00 00:00:00, 2020-01-01 18:32:51, No, 1, 4, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (27, 1, 000027, 1, 500.00, 500.00, 0.00, NULL, NULL, 0.00, 500.00, 4, 13:20:13, NULL, 0.00, 500.00, 0.00, 0.00, 0.00, , plain, 2020-01-01, 2020-01-02 04:31:34, 18:31:34, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 4, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (28, 1, 000028, 2, 650.00, 650.00, 0.00, NULL, NULL, 0.00, 650.00, 6, 13:20:29, NULL, 0.00, 650.00, 0.00, 0.00, 0.00, , plain, 2020-01-01, 2020-01-02 04:39:21, 18:39:21, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 3, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (29, 1, 000029, 1, 500.00, 500.00, NULL, NULL, NULL, 0.00, 500.00, 3, 12:55:31, NULL, 0.00, 500.00, 0.00, 0.00, 0.00, , plain, 2020-01-10, 2020-01-10 12:55:31, 12:55:31, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 3, 1, 3, 2, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (30, 2, 000030, 1, 500.00, 500.00, NULL, NULL, NULL, 0.00, 500.00, 3, 13:25:23, NULL, 0.00, 500.00, 0.00, 0.00, 0.00, , plain, 2020-01-10, 2020-01-10 13:25:23, 13:25:23, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 3, 9, 1, 3, 3, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (31, 1, 000031, 1, 500.00, 500.00, 0.00, NULL, NULL, 0.00, 500.00, 6, 16:45:03, NULL, 0.00, 500.00, 0.00, 0.00, 0.00, , plain, 2020-01-11, 2020-01-11 16:14:42, 16:14:42, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 12, 4, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (32, 3, 000032, 2, 650.00, NULL, NULL, NULL, NULL, 0.00, 600.00, NULL, 00:00:00, NULL, 0.00, 600.00, 50.00, 50.00, 0.00, 50, plain, 2020-01-11, 2020-01-11 19:39:57, 19:39:57, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 20, 1, 1, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (33, 1, 000033, 2, 1000.00, NULL, NULL, NULL, NULL, 0.00, 1000.00, NULL, 00:00:00, NULL, 0.00, 1000.00, 0.00, 0.00, 0.00, , plain, 2020-01-11, 2020-01-11 21:03:01, 21:03:01, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 20, 1, 1, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (34, 1, 000034, 1, 1000.00, NULL, NULL, NULL, NULL, 0.00, 1000.00, NULL, 00:00:00, NULL, 0.00, 1000.00, 0.00, 0.00, 0.00, , plain, 2020-01-13, 2020-01-13 12:06:02, 12:06:02, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 1, 21, 1, 1, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (35, 1, 000035, 1, 150.00, NULL, NULL, NULL, NULL, 0.00, 150.00, NULL, 00:00:00, NULL, 0.00, 150.00, 0.00, 0.00, 0.00, , plain, 2020-01-13, 2020-01-13 12:37:48, 12:37:48, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 26, 26, 1, 1, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (36, 1, 000036, 1, 1000.00, 1000.00, 0.00, NULL, NULL, 0.00, 1000.00, 6, 13:19:56, NULL, 0.00, 1000.00, 0.00, 0.00, 0.00, , plain, 2020-01-13, 2020-01-13 12:56:38, 12:56:38, 0000-00-00 00:00:00, 0000-00-00 00:00:00, No, 26, 26, 1, 3, 1, Live, []);
INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES (37, 1, 000037, 1, 150.00, 150.00, 0.00, NULL, NULL, 0.00, 150.00, 6, 13:18:26, NULL, 0.00, 150.00, 0.00, 0.00, 0.00, , plain, 2020-01-13, 2020-01-13 12:59:31, 12:59:31, 0000-00-00 00:00:00, 0000-00-00 00:00:00, Yes, 26, 26, 1, 3, 1, Live, []);


#
# TABLE STRUCTURE FOR: tbl_sales_details
#

DROP TABLE IF EXISTS `tbl_sales_details`;

CREATE TABLE `tbl_sales_details` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `food_menu_id` int(10) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `menu_price_without_discount` float(10,2) NOT NULL,
  `menu_price_with_discount` float(10,2) NOT NULL,
  `menu_unit_price` float(10,2) NOT NULL,
  `menu_vat_percentage` float(10,2) NOT NULL,
  `menu_taxes` text,
  `menu_discount_value` varchar(20) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL,
  `menu_note` varchar(150) DEFAULT NULL,
  `discount_amount` double(10,2) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `cooking_status` varchar(30) DEFAULT NULL,
  `cooking_start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cooking_done_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `previous_id` bigint(50) NOT NULL,
  `sales_id` int(10) DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (1, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, Done, 2019-11-13 13:25:01, 2019-11-13 13:25:13, 1, 1, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (2, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 2, 2, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (8, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, Done, 2019-12-16 15:42:43, 2019-12-16 15:42:47, 8, 8, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (9, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 9, 9, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (10, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 10, 10, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (11, 1, Pizza (001), 2, 1000.00, 1000.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 11, 11, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (12, 1, Pizza (001), 2, 1000.00, 1000.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, Done, 0000-00-00 00:00:00, 2019-12-18 18:34:37, 12, 12, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (13, 1, Pizza (001), 2, 1000.00, 1000.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 13, 13, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (14, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 14, 13, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (15, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, Done, 2019-12-18 18:31:22, 2019-12-18 18:31:44, 15, 14, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (16, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 16, 15, 0, 3, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (24, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, Done, 2019-12-19 19:44:34, 2019-12-19 19:48:25, 17, 16, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (25, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, Done, 2019-12-19 19:44:34, 2019-12-19 19:48:26, 18, 16, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (26, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, Done, 2019-12-19 19:44:34, 2019-12-19 19:48:26, 19, 16, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (27, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, Done, 2019-12-19 19:48:18, 2019-12-19 19:48:26, 23, 16, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (30, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, Done, 2019-12-22 00:27:33, 2019-12-22 00:27:37, 28, 17, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (31, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, Done, 2019-12-22 00:27:33, 2019-12-22 00:27:37, 29, 17, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (32, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 32, 18, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (33, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 33, 18, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (34, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 34, 18, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (35, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 35, 18, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (36, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 36, 18, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (37, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 37, 18, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (38, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 38, 19, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (39, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 39, 19, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (40, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 40, 19, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (41, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 41, 19, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (42, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 42, 19, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (43, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 43, 19, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (44, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 44, 20, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (45, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 45, 20, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (46, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 46, 20, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (47, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 47, 20, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (48, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 48, 20, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (49, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 49, 20, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (50, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 50, 21, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (51, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 51, 21, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (52, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 52, 21, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (53, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 53, 21, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (54, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 54, 21, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (55, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 55, 21, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (56, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 56, 22, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (57, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 57, 22, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (58, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 58, 22, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (59, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 59, 22, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (60, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 60, 22, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (61, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 61, 22, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (62, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 62, 23, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (63, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 63, 23, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (64, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 64, 23, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (65, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 65, 23, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (66, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 66, 23, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (67, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 67, 23, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (68, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 68, 24, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (69, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 69, 25, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (70, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 70, 25, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (71, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 71, 25, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (72, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 72, 25, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (73, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, Done, 2020-01-01 18:32:47, 2020-01-01 18:32:51, 73, 26, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (74, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 74, 27, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (75, 2, chicken (002), 1, 150.00, 150.00, 150.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 75, 28, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (76, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 76, 28, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (77, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 77, 29, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (78, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 78, 30, 0, 3, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (79, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 79, 31, 0, 12, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (80, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 80, 32, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (81, 2, chicken (002), 1, 150.00, 150.00, 150.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 81, 32, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (82, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 82, 33, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (83, 1, Pizza (001), 1, 500.00, 500.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 83, 33, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (84, 1, Pizza (001), 2, 1000.00, 1000.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 84, 34, 0, 1, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (85, 2, chicken (002), 1, 150.00, 150.00, 150.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 85, 35, 0, 26, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (86, 1, Pizza (001), 2, 1000.00, 1000.00, 500.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 86, 36, 0, 26, 1, Live);
INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES (88, 2, chicken (002), 1, 150.00, 150.00, 150.00, 0.00, [], 0, plain, , 0.00, Kitchen Item, NULL, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 87, 37, 0, 26, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_sales_details_modifiers
#

DROP TABLE IF EXISTS `tbl_sales_details_modifiers`;

CREATE TABLE `tbl_sales_details_modifiers` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `modifier_id` int(15) NOT NULL,
  `modifier_price` float(10,2) NOT NULL,
  `food_menu_id` int(10) NOT NULL,
  `sales_id` int(15) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `sales_details_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `outlet_id` int(15) NOT NULL,
  `customer_id` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbl_settings
#

DROP TABLE IF EXISTS `tbl_settings`;

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_format` varchar(20) DEFAULT NULL,
  `time_zone` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf32;

INSERT INTO `tbl_settings` (`id`, `date_format`, `time_zone`, `currency`, `company_id`, `del_status`) VALUES (4, d/m/Y, Asia/Karachi, PKR, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_sms_settings
#

DROP TABLE IF EXISTS `tbl_sms_settings`;

CREATE TABLE `tbl_sms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tbl_sms_settings` (`id`, `email_address`, `password`, `company_id`, `del_status`) VALUES (1, , , 1, Live);


#
# TABLE STRUCTURE FOR: tbl_supplier_payments
#

DROP TABLE IF EXISTS `tbl_supplier_payments`;

CREATE TABLE `tbl_supplier_payments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbl_suppliers
#

DROP TABLE IF EXISTS `tbl_suppliers`;

CREATE TABLE `tbl_suppliers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_suppliers` (`id`, `name`, `contact_person`, `phone`, `email`, `address`, `description`, `user_id`, `company_id`, `del_status`) VALUES (1, Sup1, 12345, 123123, sub, , , 1, 1, Live);
INSERT INTO `tbl_suppliers` (`id`, `name`, `contact_person`, `phone`, `email`, `address`, `description`, `user_id`, `company_id`, `del_status`) VALUES (2, cheese supplier, 12312, 123123, , , , 1, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_tables
#

DROP TABLE IF EXISTS `tbl_tables`;

CREATE TABLE `tbl_tables` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `sit_capacity` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_tables` (`id`, `name`, `sit_capacity`, `position`, `description`, `user_id`, `outlet_id`, `company_id`, `del_status`) VALUES (1, Table 1, 3, Front hall, , 1, 1, 1, Live);
INSERT INTO `tbl_tables` (`id`, `name`, `sit_capacity`, `position`, `description`, `user_id`, `outlet_id`, `company_id`, `del_status`) VALUES (2, Table 2, 4, Front hall, , 1, 1, 1, Live);
INSERT INTO `tbl_tables` (`id`, `name`, `sit_capacity`, `position`, `description`, `user_id`, `outlet_id`, `company_id`, `del_status`) VALUES (3, Table 3, 6, Front hall, , 1, 1, 1, Live);
INSERT INTO `tbl_tables` (`id`, `name`, `sit_capacity`, `position`, `description`, `user_id`, `outlet_id`, `company_id`, `del_status`) VALUES (4, Family Table, 4, Family Hall/Upper Hall, , 1, 1, 1, Live);
INSERT INTO `tbl_tables` (`id`, `name`, `sit_capacity`, `position`, `description`, `user_id`, `outlet_id`, `company_id`, `del_status`) VALUES (5, Family Table 2, 10, Family Hall/Upper Hall, , 1, 1, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_temp_kot
#

DROP TABLE IF EXISTS `tbl_temp_kot`;

CREATE TABLE `tbl_temp_kot` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `temp_kot_info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbl_time_zone
#

DROP TABLE IF EXISTS `tbl_time_zone`;

CREATE TABLE `tbl_time_zone` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) DEFAULT NULL,
  `zone_name` varchar(35) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=utf32;

INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (1, AD, Europe/Andorra, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (2, AE, Asia/Dubai, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (3, AF, Asia/Kabul, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (4, AG, America/Antigua, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (5, AI, America/Anguilla, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (6, AL, Europe/Tirane, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (7, AM, Asia/Yerevan, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (8, AO, Africa/Luanda, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (9, AQ, Antarctica/McMurdo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (10, AQ, Antarctica/Casey, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (11, AQ, Antarctica/Davis, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (12, AQ, Antarctica/DumontDUrville, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (13, AQ, Antarctica/Mawson, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (14, AQ, Antarctica/Palmer, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (15, AQ, Antarctica/Rothera, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (16, AQ, Antarctica/Syowa, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (17, AQ, Antarctica/Troll, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (18, AQ, Antarctica/Vostok, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (19, AR, America/Argentina/Buenos_Aires, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (20, AR, America/Argentina/Cordoba, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (21, AR, America/Argentina/Salta, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (22, AR, America/Argentina/Jujuy, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (23, AR, America/Argentina/Tucuman, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (24, AR, America/Argentina/Catamarca, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (25, AR, America/Argentina/La_Rioja, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (26, AR, America/Argentina/San_Juan, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (27, AR, America/Argentina/Mendoza, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (28, AR, America/Argentina/San_Luis, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (29, AR, America/Argentina/Rio_Gallegos, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (30, AR, America/Argentina/Ushuaia, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (31, AS, Pacific/Pago_Pago, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (32, AT, Europe/Vienna, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (33, AU, Australia/Lord_Howe, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (34, AU, Antarctica/Macquarie, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (35, AU, Australia/Hobart, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (36, AU, Australia/Currie, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (37, AU, Australia/Melbourne, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (38, AU, Australia/Sydney, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (39, AU, Australia/Broken_Hill, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (40, AU, Australia/Brisbane, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (41, AU, Australia/Lindeman, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (42, AU, Australia/Adelaide, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (43, AU, Australia/Darwin, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (44, AU, Australia/Perth, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (45, AU, Australia/Eucla, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (46, AW, America/Aruba, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (47, AX, Europe/Mariehamn, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (48, AZ, Asia/Baku, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (49, BA, Europe/Sarajevo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (50, BB, America/Barbados, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (51, BD, Asia/Dhaka, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (52, BE, Europe/Brussels, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (53, BF, Africa/Ouagadougou, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (54, BG, Europe/Sofia, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (55, BH, Asia/Bahrain, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (56, BI, Africa/Bujumbura, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (57, BJ, Africa/Porto-Novo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (58, BL, America/St_Barthelemy, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (59, BM, Atlantic/Bermuda, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (60, BN, Asia/Brunei, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (61, BO, America/La_Paz, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (62, BQ, America/Kralendijk, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (63, BR, America/Noronha, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (64, BR, America/Belem, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (65, BR, America/Fortaleza, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (66, BR, America/Recife, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (67, BR, America/Araguaina, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (68, BR, America/Maceio, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (69, BR, America/Bahia, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (70, BR, America/Sao_Paulo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (71, BR, America/Campo_Grande, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (72, BR, America/Cuiaba, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (73, BR, America/Santarem, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (74, BR, America/Porto_Velho, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (75, BR, America/Boa_Vista, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (76, BR, America/Manaus, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (77, BR, America/Eirunepe, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (78, BR, America/Rio_Branco, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (79, BS, America/Nassau, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (80, BT, Asia/Thimphu, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (81, BW, Africa/Gaborone, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (82, BY, Europe/Minsk, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (83, BZ, America/Belize, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (84, CA, America/St_Johns, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (85, CA, America/Halifax, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (86, CA, America/Glace_Bay, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (87, CA, America/Moncton, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (88, CA, America/Goose_Bay, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (89, CA, America/Blanc-Sablon, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (90, CA, America/Toronto, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (91, CA, America/Nipigon, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (92, CA, America/Thunder_Bay, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (93, CA, America/Iqaluit, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (94, CA, America/Pangnirtung, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (95, CA, America/Atikokan, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (96, CA, America/Winnipeg, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (97, CA, America/Rainy_River, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (98, CA, America/Resolute, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (99, CA, America/Rankin_Inlet, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (100, CA, America/Regina, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (101, CA, America/Swift_Current, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (102, CA, America/Edmonton, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (103, CA, America/Cambridge_Bay, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (104, CA, America/Yellowknife, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (105, CA, America/Inuvik, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (106, CA, America/Creston, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (107, CA, America/Dawson_Creek, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (108, CA, America/Fort_Nelson, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (109, CA, America/Vancouver, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (110, CA, America/Whitehorse, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (111, CA, America/Dawson, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (112, CC, Indian/Cocos, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (113, CD, Africa/Kinshasa, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (114, CD, Africa/Lubumbashi, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (115, CF, Africa/Bangui, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (116, CG, Africa/Brazzaville, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (117, CH, Europe/Zurich, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (118, CI, Africa/Abidjan, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (119, CK, Pacific/Rarotonga, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (120, CL, America/Santiago, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (121, CL, America/Punta_Arenas, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (122, CL, Pacific/Easter, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (123, CM, Africa/Douala, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (124, CN, Asia/Shanghai, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (125, CN, Asia/Urumqi, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (126, CO, America/Bogota, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (127, CR, America/Costa_Rica, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (128, CU, America/Havana, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (129, CV, Atlantic/Cape_Verde, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (130, CW, America/Curacao, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (131, CX, Indian/Christmas, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (132, CY, Asia/Nicosia, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (133, CY, Asia/Famagusta, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (134, CZ, Europe/Prague, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (135, DE, Europe/Berlin, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (136, DE, Europe/Busingen, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (137, DJ, Africa/Djibouti, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (138, DK, Europe/Copenhagen, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (139, DM, America/Dominica, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (140, DO, America/Santo_Domingo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (141, DZ, Africa/Algiers, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (142, EC, America/Guayaquil, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (143, EC, Pacific/Galapagos, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (144, EE, Europe/Tallinn, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (145, EG, Africa/Cairo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (146, EH, Africa/El_Aaiun, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (147, ER, Africa/Asmara, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (148, ES, Europe/Madrid, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (149, ES, Africa/Ceuta, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (150, ES, Atlantic/Canary, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (151, ET, Africa/Addis_Ababa, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (152, FI, Europe/Helsinki, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (153, FJ, Pacific/Fiji, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (154, FK, Atlantic/Stanley, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (155, FM, Pacific/Chuuk, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (156, FM, Pacific/Pohnpei, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (157, FM, Pacific/Kosrae, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (158, FO, Atlantic/Faroe, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (159, FR, Europe/Paris, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (160, GA, Africa/Libreville, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (161, GB, Europe/London, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (162, GD, America/Grenada, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (163, GE, Asia/Tbilisi, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (164, GF, America/Cayenne, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (165, GG, Europe/Guernsey, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (166, GH, Africa/Accra, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (167, GI, Europe/Gibraltar, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (168, GL, America/Godthab, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (169, GL, America/Danmarkshavn, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (170, GL, America/Scoresbysund, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (171, GL, America/Thule, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (172, GM, Africa/Banjul, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (173, GN, Africa/Conakry, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (174, GP, America/Guadeloupe, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (175, GQ, Africa/Malabo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (176, GR, Europe/Athens, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (177, GS, Atlantic/South_Georgia, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (178, GT, America/Guatemala, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (179, GU, Pacific/Guam, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (180, GW, Africa/Bissau, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (181, GY, America/Guyana, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (182, HK, Asia/Hong_Kong, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (183, HN, America/Tegucigalpa, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (184, HR, Europe/Zagreb, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (185, HT, America/Port-au-Prince, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (186, HU, Europe/Budapest, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (187, ID, Asia/Jakarta, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (188, ID, Asia/Pontianak, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (189, ID, Asia/Makassar, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (190, ID, Asia/Jayapura, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (191, IE, Europe/Dublin, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (192, IL, Asia/Jerusalem, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (193, IM, Europe/Isle_of_Man, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (194, IN, Asia/Kolkata, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (195, IO, Indian/Chagos, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (196, IQ, Asia/Baghdad, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (197, IR, Asia/Tehran, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (198, IS, Atlantic/Reykjavik, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (199, IT, Europe/Rome, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (200, JE, Europe/Jersey, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (201, JM, America/Jamaica, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (202, JO, Asia/Amman, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (203, JP, Asia/Tokyo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (204, KE, Africa/Nairobi, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (205, KG, Asia/Bishkek, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (206, KH, Asia/Phnom_Penh, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (207, KI, Pacific/Tarawa, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (208, KI, Pacific/Enderbury, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (209, KI, Pacific/Kiritimati, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (210, KM, Indian/Comoro, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (211, KN, America/St_Kitts, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (212, KP, Asia/Pyongyang, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (213, KR, Asia/Seoul, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (214, KW, Asia/Kuwait, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (215, KY, America/Cayman, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (216, KZ, Asia/Almaty, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (217, KZ, Asia/Qyzylorda, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (218, KZ, Asia/Aqtobe, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (219, KZ, Asia/Aqtau, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (220, KZ, Asia/Atyrau, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (221, KZ, Asia/Oral, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (222, LA, Asia/Vientiane, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (223, LB, Asia/Beirut, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (224, LC, America/St_Lucia, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (225, LI, Europe/Vaduz, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (226, LK, Asia/Colombo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (227, LR, Africa/Monrovia, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (228, LS, Africa/Maseru, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (229, LT, Europe/Vilnius, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (230, LU, Europe/Luxembourg, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (231, LV, Europe/Riga, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (232, LY, Africa/Tripoli, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (233, MA, Africa/Casablanca, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (234, MC, Europe/Monaco, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (235, MD, Europe/Chisinau, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (236, ME, Europe/Podgorica, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (237, MF, America/Marigot, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (238, MG, Indian/Antananarivo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (239, MH, Pacific/Majuro, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (240, MH, Pacific/Kwajalein, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (241, MK, Europe/Skopje, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (242, ML, Africa/Bamako, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (243, MM, Asia/Yangon, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (244, MN, Asia/Ulaanbaatar, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (245, MN, Asia/Hovd, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (246, MN, Asia/Choibalsan, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (247, MO, Asia/Macau, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (248, MP, Pacific/Saipan, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (249, MQ, America/Martinique, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (250, MR, Africa/Nouakchott, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (251, MS, America/Montserrat, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (252, MT, Europe/Malta, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (253, MU, Indian/Mauritius, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (254, MV, Indian/Maldives, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (255, MW, Africa/Blantyre, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (256, MX, America/Mexico_City, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (257, MX, America/Cancun, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (258, MX, America/Merida, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (259, MX, America/Monterrey, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (260, MX, America/Matamoros, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (261, MX, America/Mazatlan, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (262, MX, America/Chihuahua, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (263, MX, America/Ojinaga, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (264, MX, America/Hermosillo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (265, MX, America/Tijuana, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (266, MX, America/Bahia_Banderas, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (267, MY, Asia/Kuala_Lumpur, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (268, MY, Asia/Kuching, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (269, MZ, Africa/Maputo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (270, NA, Africa/Windhoek, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (271, NC, Pacific/Noumea, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (272, NE, Africa/Niamey, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (273, NF, Pacific/Norfolk, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (274, NG, Africa/Lagos, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (275, NI, America/Managua, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (276, NL, Europe/Amsterdam, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (277, NO, Europe/Oslo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (278, NP, Asia/Kathmandu, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (279, NR, Pacific/Nauru, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (280, NU, Pacific/Niue, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (281, NZ, Pacific/Auckland, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (282, NZ, Pacific/Chatham, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (283, OM, Asia/Muscat, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (284, PA, America/Panama, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (285, PE, America/Lima, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (286, PF, Pacific/Tahiti, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (287, PF, Pacific/Marquesas, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (288, PF, Pacific/Gambier, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (289, PG, Pacific/Port_Moresby, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (290, PG, Pacific/Bougainville, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (291, PH, Asia/Manila, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (292, PK, Asia/Karachi, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (293, PL, Europe/Warsaw, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (294, PM, America/Miquelon, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (295, PN, Pacific/Pitcairn, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (296, PR, America/Puerto_Rico, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (297, PS, Asia/Gaza, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (298, PS, Asia/Hebron, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (299, PT, Europe/Lisbon, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (300, PT, Atlantic/Madeira, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (301, PT, Atlantic/Azores, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (302, PW, Pacific/Palau, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (303, PY, America/Asuncion, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (304, QA, Asia/Qatar, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (305, RE, Indian/Reunion, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (306, RO, Europe/Bucharest, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (307, RS, Europe/Belgrade, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (308, RU, Europe/Kaliningrad, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (309, RU, Europe/Moscow, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (310, RU, Europe/Simferopol, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (311, RU, Europe/Volgograd, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (312, RU, Europe/Kirov, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (313, RU, Europe/Astrakhan, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (314, RU, Europe/Saratov, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (315, RU, Europe/Ulyanovsk, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (316, RU, Europe/Samara, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (317, RU, Asia/Yekaterinburg, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (318, RU, Asia/Omsk, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (319, RU, Asia/Novosibirsk, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (320, RU, Asia/Barnaul, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (321, RU, Asia/Tomsk, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (322, RU, Asia/Novokuznetsk, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (323, RU, Asia/Krasnoyarsk, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (324, RU, Asia/Irkutsk, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (325, RU, Asia/Chita, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (326, RU, Asia/Yakutsk, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (327, RU, Asia/Khandyga, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (328, RU, Asia/Vladivostok, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (329, RU, Asia/Ust-Nera, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (330, RU, Asia/Magadan, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (331, RU, Asia/Sakhalin, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (332, RU, Asia/Srednekolymsk, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (333, RU, Asia/Kamchatka, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (334, RU, Asia/Anadyr, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (335, RW, Africa/Kigali, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (336, SA, Asia/Riyadh, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (337, SB, Pacific/Guadalcanal, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (338, SC, Indian/Mahe, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (339, SD, Africa/Khartoum, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (340, SE, Europe/Stockholm, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (341, SG, Asia/Singapore, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (342, SH, Atlantic/St_Helena, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (343, SI, Europe/Ljubljana, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (344, SJ, Arctic/Longyearbyen, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (345, SK, Europe/Bratislava, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (346, SL, Africa/Freetown, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (347, SM, Europe/San_Marino, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (348, SN, Africa/Dakar, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (349, SO, Africa/Mogadishu, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (350, SR, America/Paramaribo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (351, SS, Africa/Juba, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (352, ST, Africa/Sao_Tome, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (353, SV, America/El_Salvador, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (354, SX, America/Lower_Princes, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (355, SY, Asia/Damascus, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (356, SZ, Africa/Mbabane, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (357, TC, America/Grand_Turk, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (358, TD, Africa/Ndjamena, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (359, TF, Indian/Kerguelen, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (360, TG, Africa/Lome, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (361, TH, Asia/Bangkok, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (362, TJ, Asia/Dushanbe, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (363, TK, Pacific/Fakaofo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (364, TL, Asia/Dili, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (365, TM, Asia/Ashgabat, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (366, TN, Africa/Tunis, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (367, TO, Pacific/Tongatapu, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (368, TR, Europe/Istanbul, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (369, TT, America/Port_of_Spain, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (370, TV, Pacific/Funafuti, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (371, TW, Asia/Taipei, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (372, TZ, Africa/Dar_es_Salaam, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (373, UA, Europe/Kiev, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (374, UA, Europe/Uzhgorod, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (375, UA, Europe/Zaporozhye, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (376, UG, Africa/Kampala, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (377, UM, Pacific/Midway, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (378, UM, Pacific/Wake, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (379, US, America/New_York, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (380, US, America/Detroit, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (381, US, America/Kentucky/Louisville, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (382, US, America/Kentucky/Monticello, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (383, US, America/Indiana/Indianapolis, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (384, US, America/Indiana/Vincennes, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (385, US, America/Indiana/Winamac, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (386, US, America/Indiana/Marengo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (387, US, America/Indiana/Petersburg, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (388, US, America/Indiana/Vevay, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (389, US, America/Chicago, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (390, US, America/Indiana/Tell_City, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (391, US, America/Indiana/Knox, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (392, US, America/Menominee, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (393, US, America/North_Dakota/Center, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (394, US, America/North_Dakota/New_Salem, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (395, US, America/North_Dakota/Beulah, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (396, US, America/Denver, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (397, US, America/Boise, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (398, US, America/Phoenix, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (399, US, America/Los_Angeles, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (400, US, America/Anchorage, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (401, US, America/Juneau, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (402, US, America/Sitka, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (403, US, America/Metlakatla, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (404, US, America/Yakutat, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (405, US, America/Nome, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (406, US, America/Adak, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (407, US, Pacific/Honolulu, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (408, UY, America/Montevideo, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (409, UZ, Asia/Samarkand, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (410, UZ, Asia/Tashkent, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (411, VA, Europe/Vatican, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (412, VC, America/St_Vincent, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (413, VE, America/Caracas, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (414, VG, America/Tortola, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (415, VI, America/St_Thomas, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (416, VN, Asia/Ho_Chi_Minh, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (417, VU, Pacific/Efate, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (418, WF, Pacific/Wallis, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (419, WS, Pacific/Apia, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (420, YE, Asia/Aden, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (421, YT, Indian/Mayotte, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (422, ZA, Africa/Johannesburg, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (423, ZM, Africa/Lusaka, Live);
INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES (424, ZW, Africa/Harare, Live);


#
# TABLE STRUCTURE FOR: tbl_units
#

DROP TABLE IF EXISTS `tbl_units`;

CREATE TABLE `tbl_units` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(10) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `company_id` int(1) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `tbl_units` (`id`, `unit_name`, `description`, `company_id`, `del_status`) VALUES (1, kg, , 1, Live);
INSERT INTO `tbl_units` (`id`, `unit_name`, `description`, `company_id`, `del_status`) VALUES (2, mg, , 1, Live);
INSERT INTO `tbl_units` (`id`, `unit_name`, `description`, `company_id`, `del_status`) VALUES (3, pcs, , 1, Live);


#
# TABLE STRUCTURE FOR: tbl_user_menu_access
#

DROP TABLE IF EXISTS `tbl_user_menu_access`;

CREATE TABLE `tbl_user_menu_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (1, 1, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (2, 2, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (3, 3, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (4, 4, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (6, 6, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (7, 7, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (8, 8, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (9, 9, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (10, 10, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (11, 9, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (12, 11, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (46, 13, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (103, 14, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (104, 15, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (118, 16, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (133, 5, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (134, 10, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (135, 12, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (140, 17, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (141, 18, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (142, 19, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (160, 17, 4);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (161, 18, 4);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (162, 19, 4);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (172, 18, 10);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (186, 1, 9);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (187, 19, 9);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (193, 1, 3);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (194, 19, 3);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (195, 14, 13);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (196, 1, 14);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (197, 15, 14);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (200, 1, 16);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (203, 1, 18);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (205, 15, 17);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (206, 1, 17);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (208, 1, 20);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (209, 1, 21);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (210, 20, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (211, 20, 22);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (212, 20, 22);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (215, 19, 23);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (216, 20, 23);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (217, 1, 24);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (218, 15, 24);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (219, 1, 25);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (220, 20, 26);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (221, 21, 1);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (222, 20, 27);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (223, 20, 27);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (224, 21, 28);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (225, 15, 28);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (226, 1, 28);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (227, 21, 28);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (228, 15, 28);
INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES (229, 1, 28);


#
# TABLE STRUCTURE FOR: tbl_users
#

DROP TABLE IF EXISTS `tbl_users`;

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(25) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `will_login` varchar(20) NOT NULL DEFAULT 'No',
  `role` varchar(25) NOT NULL,
  `outlet_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `account_creation_date` datetime NOT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'english',
  `last_login` datetime NOT NULL,
  `active_status` varchar(25) NOT NULL DEFAULT 'Active',
  `del_status` varchar(10) NOT NULL DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_users` (`id`, `full_name`, `phone`, `email_address`, `password`, `designation`, `will_login`, `role`, `outlet_id`, `company_id`, `account_creation_date`, `language`, `last_login`, `active_status`, `del_status`) VALUES (1, admin, 03335021961, admin@admin.com, admin, admin, No, Admin, 1, 1, 2020-01-11 00:00:00, english, 0000-00-00 00:00:00, Active, Live);
INSERT INTO `tbl_users` (`id`, `full_name`, `phone`, `email_address`, `password`, `designation`, `will_login`, `role`, `outlet_id`, `company_id`, `account_creation_date`, `language`, `last_login`, `active_status`, `del_status`) VALUES (26, afaq, 033350219061, afaq@gmail.com, 123456, Waiter, Yes, POS User, 1, 1, 0000-00-00 00:00:00, english, 0000-00-00 00:00:00, Active, Live);
INSERT INTO `tbl_users` (`id`, `full_name`, `phone`, `email_address`, `password`, `designation`, `will_login`, `role`, `outlet_id`, `company_id`, `account_creation_date`, `language`, `last_login`, `active_status`, `del_status`) VALUES (27, muhammad, 042423, theprofexo@gmail.com, 123456, Superintendent, Yes, User, 1, 1, 0000-00-00 00:00:00, english, 0000-00-00 00:00:00, Active, Live);
INSERT INTO `tbl_users` (`id`, `full_name`, `phone`, `email_address`, `password`, `designation`, `will_login`, `role`, `outlet_id`, `company_id`, `account_creation_date`, `language`, `last_login`, `active_status`, `del_status`) VALUES (28, cashier, 033350219614, cashier@gmail.com, 123456, Cashier, Yes, User, 1, 1, 0000-00-00 00:00:00, english, 0000-00-00 00:00:00, Active, Live);


#
# TABLE STRUCTURE FOR: tbl_vats
#

DROP TABLE IF EXISTS `tbl_vats`;

CREATE TABLE `tbl_vats` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `percentage` float(10,2) NOT NULL,
  `user_id` float(10,2) NOT NULL DEFAULT '1.00',
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(6) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_vats` (`id`, `name`, `percentage`, `user_id`, `company_id`, `del_status`) VALUES (1, General VAT, 15.00, 0.00, 1, Live);
INSERT INTO `tbl_vats` (`id`, `name`, `percentage`, `user_id`, `company_id`, `del_status`) VALUES (2, Sales Tax, 15.00, 1.00, 1, Live);


#
# TABLE STRUCTURE FOR: tbl_waste_ingredients
#

DROP TABLE IF EXISTS `tbl_waste_ingredients`;

CREATE TABLE `tbl_waste_ingredients` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ingredient_id` int(10) DEFAULT NULL,
  `waste_amount` float(10,2) DEFAULT NULL,
  `last_purchase_price` float(10,2) DEFAULT NULL,
  `loss_amount` float(10,2) DEFAULT NULL,
  `waste_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: tbl_wastes
#

DROP TABLE IF EXISTS `tbl_wastes`;

CREATE TABLE `tbl_wastes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `total_loss` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  `food_menu_id` int(11) DEFAULT NULL,
  `food_menu_waste_qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

