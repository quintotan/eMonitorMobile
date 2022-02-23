-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2022 at 04:44 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emonitor`
--

-- --------------------------------------------------------

--
-- Table structure for table `als_educational_attainment`
--

CREATE TABLE `als_educational_attainment` (
  `elementary` varchar(10) DEFAULT NULL,
  `secondary` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `als_youth_other_details`
--

CREATE TABLE `als_youth_other_details` (
  `youth_id` varchar(20) DEFAULT NULL,
  `elementary` varchar(20) DEFAULT NULL,
  `secondary` varchar(20) DEFAULT NULL,
  `no_school_in_barangay` varchar(5) DEFAULT NULL,
  `unable_to_pay` varchar(5) DEFAULT NULL,
  `school_too_far` varchar(5) DEFAULT NULL,
  `other_reasons_for_dropout` varchar(255) DEFAULT NULL,
  `distance_from_school_inKMS` varchar(20) DEFAULT NULL,
  `distance_from_school_inHRS` varchar(20) DEFAULT NULL,
  `mode_of_transportation` varchar(50) DEFAULT NULL,
  `day_can_attend` varchar(20) DEFAULT NULL,
  `pass_the_AcademicEquivalency_test` varchar(5) DEFAULT NULL,
  `attended_ALS_session_before` varchar(5) DEFAULT NULL,
  `name_of_program` varchar(255) DEFAULT NULL,
  `year_attended` int(4) DEFAULT NULL,
  `level_of_literacy` varchar(255) DEFAULT NULL,
  `isCourse_completed` varchar(5) DEFAULT NULL,
  `reason_for_notCompleted` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `als_youth_other_details`
--

INSERT INTO `als_youth_other_details` (`youth_id`, `elementary`, `secondary`, `no_school_in_barangay`, `unable_to_pay`, `school_too_far`, `other_reasons_for_dropout`, `distance_from_school_inKMS`, `distance_from_school_inHRS`, `mode_of_transportation`, `day_can_attend`, `pass_the_AcademicEquivalency_test`, `attended_ALS_session_before`, `name_of_program`, `year_attended`, `level_of_literacy`, `isCourse_completed`, `reason_for_notCompleted`) VALUES
('18', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '1-2', '1-2', 'Walking', 'Monday', 'Yes', 'No', '', 0, '', 'Yes', ''),
('18', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '1-2', '1-2', 'Walking', 'Monday', 'Yes', 'No', '', 0, '', 'Yes', ''),
('18', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '1-2', '1-2', 'Walking', 'Monday', 'Yes', 'No', '', 0, '', 'Yes', ''),
('18', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '1-2', '1-2', 'Walking', 'Monday', 'Yes', 'No', '', 0, '', 'Yes', ''),
('21', 'G-5', 'N/A', 'Yes', 'Yes', 'No', 'Help to parents', '1-2', '2-3', 'Walking', 'Thursday', 'No', 'No', '', 0, '', 'Yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `als_youth_why_dropout`
--

CREATE TABLE `als_youth_why_dropout` (
  `youth_id` varchar(20) DEFAULT NULL,
  `no_school_in_barangay` tinyint(1) DEFAULT NULL,
  `unable_to_pay` tinyint(1) DEFAULT NULL,
  `school_too_far` tinyint(1) DEFAULT NULL,
  `other_reasons` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `barangay`
--

CREATE TABLE `barangay` (
  `zip_code` int(4) NOT NULL,
  `barangay_id` int(11) NOT NULL,
  `barangay_name` varchar(255) NOT NULL,
  `district` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barangay`
--

INSERT INTO `barangay` (`zip_code`, `barangay_id`, `barangay_name`, `district`) VALUES
(9000, 1, 'Agusan', 1),
(9000, 2, 'Baikingon', 0),
(9000, 3, 'Balubal', 2),
(9000, 4, 'Barangay 1', 2),
(9000, 5, 'Barangay 2', 2),
(9000, 6, 'Barangay 3', 2),
(9000, 7, 'Barangay 4', 2),
(9000, 8, 'Barangay 5', 2),
(9000, 9, 'Barangay 6', 2),
(9000, 10, 'Barangay 7', 2),
(9000, 11, 'Barangay 8', 2),
(9000, 12, 'Barangay 9', 2),
(9000, 13, 'Barangay 10', 2),
(9000, 14, 'Barangay 11', 2),
(9000, 15, 'Barangay 12', 2),
(9000, 16, 'Barangay 13', 2),
(9000, 17, 'Barangay 14', 2),
(9000, 18, 'Barangay 15', 2),
(9000, 19, 'Barangay 16', 2),
(9000, 20, 'Barangay 17', 2),
(9000, 21, 'Barangay 18', 2),
(9000, 22, 'Barangay 19', 2),
(9000, 23, 'Barangay 20', 2),
(9000, 24, 'Barangay 21', 2),
(9000, 25, 'Barangay 22', 2),
(9000, 26, 'Barangay 23', 2),
(9000, 27, 'Barangay 24', 2),
(9000, 28, 'Barangay 25', 2),
(9000, 29, 'Barangay 26', 2),
(9000, 30, 'Barangay 27', 2),
(9000, 31, 'Barangay 28', 2),
(9000, 32, 'Barangay 29', 2),
(9000, 33, 'Barangay 30', 2),
(9000, 34, 'Barangay 31', 2),
(9000, 35, 'Barangay 32', 2),
(9000, 36, 'Barangay 33', 2),
(9000, 37, 'Barangay 34', 2),
(9000, 38, 'Barangay 35', 2),
(9000, 39, 'Barangay 36', 2),
(9000, 40, 'Barangay 37', 2),
(9000, 41, 'Barangay 38', 2),
(9000, 42, 'Barangay 39', 2),
(9000, 43, 'Barangay 40', 2),
(9000, 44, 'Bayabas', 1),
(9000, 45, 'Bayanga', 1),
(9000, 46, 'Besigan', 1),
(9000, 47, 'Bonbon', 1),
(9000, 48, 'Bugo', 1),
(9000, 49, 'Bulua', 1),
(9000, 50, 'Camaman-an', 2),
(9000, 51, 'Canitoan', 1),
(9018, 1, 'Baybay', 0),
(9018, 2, 'Benigwayan', 0),
(9018, 3, 'Calatcat', 0),
(9018, 4, 'Lagtang', 0),
(9018, 5, 'Lanao', 0),
(9018, 6, 'Loguilo', 0),
(9018, 7, 'Lourdes', 0),
(9018, 8, 'Lumbo', 0),
(9018, 9, 'Molocboloc', 0),
(9018, 10, 'Poblacion', 0),
(9018, 11, 'Sampatulog', 0),
(9018, 12, 'Sungay', 0),
(9018, 13, 'Talaba', 0),
(9018, 14, 'Taparak', 0),
(9018, 15, 'Tugasnon', 0),
(9018, 16, 'Tula', 0),
(9005, 1, 'Balagnan', 0),
(9005, 2, 'Baliwagan', 0),
(9005, 3, 'Barangay 1', 0),
(9005, 4, 'Barangay 2', 0),
(9005, 5, 'Barangay 3', 0),
(9005, 6, 'Barangay 4', 0),
(9005, 7, 'Barangay 5', 0),
(9005, 8, 'Barangay 6', 0),
(9005, 9, 'Blanco', 0),
(9005, 10, 'Calawag', 0),
(9005, 12, 'Cogon', 0),
(9005, 13, 'Dansuli', 0),
(9005, 14, 'Dumarait', 0),
(9005, 15, 'Hermano', 0),
(9005, 16, 'Kibanban', 0),
(9005, 17, 'Linabu', 0),
(9005, 18, 'Linggangao', 0),
(9005, 19, 'Mambayaan', 0),
(9005, 20, 'Mandangoa', 0),
(9005, 21, 'Napaliran', 0),
(9005, 22, 'Quezon', 0),
(9005, 23, 'Rosario', 0),
(9005, 24, 'Samay', 0),
(9005, 25, 'San Franciso', 0),
(9005, 26, 'San Isidro', 0),
(9005, 27, 'San Juan', 0),
(9005, 28, 'Talusan', 0),
(9005, 29, 'Waterfall', 0),
(9000, 52, 'Carmen', 1),
(9000, 53, 'Consolacion', 2),
(9000, 66, 'Nazareth', 2),
(9000, 67, 'Pagalungan', 0),
(9000, 68, 'Pagatpat', 1),
(9000, 69, 'Patag', 1),
(9000, 70, 'Pigsag-an', 0),
(9000, 71, 'Puerto', 2),
(9000, 72, 'Puntod', 2),
(9000, 73, 'San Simon', 1),
(9000, 74, 'Tablon', 2),
(9000, 75, 'Taglimao', 0),
(9000, 76, 'Tignapoloan', 0),
(9000, 77, 'Tuburan', 0),
(9000, 78, 'Tumpagon', 0),
(9000, 54, 'Cugman', 2),
(9000, 55, 'Dansolihon', 1),
(9000, 56, 'F.S Catanico', 2),
(9000, 57, 'Gusa', 2),
(9000, 58, 'Indahag', 2),
(9000, 59, 'Iponan', 1),
(9000, 60, 'Kauswagan', 1),
(9000, 61, 'Lapasan', 2),
(9000, 62, 'Lumbia', 1),
(9000, 63, 'Macabalan', 2),
(9000, 64, 'Macasandig', 2);

-- --------------------------------------------------------

--
-- Table structure for table `city_municipality`
--

CREATE TABLE `city_municipality` (
  `region_no` int(11) NOT NULL,
  `zip_code` int(4) NOT NULL,
  `city_municipality_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city_municipality`
--

INSERT INTO `city_municipality` (`region_no`, `zip_code`, `city_municipality_name`) VALUES
(10, 9018, 'Alubijid'),
(10, 9005, 'Balingasag'),
(10, 9011, 'Balinguan'),
(10, 9008, 'Binuangan'),
(10, 9000, 'Cagayan de Oro City'),
(10, 9004, 'Claveria'),
(10, 9017, 'El Salvador City'),
(10, 9014, 'Gingoog City'),
(10, 9020, 'Gitagum'),
(10, 9022, 'Initao'),
(10, 9003, 'Jasaan'),
(10, 9010, 'Kinogitan'),
(10, 9006, 'Lagonglong'),
(10, 9019, 'Laguindingan'),
(10, 9021, 'Libertad'),
(10, 9020, 'Lugait'),
(10, 9015, 'Magsaysay'),
(10, 9024, 'Manticao'),
(10, 9013, 'Medina'),
(10, 9023, 'Naawan'),
(10, 9016, 'Opol'),
(10, 9007, 'Salay'),
(10, 9009, 'Sugbongcogon'),
(10, 9001, 'Tagoloan'),
(10, 9012, 'Talisayan'),
(10, 9002, 'Villanueva');

-- --------------------------------------------------------

--
-- Table structure for table `common_youth_profile`
--

CREATE TABLE `common_youth_profile` (
  `id` int(11) NOT NULL,
  `last_name` varchar(125) NOT NULL,
  `first_name` varchar(125) NOT NULL,
  `middle_name` varchar(125) DEFAULT NULL,
  `suffix` varchar(10) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `place_of_birth` text NOT NULL,
  `civil_status` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `fathers_name` varchar(255) DEFAULT NULL,
  `mothers_name` varchar(255) NOT NULL,
  `region` varchar(50) NOT NULL,
  `city` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `street` text NOT NULL,
  `province` varchar(255) NOT NULL,
  `district` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `contact_no` varchar(50) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `common_youth_profile`
--

INSERT INTO `common_youth_profile` (`id`, `last_name`, `first_name`, `middle_name`, `suffix`, `birthdate`, `place_of_birth`, `civil_status`, `gender`, `fathers_name`, `mothers_name`, `region`, `city`, `barangay`, `street`, `province`, `district`, `nationality`, `contact_no`, `email_address`, `password`) VALUES
(19, 'Tan', 'Jun', '', '', '1990-01-01', 'Marife Tan', 'Single', 'Male', '', 'Sally Tan', '10', '9005', '2', 'Lower Casulog', 'Misamis Oriental', 'District 1', 'Beny Tan', '09156824565', 'quintotan@gmail.com', '12345'),
(20, 'Tan', 'Fayesha', 'Sangkula', '', '2000-05-05', 'Camiguin', 'Married', 'Female', 'Abdul Haji', 'Vergelia Sangkula', '10', '9000', '60', 'Phase 2', 'Misamis Oriental', 'District 1', 'Filipino', '09156824565', 'ken2_032000@yahoo.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `learners_login`
--

CREATE TABLE `learners_login` (
  `learners_id` int(11) NOT NULL,
  `lrn_no` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learners_login`
--

INSERT INTO `learners_login` (`learners_id`, `lrn_no`, `username`, `password`) VALUES
(1, 1000, 'juntan', '12345'),
(2, 1001, 'jhon', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `pyap_youth_other_details`
--

CREATE TABLE `pyap_youth_other_details` (
  `youth_id` varchar(20) DEFAULT NULL,
  `educational_attainment` varchar(200) DEFAULT NULL,
  `last_year_attended` int(11) DEFAULT NULL,
  `current_status` varchar(255) DEFAULT NULL,
  `reason_for_stopping` varchar(255) DEFAULT NULL,
  `interested_in_skills_training` varchar(5) DEFAULT NULL,
  `first_option` varchar(255) DEFAULT NULL,
  `second_option` varchar(255) DEFAULT NULL,
  `third_option` varchar(255) DEFAULT NULL,
  `first_company` varchar(255) DEFAULT NULL,
  `first_position` varchar(100) DEFAULT NULL,
  `first_year_employed` int(11) DEFAULT NULL,
  `second_company` varchar(255) DEFAULT NULL,
  `second_position` varchar(100) DEFAULT NULL,
  `second_year_employed` int(11) DEFAULT NULL,
  `third_company` varchar(255) DEFAULT NULL,
  `third_position` varchar(100) DEFAULT NULL,
  `third_year_employed` int(11) DEFAULT NULL,
  `program_to_avail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pyap_youth_other_details`
--

INSERT INTO `pyap_youth_other_details` (`youth_id`, `educational_attainment`, `last_year_attended`, `current_status`, `reason_for_stopping`, `interested_in_skills_training`, `first_option`, `second_option`, `third_option`, `first_company`, `first_position`, `first_year_employed`, `second_company`, `second_position`, `second_year_employed`, `third_company`, `third_position`, `third_year_employed`, `program_to_avail`) VALUES
('19', 'Junior High School Level', 2012, 'Working Youth', 'Need to work', 'Yes', 'CARPENTRY NC II (38 Days)', '', '', 'LNB Trucking', 'Warehouse man', 7, '', '', 0, '', '', 0, 'CDO Technical Vocational Institute');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `region_no` int(11) NOT NULL,
  `region_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`region_no`, `region_description`) VALUES
(10, 'Region 10'),
(9, 'Region 9'),
(11, 'Region 11');

-- --------------------------------------------------------

--
-- Table structure for table `tesda_youth_other_details`
--

CREATE TABLE `tesda_youth_other_details` (
  `youth_id` varchar(20) DEFAULT NULL,
  `educational_attainment` varchar(50) DEFAULT NULL,
  `client_classification` varchar(100) DEFAULT NULL,
  `course_name` varchar(200) DEFAULT NULL,
  `scholarship_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tesda_youth_other_details`
--

INSERT INTO `tesda_youth_other_details` (`youth_id`, `educational_attainment`, `client_classification`, `course_name`, `scholarship_name`) VALUES
('19', 'High School Graduate', 'Returning/Repatriated OFWs', 'Computer Services and Server', NULL),
('19', 'Elementary Undergraduate', 'Farmers and Fisherman', 'Welding', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unified_youth_account`
--

CREATE TABLE `unified_youth_account` (
  `youth_id` varchar(50) DEFAULT NULL,
  `agency_registered` varchar(50) DEFAULT NULL,
  `isfirst_login` tinyint(1) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unified_youth_account`
--

INSERT INTO `unified_youth_account` (`youth_id`, `agency_registered`, `isfirst_login`, `status`) VALUES
('18', 'ALS', 1, 'NOT VERIFIED'),
('19', 'TESDA', 1, 'NOT VERIFIED'),
('20', 'PYAP', 1, 'NOT VERIFIED'),
('21', 'ALS', 1, 'NOT VERIFIED');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `common_youth_profile`
--
ALTER TABLE `common_youth_profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `common_youth_profile`
--
ALTER TABLE `common_youth_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
