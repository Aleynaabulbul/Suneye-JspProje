-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 08 Haz 2021, 14:36:30
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `suneye`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategoriId` int(11) NOT NULL,
  `kategoriAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategoriId`, `kategoriAdi`) VALUES
(1, 'Erkek'),
(2, 'CatEye'),
(3, 'Kadin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparisKodu` int(11) NOT NULL,
  `siparisTarihi` text COLLATE utf8_turkish_ci NOT NULL,
  `isleme` text COLLATE utf8_turkish_ci NOT NULL,
  `hazirlanma` text COLLATE utf8_turkish_ci NOT NULL,
  `kargolanma` text COLLATE utf8_turkish_ci NOT NULL,
  `teslim` text COLLATE utf8_turkish_ci NOT NULL,
  `odemeTipi` text COLLATE utf8_turkish_ci NOT NULL,
  `uyeKullaniciAdi` varchar(30) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparisKodu`, `siparisTarihi`, `isleme`, `hazirlanma`, `kargolanma`, `teslim`, `odemeTipi`, `uyeKullaniciAdi`) VALUES
(1, 'Mon Jun 07 11:32:48 EET 2021', 'false', 'false', 'false', 'false', 'kapidaOdeme', 'aleynabb');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urunKodu` int(11) NOT NULL,
  `urunAdi` text COLLATE utf8_turkish_ci NOT NULL,
  `urunDetay` text COLLATE utf8_turkish_ci NOT NULL,
  `urunFiyat` int(11) NOT NULL,
  `urunAdet` int(11) NOT NULL,
  `fotograf` text COLLATE utf8_turkish_ci NOT NULL,
  `ozelkategori` int(11) NOT NULL,
  `kategoriKodu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urunKodu`, `urunAdi`, `urunDetay`, `urunFiyat`, `urunAdet`, `fotograf`, `ozelkategori`, `kategoriKodu`) VALUES
(1, 'bianca gozluk', 'bianca siyah gozluk', 200, 1, '../img/bianca-black-gunes-gozlugu-c619.jpg', 2, 1),
(2, 'Maria Gozluk', 'Maria Kadin Gozluk', 300, 1, '../img/maria-ce07b702-0.jpeg', 2, 1),
(3, 'Square Frame ', 'Square Frame Gozluk', 250, 1, '../img/nakd_square_frame_sunglasses_black_1015-001296-0002_01l-1.jpg', 2, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uye`
--

CREATE TABLE `uye` (
  `kullaniciAdi` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `ad` text COLLATE utf8_turkish_ci NOT NULL,
  `soyad` text COLLATE utf8_turkish_ci NOT NULL,
  `telefon` text COLLATE utf8_turkish_ci NOT NULL,
  `eMail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `sehir` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `ilce` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `adres` varchar(30) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `uye`
--

INSERT INTO `uye` (`kullaniciAdi`, `ad`, `soyad`, `telefon`, `eMail`, `sifre`, `sehir`, `ilce`, `adres`) VALUES
('aleynabb', 'aleyna', 'bulbul', '656463527', 'aleynabulbul@gmail.com', '123456', 'İstanbul', 'Atasehir', 'afsgssa');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetici`
--

CREATE TABLE `yonetici` (
  `kullaniciAdi` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `Sifre` varchar(30) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yonetici`
--

INSERT INTO `yonetici` (`kullaniciAdi`, `Sifre`) VALUES
('aleynablbl', '12345'),
('root', 'root55');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategoriId`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparisKodu`);

--
-- Tablo için indeksler `uye`
--
ALTER TABLE `uye`
  ADD PRIMARY KEY (`kullaniciAdi`);

--
-- Tablo için indeksler `yonetici`
--
ALTER TABLE `yonetici`
  ADD PRIMARY KEY (`kullaniciAdi`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategoriId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparisKodu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
