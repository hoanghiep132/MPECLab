-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: DoAnI
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Anh`
--

DROP TABLE IF EXISTS `Anh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Anh` (
  `id_anh` int(11) NOT NULL AUTO_INCREMENT,
  `anh` varchar(45) NOT NULL,
  `id_khach_hang` int(11) DEFAULT NULL,
  `id_nhan_vien` int(11) DEFAULT NULL,
  `id_hang_hoa` int(11) DEFAULT NULL,
  `id_nha_cung_cap` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_anh`),
  KEY `fk_Anh_1_idx` (`id_khach_hang`),
  KEY `fk_Anh_3_idx` (`id_hang_hoa`),
  KEY `fk_Anh_2_idx` (`id_nhan_vien`),
  KEY `fk_Anh_4_idx` (`id_nha_cung_cap`),
  CONSTRAINT `fk_Anh_1` FOREIGN KEY (`id_khach_hang`) REFERENCES `Khach_Hang` (`id_khach_hang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Anh_2` FOREIGN KEY (`id_nhan_vien`) REFERENCES `Nhan_Vien` (`id_nhan_vien`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Anh_3` FOREIGN KEY (`id_hang_hoa`) REFERENCES `Hang_Hoa` (`id_hang_hoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Anh_4` FOREIGN KEY (`id_nha_cung_cap`) REFERENCES `Nha_Cung_Cap` (`id_nha_cung_cap`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ca_Lam_Viec`
--

DROP TABLE IF EXISTS `Ca_Lam_Viec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ca_Lam_Viec` (
  `id_ca_lam_viec` int(11) NOT NULL AUTO_INCREMENT,
  `ten_ca` varchar(45) NOT NULL,
  `gio_bat_dau` time NOT NULL,
  `so_gio` time NOT NULL,
  `so_cong` double NOT NULL,
  `ghi_chu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_ca_lam_viec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Chi_Nhanh`
--

DROP TABLE IF EXISTS `Chi_Nhanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Chi_Nhanh` (
  `id_chi_nhanh` int(11) NOT NULL AUTO_INCREMENT,
  `ten_chi_nhanh` varchar(45) NOT NULL,
  PRIMARY KEY (`id_chi_nhanh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Chi_tiet_Hang_Hoa`
--

DROP TABLE IF EXISTS `Chi_tiet_Hang_Hoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Chi_tiet_Hang_Hoa` (
  `id_Chi_tiet_Hang_Hoa` int(11) NOT NULL AUTO_INCREMENT,
  `id_hang_hoa` int(11) NOT NULL,
  `mo_ta` varchar(200) NOT NULL,
  `ghi_chu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_Chi_tiet_Hang_Hoa`),
  KEY `fk_Chi_tiet_Hang_Hoa_1_idx` (`id_hang_hoa`),
  CONSTRAINT `fk_Chi_tiet_Hang_Hoa_1` FOREIGN KEY (`id_hang_hoa`) REFERENCES `Hang_Hoa` (`id_hang_hoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Don_Vi_Co_Ban`
--

DROP TABLE IF EXISTS `Don_Vi_Co_Ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Don_Vi_Co_Ban` (
  `id_don_vi co_ban` int(11) NOT NULL AUTO_INCREMENT,
  `ten_don_vi` varchar(45) NOT NULL,
  PRIMARY KEY (`id_don_vi co_ban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Don_Vi_Quy_Doi`
--

DROP TABLE IF EXISTS `Don_Vi_Quy_Doi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Don_Vi_Quy_Doi` (
  `id_don_vi_quy_doi` int(11) NOT NULL AUTO_INCREMENT,
  `id_hang_hoa` int(11) NOT NULL,
  `ti_le_quy_doi` double NOT NULL,
  `gia_ban` double NOT NULL,
  PRIMARY KEY (`id_don_vi_quy_doi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Giao_Hang`
--

DROP TABLE IF EXISTS `Giao_Hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Giao_Hang` (
  `id_giao_hang` int(11) NOT NULL AUTO_INCREMENT,
  `thoi_gian` datetime NOT NULL,
  `phi_ship` double NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ghi_chu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_giao_hang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Hang_Hoa`
--

DROP TABLE IF EXISTS `Hang_Hoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hang_Hoa` (
  `id_hang_hoa` int(11) NOT NULL AUTO_INCREMENT,
  `id_vach` varchar(20) DEFAULT NULL,
  `id_hang_hoa_cha` int(11) NOT NULL,
  `ten_hang_hoa` varchar(45) NOT NULL,
  `id_nhom_hang` int(11) NOT NULL,
  `id_thuong_hieu` int(11) NOT NULL,
  `gia_von` double NOT NULL,
  `gia_ban` double NOT NULL,
  `ton_kho` int(11) NOT NULL,
  `id_anh` int(11) DEFAULT NULL,
  `don_vi` int(11) NOT NULL,
  `ban_truc_tiep` int(11) DEFAULT NULL,
  `tich_diem` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_hang_hoa`),
  KEY `fk_Hang_Hoa_1_idx` (`id_hang_hoa_cha`),
  KEY `fk_Hang_Hoa_2_idx` (`id_thuong_hieu`),
  KEY `fk_Hang_Hoa_3_idx` (`id_nhom_hang`),
  KEY `fk_Hang_Hoa_4_idx` (`id_anh`),
  CONSTRAINT `fk_Hang_Hoa_1` FOREIGN KEY (`id_hang_hoa_cha`) REFERENCES `Hang_Hoa_Cha` (`id_hang_hoa_cha`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hang_Hoa_2` FOREIGN KEY (`id_thuong_hieu`) REFERENCES `Thuong_Hieu` (`id_thuong_hieu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hang_Hoa_3` FOREIGN KEY (`id_nhom_hang`) REFERENCES `Nhom_Hang` (`id_nhom_hang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hang_Hoa_4` FOREIGN KEY (`id_anh`) REFERENCES `Anh` (`id_anh`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Hang_Hoa_Cha`
--

DROP TABLE IF EXISTS `Hang_Hoa_Cha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hang_Hoa_Cha` (
  `id_hang_hoa_cha` int(11) NOT NULL AUTO_INCREMENT,
  `ma_vach_cha` varchar(20) NOT NULL,
  `ten_hang_hoa_cha` varchar(45) NOT NULL,
  PRIMARY KEY (`id_hang_hoa_cha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Hang_Hoa_Thanh_Phan`
--

DROP TABLE IF EXISTS `Hang_Hoa_Thanh_Phan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hang_Hoa_Thanh_Phan` (
  `id_hang_hoa_thanh_phan` int(11) NOT NULL AUTO_INCREMENT,
  `ten_hang_hoa_thanh_phan` varchar(45) NOT NULL,
  `id_hang_hoa` int(11) NOT NULL,
  PRIMARY KEY (`id_hang_hoa_thanh_phan`),
  KEY `fk_Hang_Hoa_Thanh_Phan_1_idx` (`id_hang_hoa`),
  CONSTRAINT `fk_Hang_Hoa_Thanh_Phan_1` FOREIGN KEY (`id_hang_hoa`) REFERENCES `Hang_Hoa` (`id_hang_hoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Hoa_Don`
--

DROP TABLE IF EXISTS `Hoa_Don`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hoa_Don` (
  `id_hoa_don` int(11) NOT NULL AUTO_INCREMENT,
  `id_khach_hang` int(11) NOT NULL,
  `id_chi_nhanh` int(11) NOT NULL,
  `id_nhan_vien` int(11) NOT NULL,
  `id_giao_hang` int(11) DEFAULT NULL,
  `thoi_gian` datetime NOT NULL,
  `tong_tien` double NOT NULL,
  `tien_khach_tra` double NOT NULL,
  `tien_tra_lai_khach` double DEFAULT '0',
  `ghi_chu` varchar(100) DEFAULT NULL,
  `trang_thai` int(11) NOT NULL,
  PRIMARY KEY (`id_hoa_don`),
  KEY `fk_Hoa_Don_1_idx` (`id_khach_hang`),
  KEY `fk_Hoa_Don_2_idx` (`id_nhan_vien`),
  KEY `fk_Hoa_Don_3_idx` (`id_chi_nhanh`),
  KEY `fk_Hoa_Don_4_idx` (`id_giao_hang`),
  CONSTRAINT `fk_Hoa_Don_1` FOREIGN KEY (`id_khach_hang`) REFERENCES `Khach_Hang` (`id_khach_hang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hoa_Don_2` FOREIGN KEY (`id_nhan_vien`) REFERENCES `Nhan_Vien` (`id_nhan_vien`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hoa_Don_3` FOREIGN KEY (`id_chi_nhanh`) REFERENCES `Chi_Nhanh` (`id_chi_nhanh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hoa_Don_4` FOREIGN KEY (`id_giao_hang`) REFERENCES `Giao_Hang` (`id_giao_hang`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Hoa_Don_Chi_Tiet`
--

DROP TABLE IF EXISTS `Hoa_Don_Chi_Tiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hoa_Don_Chi_Tiet` (
  `id_hoa_don_chi_tiet` int(11) NOT NULL AUTO_INCREMENT,
  `id_hoa_don` int(11) NOT NULL,
  `id_hang_hoa` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `giam_gia` double DEFAULT '0',
  `tong_gia` double NOT NULL,
  PRIMARY KEY (`id_hoa_don_chi_tiet`),
  KEY `fk_Hoa_Don_Chi_Tiet_1_idx` (`id_hoa_don`),
  KEY `fk_Hoa_Don_Chi_Tiet_2_idx` (`id_hang_hoa`),
  CONSTRAINT `fk_Hoa_Don_Chi_Tiet_1` FOREIGN KEY (`id_hoa_don`) REFERENCES `Hoa_Don` (`id_hoa_don`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hoa_Don_Chi_Tiet_2` FOREIGN KEY (`id_hang_hoa`) REFERENCES `Hang_Hoa` (`id_hang_hoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Khach_Hang`
--

DROP TABLE IF EXISTS `Khach_Hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Khach_Hang` (
  `id_khach_hang` int(11) NOT NULL AUTO_INCREMENT COMMENT '	',
  `ten_khach_hang` varchar(45) NOT NULL,
  `id_anh` int(11) DEFAULT NULL,
  `dien_thoai` varchar(10) NOT NULL,
  `loai_khach` int(11) NOT NULL,
  `ngay_sinh` datetime DEFAULT NULL,
  `gioi_tinh` int(11) DEFAULT NULL,
  `ma_so_thue` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `ghi_chu` varchar(200) DEFAULT NULL,
  `trang_thai` int(11) NOT NULL,
  `dia_chi` varchar(100) DEFAULT NULL,
  `id_phuong` int(11) DEFAULT NULL,
  `id_quan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_khach_hang`),
  KEY `fk_Khach_Hang_1_idx` (`id_anh`),
  KEY `fk_Khach_Hang_2_idx` (`id_phuong`),
  KEY `fk_Khach_Hang_3_idx` (`id_quan`),
  CONSTRAINT `fk_Khach_Hang_1` FOREIGN KEY (`id_anh`) REFERENCES `Anh` (`id_anh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Khach_Hang_2` FOREIGN KEY (`id_phuong`) REFERENCES `Phuong` (`id_phuong`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Khach_Hang_3` FOREIGN KEY (`id_quan`) REFERENCES `Quan` (`id_quan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Nha_Cung_Cap`
--

DROP TABLE IF EXISTS `Nha_Cung_Cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nha_Cung_Cap` (
  `id_nha_cung_cap` int(11) NOT NULL AUTO_INCREMENT,
  `ten_nha_cung_cap` varchar(45) NOT NULL,
  `id_anh` int(11) NOT NULL,
  `dia_chi` varchar(45) NOT NULL,
  `id_phuong` int(11) DEFAULT NULL,
  `id_quan` int(11) DEFAULT NULL,
  `ma_thue` varchar(20) NOT NULL,
  `ghi_chu` varchar(100) DEFAULT NULL,
  `tong_no` double DEFAULT '0',
  `tong_mua` double DEFAULT '0',
  `tong_mua_tru_tra_hang` double DEFAULT '0',
  PRIMARY KEY (`id_nha_cung_cap`),
  KEY `fk_Nha_Cung_Cap_1_idx` (`id_anh`),
  KEY `fk_Nha_Cung_Cap_2_idx` (`id_phuong`),
  KEY `fk_Nha_Cung_Cap_3_idx` (`id_quan`),
  CONSTRAINT `fk_Nha_Cung_Cap_1` FOREIGN KEY (`id_anh`) REFERENCES `Anh` (`id_anh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Nha_Cung_Cap_2` FOREIGN KEY (`id_phuong`) REFERENCES `Phuong` (`id_phuong`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Nha_Cung_Cap_3` FOREIGN KEY (`id_quan`) REFERENCES `Quan` (`id_quan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Nhan_Vien`
--

DROP TABLE IF EXISTS `Nhan_Vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nhan_Vien` (
  `id_nhan_vien` int(11) NOT NULL AUTO_INCREMENT,
  `ten_nhan_vien` varchar(45) NOT NULL,
  `ngay_sinh` datetime NOT NULL,
  `gioi_tinh` int(11) NOT NULL,
  `cmt` varchar(45) NOT NULL,
  `so_dien_thoai` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `id_nhom_quyen` int(11) NOT NULL,
  `ten_dang_nhap` varchar(45) NOT NULL,
  `mat_khau` varchar(45) NOT NULL,
  `id_anh` int(11) NOT NULL,
  `dia_chi` varchar(100) NOT NULL,
  `id_quan` int(11) NOT NULL,
  `id_phuong` int(11) NOT NULL,
  PRIMARY KEY (`id_nhan_vien`),
  KEY `fk_Nhan_Vien_1_idx` (`id_anh`),
  KEY `fk_Nhan_Vien_2_idx` (`id_nhom_quyen`),
  KEY `fk_Nhan_Vien_3_idx` (`id_quan`),
  CONSTRAINT `fk_Nhan_Vien_1` FOREIGN KEY (`id_anh`) REFERENCES `Anh` (`id_anh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Nhan_Vien_2` FOREIGN KEY (`id_nhom_quyen`) REFERENCES `Nhom_Quyen` (`id_nhom_quyen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Nhan_Vien_3` FOREIGN KEY (`id_quan`) REFERENCES `Phuong` (`id_phuong`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Nhan_Vien_4` FOREIGN KEY (`id_quan`) REFERENCES `Quan` (`id_quan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Nhom_Hang`
--

DROP TABLE IF EXISTS `Nhom_Hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nhom_Hang` (
  `id_nhom_hang` int(11) NOT NULL AUTO_INCREMENT,
  `id_hang_cha` int(11) NOT NULL,
  `ten_nhom_hang` varchar(45) NOT NULL,
  PRIMARY KEY (`id_nhom_hang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Nhom_Quyen`
--

DROP TABLE IF EXISTS `Nhom_Quyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nhom_Quyen` (
  `id_nhom_quyen` int(11) NOT NULL AUTO_INCREMENT,
  `ten_nhom_quyen` varchar(45) NOT NULL,
  PRIMARY KEY (`id_nhom_quyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Nhom_Quyen_Quyen`
--

DROP TABLE IF EXISTS `Nhom_Quyen_Quyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nhom_Quyen_Quyen` (
  `id_nhom_quyen` int(11) NOT NULL,
  `id_quyen` int(11) NOT NULL,
  PRIMARY KEY (`id_nhom_quyen`),
  KEY `fk_Nhom_Quyen_Quyen_2_idx` (`id_quyen`),
  CONSTRAINT `fk_Nhom_Quyen_Quyen_1` FOREIGN KEY (`id_nhom_quyen`) REFERENCES `Nhom_Quyen` (`id_nhom_quyen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Nhom_Quyen_Quyen_2` FOREIGN KEY (`id_quyen`) REFERENCES `Quyen` (`id_quyen`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Phieu_Nhap_Hang`
--

DROP TABLE IF EXISTS `Phieu_Nhap_Hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Phieu_Nhap_Hang` (
  `id_phieu_nhap_hang` int(11) NOT NULL AUTO_INCREMENT,
  `id_nha_cung_cap` int(11) NOT NULL,
  `id_nhan_vien` int(11) NOT NULL,
  `id_chi_nhanh` int(11) NOT NULL,
  `thoi_gin` datetime NOT NULL,
  `tong_tien` double NOT NULL,
  `giam_gia` double NOT NULL,
  `tien_phai_tra` double NOT NULL,
  `tien_da_tra` double NOT NULL,
  `ghi_chu` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_phieu_nhap_hang`),
  KEY `fk_Phieu_Nhap_Hang_1_idx` (`id_nha_cung_cap`),
  KEY `fk_Phieu_Nhap_Hang_2_idx` (`id_chi_nhanh`),
  KEY `fk_Phieu_Nhap_Hang_3_idx` (`id_nhan_vien`),
  CONSTRAINT `fk_Phieu_Nhap_Hang_1` FOREIGN KEY (`id_nha_cung_cap`) REFERENCES `Nha_Cung_Cap` (`id_nha_cung_cap`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Phieu_Nhap_Hang_2` FOREIGN KEY (`id_chi_nhanh`) REFERENCES `Chi_Nhanh` (`id_chi_nhanh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Phieu_Nhap_Hang_3` FOREIGN KEY (`id_nhan_vien`) REFERENCES `Nhan_Vien` (`id_nhan_vien`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Phieu_Nhap_Hang_Chi_Tiet`
--

DROP TABLE IF EXISTS `Phieu_Nhap_Hang_Chi_Tiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Phieu_Nhap_Hang_Chi_Tiet` (
  `id_phieu_nhap_hang_chi_tiet` int(11) NOT NULL AUTO_INCREMENT,
  `id_phieu_nhap_hang` int(11) NOT NULL,
  `id_hang_hoa` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  PRIMARY KEY (`id_phieu_nhap_hang_chi_tiet`),
  KEY `fk_Phieu_Nhap_Hang_Chi_Tiet_1_idx` (`id_phieu_nhap_hang`),
  KEY `fk_Phieu_Nhap_Hang_Chi_Tiet_2_idx` (`id_hang_hoa`),
  CONSTRAINT `fk_Phieu_Nhap_Hang_Chi_Tiet_1` FOREIGN KEY (`id_phieu_nhap_hang`) REFERENCES `Phieu_Nhap_Hang` (`id_phieu_nhap_hang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Phieu_Nhap_Hang_Chi_Tiet_2` FOREIGN KEY (`id_hang_hoa`) REFERENCES `Hang_Hoa` (`id_hang_hoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Phieu_Tra_Hang_Cho_Khach`
--

DROP TABLE IF EXISTS `Phieu_Tra_Hang_Cho_Khach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Phieu_Tra_Hang_Cho_Khach` (
  `id_phieu_khach_tra_lai_hang` int(11) NOT NULL AUTO_INCREMENT,
  `id_hoa_don` int(11) NOT NULL,
  `id_nhan_vien` int(11) NOT NULL,
  `ly_do` varchar(200) NOT NULL,
  `trang_thai_doi_tra` int(11) NOT NULL,
  `tien_tra_lai_khac` double DEFAULT '0',
  `ghi_chu` varchar(100) DEFAULT NULL,
  `trang_thai` int(11) NOT NULL,
  PRIMARY KEY (`id_phieu_khach_tra_lai_hang`),
  KEY `fk_Phieu_Tra_Hang_Cho_Khach_1_idx` (`id_hoa_don`),
  KEY `fk_Phieu_Tra_Hang_Cho_Khach_2_idx` (`id_nhan_vien`),
  CONSTRAINT `fk_Phieu_Tra_Hang_Cho_Khach_1` FOREIGN KEY (`id_hoa_don`) REFERENCES `Hoa_Don` (`id_hoa_don`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Phieu_Tra_Hang_Cho_Khach_2` FOREIGN KEY (`id_nhan_vien`) REFERENCES `Nhan_Vien` (`id_nhan_vien`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Phieu_Tra_Hang_Nhap`
--

DROP TABLE IF EXISTS `Phieu_Tra_Hang_Nhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Phieu_Tra_Hang_Nhap` (
  `id_phieu_tra_hang_nhap` int(11) NOT NULL AUTO_INCREMENT,
  `id_nha_cung_cap` int(11) NOT NULL,
  `id_chi_nhanh` int(11) NOT NULL,
  `id_nhan_vien` int(11) NOT NULL,
  `thoig_gian` datetime NOT NULL,
  `ghi_chu` varchar(100) DEFAULT NULL,
  `tong_tien` double NOT NULL,
  `chiet_khau` double NOT NULL,
  `trang_thai` int(11) NOT NULL,
  PRIMARY KEY (`id_phieu_tra_hang_nhap`),
  KEY `fk_Phieu_Tra_Hang_Nhap_1_idx` (`id_nha_cung_cap`),
  KEY `fk_Phieu_Tra_Hang_Nhap_2_idx` (`id_chi_nhanh`),
  KEY `fk_Phieu_Tra_Hang_Nhap_3_idx` (`id_nhan_vien`),
  CONSTRAINT `fk_Phieu_Tra_Hang_Nhap_1` FOREIGN KEY (`id_nha_cung_cap`) REFERENCES `Nha_Cung_Cap` (`id_nha_cung_cap`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Phieu_Tra_Hang_Nhap_2` FOREIGN KEY (`id_chi_nhanh`) REFERENCES `Chi_Nhanh` (`id_chi_nhanh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Phieu_Tra_Hang_Nhap_3` FOREIGN KEY (`id_nhan_vien`) REFERENCES `Nhan_Vien` (`id_nhan_vien`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Phieu_Tra_Hang_Nhap_Chi_Tiet`
--

DROP TABLE IF EXISTS `Phieu_Tra_Hang_Nhap_Chi_Tiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Phieu_Tra_Hang_Nhap_Chi_Tiet` (
  `id_phieu_tra_hang_chi_tiet` int(11) NOT NULL AUTO_INCREMENT,
  `id_phieu_tra_hang_nhap` int(11) NOT NULL,
  `id_hang_hoa` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `ghi_chu` varchar(100) NOT NULL,
  PRIMARY KEY (`id_phieu_tra_hang_chi_tiet`),
  KEY `fk_Phieu_Tra_Hang_Nhap_Chi_Tiet_1_idx` (`id_phieu_tra_hang_nhap`),
  KEY `fk_Phieu_Tra_Hang_Nhap_Chi_Tiet_2_idx` (`id_hang_hoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Phuong`
--

DROP TABLE IF EXISTS `Phuong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Phuong` (
  `id_phuong` int(11) NOT NULL AUTO_INCREMENT,
  `ten_phuong` varchar(45) NOT NULL,
  PRIMARY KEY (`id_phuong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Quan`
--

DROP TABLE IF EXISTS `Quan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Quan` (
  `id_quan` int(11) NOT NULL AUTO_INCREMENT,
  `ten_quan` varchar(45) NOT NULL,
  PRIMARY KEY (`id_quan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Quyen`
--

DROP TABLE IF EXISTS `Quyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Quyen` (
  `id_quyen` int(11) NOT NULL,
  `ten_quyen` varchar(45) NOT NULL,
  PRIMARY KEY (`id_quyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Thuong_Hieu`
--

DROP TABLE IF EXISTS `Thuong_Hieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Thuong_Hieu` (
  `id_thuong_hieu` int(11) NOT NULL AUTO_INCREMENT,
  `ten_thuong_hieu` varchar(45) NOT NULL,
  PRIMARY KEY (`id_thuong_hieu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Vi_Tri`
--

DROP TABLE IF EXISTS `Vi_Tri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vi_Tri` (
  `id_vi_tri` int(11) NOT NULL AUTO_INCREMENT,
  `ten_vi_tri` varchar(45) NOT NULL,
  PRIMARY KEY (`id_vi_tri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Vi_Tri_Hang_Hoa`
--

DROP TABLE IF EXISTS `Vi_Tri_Hang_Hoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vi_Tri_Hang_Hoa` (
  `id_vi_tri_hang_hoa` int(11) NOT NULL AUTO_INCREMENT,
  `id_hang_hoa` int(11) NOT NULL,
  `id_vi_tri` int(11) NOT NULL,
  PRIMARY KEY (`id_vi_tri_hang_hoa`),
  KEY `fk_Vi_Tri_Hang_Hoa_1_idx` (`id_vi_tri`),
  KEY `fk_Vi_Tri_Hang_Hoa_2_idx` (`id_hang_hoa`),
  CONSTRAINT `fk_Vi_Tri_Hang_Hoa_1` FOREIGN KEY (`id_vi_tri`) REFERENCES `Vi_Tri` (`id_vi_tri`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vi_Tri_Hang_Hoa_2` FOREIGN KEY (`id_hang_hoa`) REFERENCES `Hang_Hoa` (`id_hang_hoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-24 23:24:46
