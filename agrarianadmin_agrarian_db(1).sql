-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2025 at 10:25 AM
-- Server version: 10.3.39-MariaDB-0ubuntu0.20.04.2
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrarianadmin_agrarian_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `log_data`
--

CREATE TABLE `log_data` (
  `log_no` int(11) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `work_done` varchar(150) NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `auto_id` int(11) NOT NULL,
  `session_id` varchar(2000) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `user_name` varchar(1000) NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arpa`
--

CREATE TABLE `tbl_arpa` (
  `arpa_id` int(11) NOT NULL,
  `dis_id` int(11) DEFAULT NULL,
  `asc_id` int(11) DEFAULT NULL,
  `asc_code` varchar(100) DEFAULT NULL,
  `arpa_name` varchar(200) DEFAULT NULL,
  `arpa_code` varchar(100) DEFAULT NULL,
  `arpa_status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_asc`
--

CREATE TABLE `tbl_asc` (
  `asc_id` varchar(6) NOT NULL,
  `dis_id` varchar(5) NOT NULL,
  `asc_code` varchar(6) NOT NULL,
  `asc_name` varchar(100) NOT NULL,
  `asc_sname` varchar(100) NOT NULL,
  `asc_tname` varchar(100) NOT NULL,
  `asc_latitude` varchar(100) NOT NULL,
  `asc_longitude` varchar(100) NOT NULL,
  `asc_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `bank_code` varchar(4) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `bank_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bankbranch`
--

CREATE TABLE `tbl_bankbranch` (
  `branch_id` int(11) NOT NULL,
  `bank_code` varchar(4) NOT NULL,
  `branch_code` varchar(3) NOT NULL,
  `branch_name` varchar(1000) NOT NULL,
  `branch_address` varchar(1000) NOT NULL,
  `tel_01` varchar(10) NOT NULL,
  `tel_02` varchar(10) NOT NULL,
  `tel_03` varchar(10) NOT NULL,
  `tel_04` varchar(10) NOT NULL,
  `fax_no` varchar(100) NOT NULL,
  `dis_id` varchar(5) NOT NULL,
  `branch_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashgrant`
--

CREATE TABLE `tbl_cashgrant` (
  `record_id` int(20) NOT NULL,
  `slip_record_id` varchar(20) DEFAULT NULL,
  `slip_id` varchar(20) DEFAULT NULL,
  `c_id` varchar(20) DEFAULT NULL,
  `l_id` varchar(20) DEFAULT NULL,
  `asc_code` varchar(6) DEFAULT NULL,
  `l_gn` varchar(10) DEFAULT NULL,
  `l_olddos` varchar(30) DEFAULT NULL,
  `f_name` varchar(1000) DEFAULT NULL,
  `f_nic` varchar(20) DEFAULT NULL,
  `nic_check` varchar(9) DEFAULT NULL,
  `f_address` varchar(2000) DEFAULT NULL,
  `f_tp` varchar(20) DEFAULT NULL,
  `bank_code` varchar(4) DEFAULT NULL,
  `branch_code` varchar(3) DEFAULT NULL,
  `acc_no` varchar(15) DEFAULT NULL,
  `l_irrigation` varchar(20) DEFAULT NULL,
  `culti_extent` decimal(8,4) NOT NULL DEFAULT 0.0000,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `season` varchar(20) DEFAULT NULL,
  `installement` int(11) NOT NULL,
  `cg_status` int(11) NOT NULL DEFAULT 0,
  `new_reject` int(11) NOT NULL DEFAULT 0,
  `nic_vol` int(11) NOT NULL DEFAULT 0,
  `bank_vol` int(11) NOT NULL DEFAULT 0,
  `nic_iolot` int(11) NOT NULL DEFAULT 0,
  `bank_iolot` int(11) NOT NULL DEFAULT 0,
  `nic_polot` int(11) NOT NULL DEFAULT 0,
  `bank_polot` int(11) NOT NULL DEFAULT 0,
  `trance_date` date DEFAULT NULL,
  `bank_reject` int(11) NOT NULL DEFAULT 0,
  `reject_date` date DEFAULT NULL,
  `2nd_pay` int(11) DEFAULT NULL,
  `2nd_pay_id` int(11) DEFAULT NULL,
  `repay` int(11) NOT NULL DEFAULT 0,
  `repay_id` varchar(20) DEFAULT NULL,
  `remark` varchar(5000) DEFAULT NULL,
  `remark_2` varchar(5000) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_crop`
--

CREATE TABLE `tbl_crop` (
  `crop_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `crop_name` varchar(1000) NOT NULL,
  `crop_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cropcategory`
--

CREATE TABLE `tbl_cropcategory` (
  `cat_id` int(100) NOT NULL,
  `cat_name` varchar(1000) NOT NULL,
  `cat_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cultivation`
--

CREATE TABLE `tbl_cultivation` (
  `c_id` int(11) NOT NULL,
  `l_id` varchar(15) NOT NULL,
  `f_sn` varchar(15) NOT NULL,
  `acc_sn` varchar(15) DEFAULT NULL,
  `season` varchar(20) DEFAULT NULL,
  `xepct_extent` decimal(8,4) NOT NULL DEFAULT 0.0000,
  `culti_extent` decimal(8,4) DEFAULT 0.0000,
  `crop` varchar(50) DEFAULT NULL,
  `crop_type` varchar(50) DEFAULT NULL,
  `culti_date` date DEFAULT NULL,
  `damage_type` varchar(20) DEFAULT NULL,
  `damage_stage` varchar(50) DEFAULT NULL,
  `damage_percentage` varchar(50) DEFAULT NULL,
  `damage_extent` decimal(8,4) NOT NULL DEFAULT 0.0000,
  `damage_date` date DEFAULT NULL,
  `harvested_extent` decimal(8,4) DEFAULT NULL,
  `harvested_yeild` varchar(20) DEFAULT NULL,
  `harvested_date` varchar(20) DEFAULT NULL,
  `paddy_damage` int(11) DEFAULT NULL,
  `c_status` int(1) NOT NULL DEFAULT 0,
  `asc_approve` int(1) NOT NULL DEFAULT 0,
  `dis_approve` int(1) NOT NULL DEFAULT 0,
  `r_status` int(1) NOT NULL DEFAULT 0,
  `d_status` int(1) NOT NULL DEFAULT 0,
  `invalid` int(11) NOT NULL DEFAULT 0,
  `slip_generate` int(1) NOT NULL DEFAULT 0,
  `remark` varchar(5000) DEFAULT NULL,
  `last_update` varchar(50) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `dis_id` varchar(5) NOT NULL,
  `pro_id` varchar(5) NOT NULL,
  `dis_code` varchar(2) NOT NULL,
  `rdd_ro_id` int(11) NOT NULL,
  `dis_name` varchar(100) NOT NULL,
  `dis_sname` varchar(100) NOT NULL,
  `dis_tname` varchar(100) NOT NULL,
  `bank_code` varchar(4) NOT NULL,
  `branch_code` varchar(3) NOT NULL,
  `acc_no` varchar(10) NOT NULL,
  `dis_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ds`
--

CREATE TABLE `tbl_ds` (
  `ds_id` int(11) NOT NULL,
  `dis_id` varchar(5) DEFAULT NULL,
  `ds_name` varchar(37) DEFAULT NULL,
  `ds_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_famer`
--

CREATE TABLE `tbl_famer` (
  `f_sn` varchar(13) NOT NULL,
  `f_name` varchar(1000) NOT NULL,
  `f_nic` varchar(30) NOT NULL,
  `nic_check` varchar(9) NOT NULL,
  `f_address` varchar(5000) NOT NULL,
  `f_tp` varchar(10) NOT NULL,
  `f_image` varchar(2000) DEFAULT NULL,
  `f_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_famerbank`
--

CREATE TABLE `tbl_famerbank` (
  `acc_sn` varchar(15) NOT NULL,
  `f_sn` varchar(12) DEFAULT NULL,
  `bank_code` varchar(10) DEFAULT NULL,
  `branch_code` varchar(10) DEFAULT NULL,
  `branch_id` varchar(10) DEFAULT NULL,
  `acc_no` varchar(15) DEFAULT NULL,
  `invalid` int(1) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gnd`
--

CREATE TABLE `tbl_gnd` (
  `gnd_id` int(11) NOT NULL,
  `dis_code` varchar(2) DEFAULT NULL,
  `asc_code` varchar(6) NOT NULL,
  `gnd_ocode` varchar(20) NOT NULL,
  `gnd_code` varchar(9) NOT NULL,
  `gnd_lcode` varchar(10) NOT NULL,
  `gnd_name` varchar(100) NOT NULL,
  `gnd_sname` varchar(100) NOT NULL,
  `gnd_tname` varchar(100) NOT NULL,
  `gnd_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_land`
--

CREATE TABLE `tbl_land` (
  `l_id` varchar(20) NOT NULL,
  `dis_code` varchar(2) DEFAULT NULL,
  `gnd_id` int(11) DEFAULT NULL,
  `l_gn` varchar(20) DEFAULT NULL,
  `l_type` varchar(20) DEFAULT NULL,
  `l_plr_no` varchar(26) DEFAULT NULL,
  `l_newdos` varchar(50) DEFAULT NULL,
  `l_olddos` varchar(50) DEFAULT NULL,
  `l_name` varchar(2000) DEFAULT NULL,
  `l_extent` decimal(8,4) DEFAULT NULL,
  `l_irrigation` varchar(20) DEFAULT NULL,
  `asc_code` varchar(6) DEFAULT NULL,
  `l_status` int(1) DEFAULT NULL,
  `asc_approve` int(1) NOT NULL DEFAULT 0,
  `dis_approve` int(1) NOT NULL DEFAULT 0,
  `last_update` varchar(50) DEFAULT NULL,
  `last_update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paddy_type`
--

CREATE TABLE `tbl_paddy_type` (
  `paddy_type_no` int(11) NOT NULL,
  `paddy_type_name` varchar(100) NOT NULL,
  `paddy_type_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paddy_variety`
--

CREATE TABLE `tbl_paddy_variety` (
  `variety_id` int(11) NOT NULL,
  `age_group` varchar(20) NOT NULL,
  `culti_days` int(11) NOT NULL,
  `variety_name` varchar(50) NOT NULL,
  `variety_type` varchar(20) NOT NULL,
  `variety_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(100) NOT NULL,
  `page_path` varchar(500) NOT NULL,
  `page_status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_province`
--

CREATE TABLE `tbl_province` (
  `auto_id` int(11) NOT NULL,
  `pro_id` varchar(5) NOT NULL,
  `pro_code` varchar(2) NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_sname` varchar(100) NOT NULL,
  `pro_tname` varchar(100) NOT NULL,
  `pro_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subsidies`
--

CREATE TABLE `tbl_subsidies` (
  `record_id` int(11) NOT NULL,
  `f_sn` varchar(13) NOT NULL,
  `l_id` varchar(20) NOT NULL,
  `s_season` varchar(20) NOT NULL,
  `s_extent` decimal(8,4) NOT NULL,
  `s_type` varchar(11) NOT NULL,
  `s_id` varchar(11) NOT NULL,
  `s_issu` decimal(7,3) NOT NULL,
  `s_issudate` varchar(11) NOT NULL,
  `s_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `usr_id` int(8) NOT NULL,
  `usr_fname` varchar(100) NOT NULL,
  `usr_lname` varchar(100) NOT NULL,
  `usr_name` varchar(100) NOT NULL,
  `usr_pass` varchar(100) NOT NULL,
  `usr_type` varchar(50) NOT NULL,
  `usr_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_category`
--

CREATE TABLE `tbl_user_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_types`
--

CREATE TABLE `tbl_user_types` (
  `usertype_id` int(11) NOT NULL,
  `usertype_name` varchar(100) NOT NULL,
  `usertype_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log_data`
--
ALTER TABLE `log_data`
  ADD PRIMARY KEY (`log_no`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`auto_id`);

--
-- Indexes for table `tbl_arpa`
--
ALTER TABLE `tbl_arpa`
  ADD PRIMARY KEY (`arpa_id`);

--
-- Indexes for table `tbl_asc`
--
ALTER TABLE `tbl_asc`
  ADD PRIMARY KEY (`asc_id`),
  ADD UNIQUE KEY `asc_code` (`asc_code`),
  ADD KEY `dis_id` (`dis_id`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`bank_code`);

--
-- Indexes for table `tbl_bankbranch`
--
ALTER TABLE `tbl_bankbranch`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `bank_code` (`bank_code`);

--
-- Indexes for table `tbl_cashgrant`
--
ALTER TABLE `tbl_cashgrant`
  ADD PRIMARY KEY (`record_id`);

--
-- Indexes for table `tbl_crop`
--
ALTER TABLE `tbl_crop`
  ADD PRIMARY KEY (`crop_id`);

--
-- Indexes for table `tbl_cropcategory`
--
ALTER TABLE `tbl_cropcategory`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_cultivation`
--
ALTER TABLE `tbl_cultivation`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `l_id` (`l_id`,`f_sn`),
  ADD KEY `f_sn` (`f_sn`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`dis_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `tbl_ds`
--
ALTER TABLE `tbl_ds`
  ADD PRIMARY KEY (`ds_id`);

--
-- Indexes for table `tbl_famer`
--
ALTER TABLE `tbl_famer`
  ADD PRIMARY KEY (`f_sn`);

--
-- Indexes for table `tbl_famerbank`
--
ALTER TABLE `tbl_famerbank`
  ADD PRIMARY KEY (`acc_sn`);

--
-- Indexes for table `tbl_gnd`
--
ALTER TABLE `tbl_gnd`
  ADD PRIMARY KEY (`gnd_id`),
  ADD KEY `asc_code` (`asc_code`);

--
-- Indexes for table `tbl_land`
--
ALTER TABLE `tbl_land`
  ADD PRIMARY KEY (`l_id`),
  ADD KEY `asc_code` (`asc_code`);

--
-- Indexes for table `tbl_paddy_type`
--
ALTER TABLE `tbl_paddy_type`
  ADD PRIMARY KEY (`paddy_type_no`);

--
-- Indexes for table `tbl_paddy_variety`
--
ALTER TABLE `tbl_paddy_variety`
  ADD PRIMARY KEY (`variety_id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `page_name` (`page_name`);

--
-- Indexes for table `tbl_province`
--
ALTER TABLE `tbl_province`
  ADD PRIMARY KEY (`auto_id`),
  ADD KEY `tbl_province_ibfk_1` (`pro_id`);

--
-- Indexes for table `tbl_subsidies`
--
ALTER TABLE `tbl_subsidies`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `f_sn` (`f_sn`,`l_id`),
  ADD KEY `tbl_subsidies_ibfk_2` (`l_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`usr_id`),
  ADD UNIQUE KEY `usr_name` (`usr_name`);

--
-- Indexes for table `tbl_user_category`
--
ALTER TABLE `tbl_user_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_user_types`
--
ALTER TABLE `tbl_user_types`
  ADD PRIMARY KEY (`usertype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log_data`
--
ALTER TABLE `log_data`
  MODIFY `log_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_arpa`
--
ALTER TABLE `tbl_arpa`
  MODIFY `arpa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bankbranch`
--
ALTER TABLE `tbl_bankbranch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cashgrant`
--
ALTER TABLE `tbl_cashgrant`
  MODIFY `record_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_crop`
--
ALTER TABLE `tbl_crop`
  MODIFY `crop_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cropcategory`
--
ALTER TABLE `tbl_cropcategory`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cultivation`
--
ALTER TABLE `tbl_cultivation`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_gnd`
--
ALTER TABLE `tbl_gnd`
  MODIFY `gnd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_paddy_type`
--
ALTER TABLE `tbl_paddy_type`
  MODIFY `paddy_type_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_paddy_variety`
--
ALTER TABLE `tbl_paddy_variety`
  MODIFY `variety_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_province`
--
ALTER TABLE `tbl_province`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_subsidies`
--
ALTER TABLE `tbl_subsidies`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_category`
--
ALTER TABLE `tbl_user_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_types`
--
ALTER TABLE `tbl_user_types`
  MODIFY `usertype_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD CONSTRAINT `tbl_bank_ibfk_1` FOREIGN KEY (`bank_code`) REFERENCES `tbl_bankbranch` (`bank_code`);

--
-- Constraints for table `tbl_bankbranch`
--
ALTER TABLE `tbl_bankbranch`
  ADD CONSTRAINT `tbl_bankbranch_ibfk_1` FOREIGN KEY (`bank_code`) REFERENCES `tbl_bank` (`bank_code`);

--
-- Constraints for table `tbl_cultivation`
--
ALTER TABLE `tbl_cultivation`
  ADD CONSTRAINT `tbl_cultivation_ibfk_1` FOREIGN KEY (`l_id`) REFERENCES `tbl_land` (`l_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_cultivation_ibfk_2` FOREIGN KEY (`f_sn`) REFERENCES `tbl_famer` (`f_sn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD CONSTRAINT `tbl_district_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `tbl_province` (`pro_id`);

--
-- Constraints for table `tbl_province`
--
ALTER TABLE `tbl_province`
  ADD CONSTRAINT `tbl_province_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `tbl_district` (`pro_id`);

--
-- Constraints for table `tbl_subsidies`
--
ALTER TABLE `tbl_subsidies`
  ADD CONSTRAINT `tbl_subsidies_ibfk_1` FOREIGN KEY (`f_sn`) REFERENCES `tbl_famer` (`f_sn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_subsidies_ibfk_2` FOREIGN KEY (`l_id`) REFERENCES `tbl_land` (`l_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
