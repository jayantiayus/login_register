-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 03, 2017 at 09:56 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `codeigniter_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `anak`
--

CREATE TABLE IF NOT EXISTS `anak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `fk_pegawai` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pegawai_anak` (`fk_pegawai`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `anak`
--

INSERT INTO `anak` (`id`, `nama`, `tanggalLahir`, `fk_pegawai`) VALUES
(1, 'Umar Khairullah Al Fatih', '2017-10-10', 1),
(2, 'Usman Khairullah Al Fatih', '2019-10-10', 1),
(3, 'Bujang Kelana', '2017-11-11', 2),
(4, 'Tere Liyane', '2018-11-11', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bidang_keahlian`
--

CREATE TABLE IF NOT EXISTS `bidang_keahlian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namaBidang` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bidang_keahlian`
--

INSERT INTO `bidang_keahlian` (`id`, `namaBidang`) VALUES
(1, 'Sistem Informasi'),
(2, 'Jaringan Komputer');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan_pegawai`
--

CREATE TABLE IF NOT EXISTS `jabatan_pegawai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namaJabatan` varchar(255) NOT NULL,
  `tanggalMulai` date NOT NULL,
  `tanggalSelesai` date NOT NULL,
  `fk_pegawai` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pegawai` (`fk_pegawai`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `jabatan_pegawai`
--

INSERT INTO `jabatan_pegawai` (`id`, `namaJabatan`, `tanggalMulai`, `tanggalSelesai`, `fk_pegawai`) VALUES
(1, 'The Conquerror', '1945-01-01', '1954-01-01', 1),
(2, 'The Wise Leader', '1954-01-02', '1964-01-01', 1),
(3, 'The Novelist', '2000-10-10', '2010-10-10', 2),
(4, 'The Epic Novelist', '2010-10-10', '2015-10-10', 2),
(5, 'asaksjdfhjasf', '0000-00-00', '0000-00-00', 1),
(6, 'Tes Jabatan Baru', '0000-00-00', '0000-00-00', 1),
(7, 'baru', '0000-00-00', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `nip`, `tanggalLahir`, `alamat`, `foto`) VALUES
(1, 'Muhammad Al Fatih Edited', '198611032014041001', '1986-03-11', 'Jalan Konstantinopel no 1945', ''),
(2, 'Tere Liye', '196811032014041001', '1968-03-11', 'Jalan Negeri di ujung tanduk no 99', ''),
(21, '12313', '', '0000-00-00', '', 'Screen_Shot_2017-03-25_at_20_08_183.png'),
(22, '12313', '', '0000-00-00', '', 'Screen_Shot_2017-03-25_at_20_08_184.png'),
(23, 'Joko', '33333', '2017-04-12', 'adadsad', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `username`, `password`) VALUES
(1, '', '', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, '', '', '', ''),
(3, 'mafruroh', 'urochvhs4mlg@gmail.com', 'uroh', '202cb962ac59075b964b07152d234b70'),
(4, 'mafruroh', 'urochvhs4mlg@gmail.com', 'uroh', '202cb962ac59075b964b07152d234b70'),
(5, 'mafruroh', 'urochvhs4mlg@gmail.com', 'uroh', '202cb962ac59075b964b07152d234b70'),
(6, 'eva susanti', 'evas@gmail.com', 'eva', 'c22cbce29ad4475eb7dc401ac4680333'),
(7, 'mafruroh', 'uroh@gmail.com', 'urohh', '202cb962ac59075b964b07152d234b70'),
(8, 'sabilillah', 'sabil@gmail.com', 'sabil', '1bd52cb319761cd63f885fd9142d66cb'),
(9, 'sabilillah', 'sabil@gmail.com', 'sabil', '1bd52cb319761cd63f885fd9142d66cb'),
(10, 'Amirullah', 'amirullah@gmail.com', 'amir', '4e72fc71d6afe049572655387d0f5346');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anak`
--
ALTER TABLE `anak`
  ADD CONSTRAINT `fk_pegawai_anak` FOREIGN KEY (`fk_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `jabatan_pegawai`
--
ALTER TABLE `jabatan_pegawai`
  ADD CONSTRAINT `fk_pegawai` FOREIGN KEY (`fk_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
