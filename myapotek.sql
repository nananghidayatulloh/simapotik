-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2021 at 02:57 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myapotek_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `no_reff` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_reff` varchar(40) NOT NULL,
  `keterangan` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`no_reff`, `id_user`, `nama_reff`, `keterangan`) VALUES
(111, 1, 'Kas', 'Kas'),
(112, 1, 'Piutang', 'Piutang Usaha'),
(113, 1, 'Perlengkapan', 'Perlengkapan Perusahaan'),
(121, 1, 'Peralatan', 'Peralatan Perusahaan'),
(122, 1, 'Akumulasi Peralatan', 'Akumulasi Peralatan'),
(211, 1, 'Utang Usaha', 'Utang Usaha'),
(311, 1, 'Modal', 'Modal'),
(312, 1, 'Prive', 'Prive'),
(411, 1, 'Pendapatan', 'Pendapatan'),
(511, 1, 'Beban Gaji', 'Beban Gaji'),
(512, 1, 'Beban Sewa', 'Beban Sewa'),
(513, 1, 'Beban Penyusutan Peralatan', 'Beban Penyusutan Peralatan'),
(514, 1, 'Beban Lat', 'Beban Lat'),
(515, 1, 'Beban Perlengkapan', 'Beban Perlengkapan');

-- --------------------------------------------------------

--
-- Table structure for table `data_dokter`
--

CREATE TABLE `data_dokter` (
  `nama_dokter` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `no_sip` varchar(24) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_dokter`
--

INSERT INTO `data_dokter` (`nama_dokter`, `no_sip`) VALUES
('Dr.Maria Elisabeth Siahaan', '028/158/SIP-TU/II/2003'),
('Dr. Sony Prabowo', '028/162/SIP-TU/III/2003'),
('Dr.Nursukmawati Malayu', '028/167/SIP-TU/III/2003'),
('Dr.Ike Hikmawati', '028/169/SIP-TU/III/2003'),
('Dr.Dewa Ayu Sasiary Prawani', '028/170/SIP-TU/III/2003'),
('Dr.I Gusti Ngurah Okadara', '028/171/SIP-TU/III/2003'),
('Dr.Masria', '028/180/SIP-TU/VI/2003'),
('Dr.Teti Tridarti Kudrat', '028/183/SIP-TU/V/2003'),
('Dr.Tri Sujiwati', '028/185/SIP-TU/VIII/2003'),
('Dr.Susi Nurhayani', '028/186/SIP-TU/VIII/2003'),
('Dr.Hermawan Adinugroho', '028/188/SIP-TU/VIII/2003'),
('Dr.Dewi Caturriny', '028/189/SIP-TU/VIII/2003'),
('Dr.M Fadjar Nur Ilhamsyah Gaffar', '028/190/SIP-TU/VIII/2003'),
('Dr.Lizna Oemar', '028/191/SIP-TU/VIII/2003'),
('Dr.Alia Shahnaz', '028/195/SIP-TU/IX/2003'),
('Dr.Feriyandhi Meizirrsjah', '028/203/SIP-TU/XI/2003'),
('Dr.Vindy Ruslianti', '028/206/SIP-TU/XI/2003'),
('Dr.Hanry Susilo Ibrahim', '028/210/SIP-TU/I/2004'),
('Dr.Isnindiary Sandra Dungga', '028/78/SIP-TU/V/2001'),
('Dr.Isdiawati', '028/218/SIP-TU/III/2004'),
('Dr.Fransisca Amelia Sugianto', '028/220/SIP-TU/III/2004'),
('Dr.Stella Patricia Yapari', '028/224/SIP-TU/III/2004'),
('Dr.Jouhartien Aquarini', '028/226/SIP-TU/IV/2004'),
('Dr.Renaning Tyas', '028/230/SIP-TU/IV/2004'),
('Dr.Herliawati', '028/231/SIP-TU/V/2004'),
('Dr.Erica Handrita', '028/232/SIP-TU/V/2004'),
('Dr.Ariesanty Irawaty M', '028/234/SIP-TU/V/2004'),
('Dr.Trining Sujiani', '028/235/SIP-TU/V/2004'),
('Dr.Julhismira', '028/236/SIP-TU/V/2004'),
('Dr.I Made Budawarman', '028/238/SIP-TU/VI/2004'),
('Dr.Abdul Haris', '028/241/SIP-TU/VII/2004'),
('Dr.Astrid Septrisia Paat', '028/244/SIP-TU/VII/2004'),
('Dr.Uji Asiah', '028/245/SIP-TU/VII/2004'),
('Dr.Ummi Sartika Almady', '028/246/SIP-TU/VIII/2004'),
('Dr.Neni Sundari', '028/247/SIP-TU/VIII/2004'),
('Dr.Joko Yustono Yus Kasran', '028/250/SIP-TU/VIII/2004'),
('Dr.Mimin Saputri', '028/251/SIP-TU/VIII/2004'),
('Dr.Martin Ayuningtyas Wulandari', '028/252/SIP-TU/VIII/2004'),
('Dr.Agus Nirwan', '028/253/SIP-TU/VIII/2004'),
('Dr.Justina Faresty', '028/255/SIP-TU/VIII/2004'),
('Dr.Susanto', '028/257/SIP-TU/VIII/2004'),
('Dr.Vidyanti Evabrina Simarmata', '028/260/SIP-TU/X/2004'),
('Dr.Yina Linden', '028/261/SIP-TU/X/2004'),
('Dr.Linda Ramayati', '028/262/SIP-TU/X/2004'),
('Dr.Ernawati', '028/263/SIP-TU/X/2004'),
('Dr.Yulisna Leman', '028/266/SIP-TU/XI/2004'),
('Dr.Aris Santoso', '028/268/SIP-TU/XI/2004'),
('Dr.Erika Nina Br Sembiring', '028/272/SIP-TU/XI/2004'),
('Dr.Faisal Thamrin', '028/275/SIP-TU/XII/2004'),
('Dr.Nasaruddin M.Sheldon', '028/276/SIP-TU/XII/2004'),
('Dr.Muhammad Ahsan', '028/277/SIP-TU/XII/2004'),
('Dr.Tien Fatimatuzahhra', '028/278/SIP-TU/XII/2004'),
('Dr.Thrisia Wuryanti', '028/279/SIP-TU/XII/2004'),
('Dr.Endang Dwi Esti Juliandary', '028/280/SIP-TU/I/2005'),
('Dr.Sri Amrini', '028/281/SIP-TU/I/2005'),
('Dr.Zainue Akbar', '028/282/SIP-TU/I/2005'),
('Dr.Otto Rajasa', '028/284/SIP-TU/III/2005'),
('Dr.Francisca Pratiwi', '028/285/SIP-TU/III/2005'),
('Dr.Cahyadi Ilham', '028/286/SIP-TU/III/2005'),
('Dr.Faisal', '028/287/SIP-TU/III/2005'),
('Dr.Esther Vonny K', '028/293/SIP-TU/III/2005'),
('Dr.Mahes Bayu Aji', '028/294/SIP-TU/III/2005'),
('Dr.Yenny Setiawati', '028/296/SIP-TU/III/2005'),
('Dr.Susi Cavinojani', '028/298/SIP-TU/III/2005'),
('Dr.Oktavio Augusto De Jesus OS', '028/299/SIP-TU/IV/2005'),
('Dr.Andrianus Rohadi', '028/300/SIP-TU/IV/2005'),
('Dr.Eko Wahju Tjahjono', '028/301/SIP-TU/IV/2005'),
('Dr.H.M Subandi', '028/302/SIP-TU/IV/2005'),
('Dr.Taufik Kukuh Widodo', '028/303/SIP-TU/IV/2005'),
('Dr.Yuli Eko Prasetyo', '028/305/SIP-TU/IV/2005'),
('Dr.Subagya', '028/306/SIP-TU/V/2005'),
('Dr. Erika S Panjaitan', '028/309/SIP-TU/V/2005'),
('Dr.Oksen Pariangan', '028/314/SIP-TU/VI/2005'),
('Dr.Luluk Kumala Kafbiyah', '028/315/SIP-TU/VI/2005'),
('Dr.Suciohati Dewata', '028/316/SIP-TU/VI/2005'),
('Dr.Fenny Zulkiflie', '028/317/SIP-TU/VI/2005'),
('Dr.Efanna Yogiyanti', '028/318/SIP-TU/VI/2005'),
('Dr.Erna Kartikawati', '028/319/SIP-TU/VII/2005'),
('Dr.R FX Widyatmoko', '028/320/SIP-TU/VII/2005'),
('Dr.Nur Afiah', '028/326/SIP-TU/VII/2005'),
('Dr.Lilik Indrayati', '028/328/SIP-TU/VII/2005'),
('Dr.Ita Dahlia', '028/330/SIP-TU/VII/2005'),
('Dr.Simon Akhmad Norman', '028/331/SIP-TU/VII/2005'),
('Dr.Kristina Dwi Wahyuni', '028/332/SIP-TU/VII/2005'),
('Dr.Balerina J.P Pontolumiju', '028/338/SIP-TU/VII/2005'),
('Dr. Masria', '028/339/SIP-TU/VIII/2005'),
('┬áDr. Mochammad Syafak', '028/340/SIP-TU/VIII/2005'),
('Dr. Steven Fungsi', '028/345/SIP-TU/VIII/2005'),
('Dr.Ingrid Jeanette Maria S', '028/349/SIP-TU/VIII/2005'),
('Dr.Agustining Rahayu', '028/350/SIP-TU/VIII/2005'),
('Dr.Freddy Suhadi', '028/352/SIP-TU/VIII/2005'),
('Dr.Rudi Mokodompit', '028/354/SIP-TU/VIII/2005'),
('Dr.Nicko Febriyanto', '028/356/SIP-TU/VIII/2005'),
('Dr.Cristmos Bambang M', '028/357/SIP-TU/VIII/2005'),
('Dr.Ririn Sriwijayanti', '028/359/SIP-TU/VIII/2005'),
('Dr.Christie Sophie Tengkere', '028/360/SIP-TU/VIII/2005'),
('Dr.Daniel Richard Humpry', '028/361/SIP-TU/VIII/2005'),
('Dr.Petty Ariani', '028/362/SIP-TU/VIII/2005'),
('Dr.Samuel Kong', '028/364/SIP-TU/VIII/2005'),
('Dr.Nike Ariesta', '028/368/SIP-TU/VIII/2005'),
('Dr.Wita Kartika Nurani', '028/369/SIP-TU/VIII/2005'),
('Dr.Fitriah', '028/370/SIP-TU/VIII/2005'),
('Dr.Fahmi Zawawi', '028/372/SIP-TU/VIII/2005'),
('Dr.Andi Sri Juliarty', '028/373/SIP-TU/VIII/2005'),
('Dr.Wiwik Mulyana', '028/374/SIP-TU/IX/2005'),
('Dr.Sri Irma Fitriani', '028/375/SIP-TU/IX/2005'),
('Dr.Tzeto Itjong', '028/376/SIP-TU/IX/2005'),
('Dr.Koster Panggabean', '028/377/SIP-TU/IX/2005'),
('Dr.Fredrik P Demmassabu', '028/378/SIP-TU/IX/2005'),
('Dr.Djuhani Prihnata Putri', '028/381/SIP-TU/IX/2005'),
('Dr.La Ode Syahrizal', '028/382/SIP-TU/IX/2005'),
('Dr.Indah Puspitasari', '028/383/SIP-TU/IX/2005'),
('Dr.Dedy Waskita', '028/384/SIP-TU/IX/2005'),
('Dr.Basuki Nugroho', '028/385/SIP-TU/IX/2005'),
('Dr.Khairan Irmansyah', '028/386/SIP-TU/IX/2005'),
('Dr.Alexander Henry MS', '028/387/SIP-TU/IX/2005'),
('Dr.Novida Ariani', '028/390/SIP-TU/IX/2005'),
('Dr.Iskandar', '028/392/SIP-TU/IX/2005'),
('Dr.Syafaah H Ma\'sum', '028/395/SIP-TU/IX/2005'),
('Dr.Danie Djonly Poluan', '028/398/SIP-TU/IX/2005'),
('Dr.Miliater Simanjuntak', '028/401/SIP-TU/IX/2005'),
('Dr.Debi Septiawati', '028/409/SIP-TU/X/2005'),
('Dr.Andi Ashaq', '028/410/SIP-TU/X/2005'),
('Dr.Ami Noviana Pangkong', '028/411/SIP-TU/X/2005'),
('Dr.Anastasia Yuliani', '028/412/SIP-TU/X/2005'),
('Dr.Retnowati', '028/413/SIP-TU/X/2005'),
('Dr.Bambang Edyono,MA', '028/414/SIP-TU/X/2005'),
('Dr.Irma Eriawati,MA', '028/415/SIP-TU/X/2005'),
('Dr.Emilia Imelda,SPP', '028/416/SIP-TU/X/2005'),
('Dr.Theresia Normawati A', '028/417/SIP-TU/X/2005'),
('Dr.Aminuddin', '028/418/SIP-TU/X/2005'),
('Dr.Lisa Safitri', '028/419/SIP-TU/X/2005'),
('Dr.Waty Anton', '028/420/SIP-TU/X/2005'),
('Dr.Meriah Yacobi', '028/421/SIP-TU/X/2005'),
('Dr.PM Sandra Iskandar', '028/422/SIP-TU/X/2005'),
('Dr.Dwi Anna Susanti', '028/423/SIP-TU/X/2005'),
('Dr.Bambang Syahrial,M.Kes', '028/424/SIP-TU/X/2005'),
('Dr.Radot Marchum.S', '028/425/SIP-TU/X/2005'),
('Dr.Benny Winata', '028/426/SIP-TU/X/2005'),
('Dr.Syamsul Bahri', '028/427/SIP-TU/X/2005'),
('Dr.Kusnadi', '028/428/SIP-TU/X/2005'),
('Dr.Jahja Budi Sutedja', '028/429/SIP-TU/X/2005'),
('Dr.Taufik Kukuh Widodo', '028/440/SIP-TU/X/2005'),
('Dr.Erna Wahid Tyastuti', '028/447/SIP-TU/X/2005'),
('Dr.Florensia Shanty DM', '028/451/SIP-TU/X/2005'),
('Dr.Hamidi Tjiu', '028/452/SIP-TU/X/2005'),
('Dr.Marlina', '028/453/SIP-TU/X/2005'),
('Dr.Zulfikar Mochtar', '028/456/SIP-TU/X/2005'),
('Dr.Anton Budi Saputra Usfinit', '028/458/SIP-TU/X/2005'),
('Dr.Dwi Susanto', '028/460/SIP-TU/X/2005'),
('Dr.Suko Setyanto', '028/461/SIP-TU/X/2005'),
('Dr.R Julian Sjarif', '028/463/SIP-TU/X/2005'),
('Dr.Ratih Terang P', '028/467/SIP-TU/X/2005'),
('Dr.Fajar Rudy Qimindra', '028/468/SIP-TU/X/2005'),
('Dr.Richard Herman Senduk', '028/469/SIP-TU/X/2005'),
('Dr.Hadi Yuniarko', '028/473/SIP-TU/X/2005'),
('Dr.Benny Wibianto', '028/484/SIP-TU/X/2005'),
('Dr.Deetje Mawengkang', '028/485/SIP-TU/X/2005'),
('Dr.Lies Indrayati', '028/486/SIP-TU/XI/2005'),
('Dr.Cokorda Ratih Istri KW', '028/487/SIP-TU/XI/2005'),
('Dr.H.Andi Lawang P', '028/489/SIP-TU/XI/2005'),
('Dr.Mahmudah', '028/491/SIP-TU/XI/2005'),
('Dr.Endah Pujiastuti', '028/492/SIP-TU/XI/2005'),
('Dr.Elyas Pangalinan', '028/493/SIP-TU/XI/2005'),
('Dr.Arnold Wayong OW', '028/496/SIP-TU/XII/2005'),
('Dr.Veronica Epana Silaen', '028/496/SIP-TU/XII/2005'),
('Dr.Rahmani Husin', '028/498/SIP-TU/XII/2005'),
('Dr.Tenri Esa', '028/502/SIP-TU/XII/2005'),
('Dr.Ira Rahma', '028/504/SIP-TU/XII/2005'),
('Dr.Line Tatkarina', '028/505/SIP-TU/XII/2005'),
('Dr.Faisal Rosady', '028/506/SIP-TU/XII/2005'),
('Dr.Ghulam Iskandarsyah', '028/507/SIP-TU/XII/2005'),
('Dr.Fahmi Hardini', '028/510/SIP-TU/I/2006'),
('Dr.Lidia Nangay', '028/511/SIP-TU/I/2006'),
('Dr.Padyo Budi Purbono', '028/512/SIP-TU/I/2006'),
('Dr.Diah Ashyaksanti', '028/513/SIP-TU/I/2006'),
('Dr.Soesi Meilisa Rani', '028/515/SIP-TU/I/2006'),
('Dr.Linda Widiasari', '028/516/SIP-TU/I/2006'),
('Dr.Aryono Wardiman', '028/517/SIP-TU/I/2006'),
('Dr.Hamonangan Ronal PS', '028/518/SIP-TU/I/2006'),
('Dr.Umi Latifah', '028/519/SIP-TU/I/2006'),
('Dr.Erwin Widyanto', '028/520/SIP-TU/I/2006'),
('Dr.Agus Iriansyah', '028/521/SIP-TU/I/2006'),
('Dr.Rosdiana Sujuti', '028/522/SIP-TU/I/2006'),
('Dr.Rachel Sinaga', '028/527/SIP-TU/II/2006'),
('Dr.Hasmirah', '028/528/SIP-TU/II/2006'),
('Dr.Riny Utami', '028/537/SIP-TU/III/2006'),
('Dr.Evy Irmawaty Apidian', '028/539/SIP-TU/IV/2006'),
('Dr.Nisma', '028/540/SIP-TU/IV/2006'),
('Dr.A Hasnawati', '028/542/SIP-TU/IV/2006'),
('Dr.Sriyono', '028/543/SIP-TU/IV/2006'),
('Dr.Olga Jenny P.Mkes', '028/544/SIP-TU/IV/2006'),
('Dr.Friska Pardede', '028/545/SIP-TU/IV/2006'),
('Dr.Lily Banonah Rivai', '028/546/SIP-TU/IV/2006'),
('Dr.Endang Diarty', '028/547/SIP-TU/IV/2006'),
('Dr.Lanny Indah Wijaya', '028/548/SIP-TU/IV/2006'),
('Dr.Anne Indrawati', '028/552/SIP-TU/IV/2006'),
('Dr.Andrijanus Warsito', '028/553/SIP-TU/IV/2006'),
('Dr.Fatimah', '028/554/SIP-TU/IV/2006'),
('Dr.Cut Minora', '028/555/SIP-TU/IV/2006'),
('Dr.H Antung Asbad', '028/555/SIP-TU/IV/2006'),
('Dr.Mulik Liza Rachmi', '028/557/SIP-TU/IV/2006'),
('Dr.Marie Eva Hetty M', '028/558/SIP-TU/IV/2006'),
('Dr.Endang Rahmawati P', '028/561/SIP-TU/V/2006'),
('Dr.I Budianna Tombi Langi', '028/562/SIP-TU/V/2006'),
('Dr.Puji Riani', '028/563/SIP-TU/V/2006'),
('Dr.Fair Ruza', '028/566/SIP-TU/VI/2006'),
('Dr.Maria Magdalena D', '028/569/SIP-TU/VII/2006'),
('Dr.Reza Hafid', '028/570/SIP-TU/VII/2006'),
('Dr.Herry Okta Winarto', '028/572/SIP-TU/VII/2006'),
('Dr.Dewi Supriyana', '028/573/SIP-TU/VII/2006'),
('Dr.Halimah Sadiah', '028/574/SIP-TU/VIII/2006'),
('Dr.Iwan Zulfikar', '028/575/SIP-TU/VIII/2006'),
('Dr.H. Rina Yuniarti', '028/577/SIP-TU/IX/2006'),
('Dr.Karunia Nente', '028/578/SIP-TU/IX/2006'),
('Dr.Ika Gladies Syaferani', '028/581/SIP-TU/X/2006'),
('Dr.Henry Yapari', '028/582/SIP-TU/X/2006'),
('Dr.Janes Martinus M', '028/583/SIP-TU/X/2006'),
('Dr.Juliyanti Rohsortani. S', '028/585/SIP-TU/X/2006'),
('Dr.Dameria Sri I P', '028/586/SIP-TU/X/2006'),
('Dr.Nadia Monita', '028/588/SIP-TU/X/2006'),
('Dr.Rano Ismail', '028/589/SIP-TU/X/2006'),
('Dr.Vernilina Oktaeighta A', '028/590/SIP-TU/XI/2006'),
('Dr.Istianah', '028/592/SIP-TU/XI/2006'),
('Dr.Tommy Nugraha', '028/593/SIP-TU/XI/2006'),
('Dr.Albert Arung', '028/594/SIP-TU/XII/2006'),
('Dr.Yuli Astutiandriani', '028/595/SIP-TU/XII/2006'),
('Dr.Netiana', '028/596/SIP-TU/XII/2006'),
('Dr.Siti Saima', '028/597/SIP-TU/XII/2006'),
('Dr.Yurgen', '028/597/SIP-TU/XII/2006'),
('Dr.Vina Oktora', '028/602/SIP-TU/I/2007'),
('Dr.Hidjrat Hidayat', '028/604/SIP-TU/I/2007'),
('Dr.Farah Alkatiri', '028/605/SIP-TU/I/2007'),
('Dr.H Ichsan Fahmi', '028/606/SIP-TU/II/2007'),
('Dr.Hastuti Untari', '028/607/SIP-TU/II/2007'),
('Dr.Siti Hatijah', '028/608/SIP-TU/II/2007'),
('Dr.Muhammad Zaitun F', '028/609/SIP-TU/II/2007'),
('Dr.Herlina Pohan', '028/610/SIP-TU/II/2007'),
('Dr.Irma Suryani', '028/611/SIP-TU/II/2007'),
('Dr.Agus Darwiyanto', '028/612/SIP-TU/II/2007'),
('Dr.Jimmy Elraju Kalesaran', '028/613/SIP-TU/II/2007'),
('Dr.Dody Alfera', '028/615/SIP-TU/III/2007'),
('Dr.Fatmawati', '028/616/SIP-TU/III/2007'),
('Dr.Afriani Likun', '028/617/SIP-TU/III/2007'),
('Dr.Ursula Catharina Sulistiani', '028/618/SIP-TU/III/2007'),
('Dr.Sri Susanti Handayani', '028/619/SIP-TU/III/2007'),
('Dr.Sofiana', '028/620/SIP-TU/III/2007'),
('Dr.Hendrik E I Rumajar', '028/626/SIP-TU/III/2007'),
('Dr.Philip Hasanuddin Panrita', '028/627/SIP-TU/IV/2007'),
('Dr.Paulus Erwin Marulitua', '028/628/SIP-TU/IV/2007'),
('Dr.Alifiana Dewi', '028/629/SIP-TU/IV/2007'),
('Dr.Mas Soemardjono Djajoesman', '028/630/SIP-TU/IV/2007'),
('Dr.Endah Nuranisah', '028/632/SIP-TU/IV/2007'),
('Dr.Leonardus Singgih', '028/633/SIP-TU/IV/2007'),
('Dr.Agus Jiwani', '028/634/SIP-TU/IV/2007'),
('Dr.Syamsudin Nasori Syamsuri', '028/637/SIP-TU/IV/2007'),
('Dr.Momon Indrawan', '028/638/SIP-TU/IV/2007'),
('Dr.Ivan Garibaldi S', '028/639/SIP-TU/IV/2007'),
('Dr.Antonius tirtamulya', '028/640/SIP-TU/V/2007'),
('Dr.Lany Hakim\'', '028/641/SIP-TU/V/2007'),
('Dr.Juliana Hariman', '028/642/SIP-TU/V/2007'),
('Dr.Helmi Hidayat', '028/644/SIP-TU/VI/2007'),
('Dr.Tri Wahyuni', '028/645/SIP-TU/VI/2007'),
('Dr.James Kalengkongan', '028/646/SIP-TU/VI/2007'),
('Dr.Shinta Devi Aguslia', '028/649/SIP-TU/VI/2007'),
('Dr.R Anita Indriyanti,M.Kes', '028/650/SIP-TU/VII/2007'),
('Dr.Antanius Artanto Endro P', '028/651/SIP-TU/VII/2007'),
('Dr.Eni Dwi Astuti', '028/652/SIP-TU/VII/2007'),
('Dr.Masnawati', '028/655/SIP-TU/VIII/2007'),
('Dr.Satoto Kosasi', '028/656/SIP-TU/VIII/2007'),
('Dr.Fatinah', '028/657/SIP-TU/VIII/2007'),
('Dr.Meida Erimarisya', '028/658/SIP-TU/VIII/2007'),
('Dr.Felitiana Maria Hanggani K', '028/659/SIP-TU/VIII/2007'),
('Dr.Petty Widyanti', '028/661/SIP-TU/VIII/2007'),
('Dr.Muhammad Al Azhary', '028/662/SIP-TU/IX/2007'),
('Dr.Mangihut Rumiris Manullang', '028/663/SIP-TU/IX/2007'),
('Dr.Sariman', '028/665/SIP-TU/X/2007'),
('Dr.Yustina Nababan', '028/667/SIP-TU/XI/2007'),
('Dr.Banjir Lumban Gaol', '028/668/SIP-TU/XI/2007'),
('Dr.Hendra Agusswarman Siahaan', '028/669/SIP-TU/XI/2007'),
('Dr.Andi Yanti', '028/670/SIP-TU/XI/2007'),
('Dr.Alexander Hendrato S', '028/672/SIP-TU/XI/2007'),
('Dr.Isyanna Paramitha', '028/673/SIP-TU/XI/2007'),
('Dr.Elke Winasari', '028/676/SIP-TU/XII/2007'),
('Dr.Arswendy', '028/677/SIP-TU/XII/2007'),
('Dr.Ayu Ummahat Al Mukmin', '028/678/SIP-TU/XII/2007'),
('Dr.Suhadi Hasan', '028/685/SIP-TU/I/2008'),
('Dr.Datik Yuli Darwati', '028/686/SIP-TU/I/2008'),
('Dr.Silvi Korprina', '028/689/SIP-TU/II/2008'),
('Dr.Yenny Angdriani', '028/690/SIP-TU/II/2008'),
('Dr.Riri Yuliana', '028/692/SIP-TU/II/2008'),
('Dr.Rina', '028/693/SIP-TU/II/2008'),
('Dr. Dr.Kartinah', '028/694/SIP-TU/III/2008'),
('Dr.Tommy Nugroho W', '028/696/SIP-TU/III/2008'),
('Dr.Resky Malinda', '028/697/SIP-TU/III/2008'),
('Dr.Roy Pardoman Hariadji', '028/698/SIP-TU/IV/2008'),
('Dr.Alifiana Dewi', '028/629/SIP-TU/IV/2007'),
('Dr.Mas Soemardjono Djajoesman', '028/630/SIP-TU/IV/2007'),
('Dr.Endah Nuranisah', '028/632/SIP-TU/IV/2007'),
('Dr.Leonardus Singgih', '028/633/SIP-TU/IV/2007'),
('Dr.Agus Jiwani', '028/634/SIP-TU/IV/2007'),
('Dr.Syamsudin Nasori Syamsuri', '028/637/SIP-TU/IV/2007'),
('Dr.Momon Indrawan', '028/638/SIP-TU/IV/2007'),
('Dr.Ivan Garibaldi S', '028/639/SIP-TU/IV/2007'),
('Dr.Antonius tirtamulya', '028/640/SIP-TU/V/2007'),
('Dr.Lany Hakim\'', '028/641/SIP-TU/V/2007'),
('Dr.Juliana Hariman', '028/642/SIP-TU/V/2007'),
('Dr.Helmi Hidayat', '028/644/SIP-TU/VI/2007'),
('Dr.Tri Wahyuni', '028/645/SIP-TU/VI/2007'),
('Dr.James Kalengkongan', '028/646/SIP-TU/VI/2007'),
('Dr.Shinta Devi Aguslia', '028/649/SIP-TU/VI/2007'),
('Dr.R Anita Indriyanti,M.Kes', '028/650/SIP-TU/VII/2007'),
('Dr.Antanius Artanto Endro P', '028/651/SIP-TU/VII/2007'),
('Dr.Eni Dwi Astuti', '028/652/SIP-TU/VII/2007'),
('Dr.Masnawati', '028/655/SIP-TU/VIII/2007'),
('Dr.Satoto Kosasi', '028/656/SIP-TU/VIII/2007'),
('Dr.Fatinah', '028/657/SIP-TU/VIII/2007'),
('Dr.Meida Erimarisya', '028/658/SIP-TU/VIII/2007'),
('Dr.Felitiana Maria Hanggani K', '028/659/SIP-TU/VIII/2007'),
('Dr.Petty Widyanti', '028/661/SIP-TU/VIII/2007'),
('Dr.Muhammad Al Azhary', '028/662/SIP-TU/IX/2007'),
('Dr.Mangihut Rumiris Manullang', '028/663/SIP-TU/IX/2007'),
('Dr.Sariman', '028/665/SIP-TU/X/2007'),
('Dr.Yustina Nababan', '028/667/SIP-TU/XI/2007'),
('Dr.Banjir Lumban Gaol', '028/668/SIP-TU/XI/2007'),
('Dr.Hendra Agusswarman Siahaan', '028/669/SIP-TU/XI/2007'),
('Dr.Andi Yanti', '028/670/SIP-TU/XI/2007'),
('Dr.Alexander Hendrato S', '028/672/SIP-TU/XI/2007'),
('Dr.Isyanna Paramitha', '028/673/SIP-TU/XI/2007'),
('Dr.Elke Winasari', '028/676/SIP-TU/XII/2007'),
('Dr.Arswendy', '028/677/SIP-TU/XII/2007'),
('Dr.Ayu Ummahat Al Mukmin', '028/678/SIP-TU/XII/2007'),
('Dr.Suhadi Hasan', '028/685/SIP-TU/I/2008'),
('Dr.Datik Yuli Darwati', '028/686/SIP-TU/I/2008'),
('Dr.Silvi Korprina', '028/689/SIP-TU/II/2008'),
('Dr.Yenny Angdriani', '028/690/SIP-TU/II/2008'),
('Dr.Riri Yuliana', '028/692/SIP-TU/II/2008'),
('Dr.Rina', '028/693/SIP-TU/II/2008'),
('Dr. Dr.Kartinah', '028/694/SIP-TU/III/2008'),
('Dr.Tommy Nugroho W', '028/696/SIP-TU/III/2008'),
('Dr.Resky Malinda', '028/697/SIP-TU/III/2008'),
('Dr.Roy Pardoman Hariadji', '028/698/SIP-TU/IV/2008');

-- --------------------------------------------------------

--
-- Table structure for table `history_backup`
--

CREATE TABLE `history_backup` (
  `id_backup` int(15) NOT NULL,
  `nama_file` varchar(50) NOT NULL,
  `tanggal_backup` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_backup`
--

INSERT INTO `history_backup` (`id_backup`, `nama_file`, `tanggal_backup`) VALUES
(39, 'Wed15Dec2010_backup_data_1292387890.sql', '2010-12-15 11:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `history_tutup_buku`
--

CREATE TABLE `history_tutup_buku` (
  `id_backup` int(15) NOT NULL,
  `nama_file` varchar(50) NOT NULL,
  `tanggal_backup` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_tutup_buku`
--

INSERT INTO `history_tutup_buku` (`id_backup`, `nama_file`, `tanggal_backup`) VALUES
(35, 'Wed29Dec2010_tutup_buku_1293557507.sql', '2010-12-29 00:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_keluar`
--

CREATE TABLE `jurnal_keluar` (
  `nomor_jurnal` int(15) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal_selesai` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_masuk`
--

CREATE TABLE `jurnal_masuk` (
  `nomor_jurnal` int(15) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal_selesai` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_umum`
--

CREATE TABLE `jurnal_umum` (
  `nomor_jurnal` int(15) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal_selesai` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kab` char(4) NOT NULL,
  `id_prov` char(2) NOT NULL,
  `nama` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
('1101', '11', 'KAB. ACEH SELATAN'),
('1102', '11', 'KAB. ACEH TENGGARA'),
('1103', '11', 'KAB. ACEH TIMUR'),
('1104', '11', 'KAB. ACEH TENGAH'),
('1105', '11', 'KAB. ACEH BARAT'),
('1106', '11', 'KAB. ACEH BESAR'),
('1107', '11', 'KAB. PIDIE'),
('1108', '11', 'KAB. ACEH UTARA'),
('1109', '11', 'KAB. SIMEULUE'),
('1110', '11', 'KAB. ACEH SINGKIL'),
('1111', '11', 'KAB. BIREUEN'),
('1112', '11', 'KAB. ACEH BARAT DAYA'),
('1113', '11', 'KAB. GAYO LUES'),
('1114', '11', 'KAB. ACEH JAYA'),
('1115', '11', 'KAB. NAGAN RAYA'),
('1116', '11', 'KAB. ACEH TAMIANG'),
('1117', '11', 'KAB. BENER MERIAH'),
('1118', '11', 'KAB. PIDIE JAYA'),
('1171', '11', 'KOTA BANDA ACEH'),
('1172', '11', 'KOTA SABANG'),
('1173', '11', 'KOTA LHOKSEUMAWE'),
('1174', '11', 'KOTA LANGSA'),
('1175', '11', 'KOTA SUBULUSSALAM'),
('1201', '12', 'KAB. TAPANULI TENGAH'),
('1202', '12', 'KAB. TAPANULI UTARA'),
('1203', '12', 'KAB. TAPANULI SELATAN'),
('1204', '12', 'KAB. NIAS'),
('1205', '12', 'KAB. LANGKAT'),
('1206', '12', 'KAB. KARO'),
('1207', '12', 'KAB. DELI SERDANG'),
('1208', '12', 'KAB. SIMALUNGUN'),
('1209', '12', 'KAB. ASAHAN'),
('1210', '12', 'KAB. LABUHANBATU'),
('1211', '12', 'KAB. DAIRI'),
('1212', '12', 'KAB. TOBA SAMOSIR'),
('1213', '12', 'KAB. MANDAILING NATAL'),
('1214', '12', 'KAB. NIAS SELATAN'),
('1215', '12', 'KAB. PAKPAK BHARAT'),
('1216', '12', 'KAB. HUMBANG HASUNDUTAN'),
('1217', '12', 'KAB. SAMOSIR'),
('1218', '12', 'KAB. SERDANG BEDAGAI'),
('1219', '12', 'KAB. BATU BARA'),
('1220', '12', 'KAB. PADANG LAWAS UTARA'),
('1221', '12', 'KAB. PADANG LAWAS'),
('1222', '12', 'KAB. LABUHANBATU SELATAN'),
('1223', '12', 'KAB. LABUHANBATU UTARA'),
('1224', '12', 'KAB. NIAS UTARA'),
('1225', '12', 'KAB. NIAS BARAT'),
('1271', '12', 'KOTA MEDAN'),
('1272', '12', 'KOTA PEMATANG SIANTAR'),
('1273', '12', 'KOTA SIBOLGA'),
('1274', '12', 'KOTA TANJUNG BALAI'),
('1275', '12', 'KOTA BINJAI'),
('1276', '12', 'KOTA TEBING TINGGI'),
('1277', '12', 'KOTA PADANGSIDIMPUAN'),
('1278', '12', 'KOTA GUNUNGSITOLI'),
('1301', '13', 'KAB. PESISIR SELATAN'),
('1302', '13', 'KAB. SOLOK'),
('1303', '13', 'KAB. SIJUNJUNG'),
('1304', '13', 'KAB. TANAH DATAR'),
('1305', '13', 'KAB. PADANG PARIAMAN'),
('1306', '13', 'KAB. AGAM'),
('1307', '13', 'KAB. LIMA PULUH KOTA'),
('1308', '13', 'KAB. PASAMAN'),
('1309', '13', 'KAB. KEPULAUAN MENTAWAI'),
('1310', '13', 'KAB. DHARMASRAYA'),
('1311', '13', 'KAB. SOLOK SELATAN'),
('1312', '13', 'KAB. PASAMAN BARAT'),
('1371', '13', 'KOTA PADANG'),
('1372', '13', 'KOTA SOLOK'),
('1373', '13', 'KOTA SAWAHLUNTO'),
('1374', '13', 'KOTA PADANG PANJANG'),
('1375', '13', 'KOTA BUKITTINGGI'),
('1376', '13', 'KOTA PAYAKUMBUH'),
('1377', '13', 'KOTA PARIAMAN'),
('1401', '14', 'KAB. KAMPAR'),
('1402', '14', 'KAB. INDRAGIRI HULU'),
('1403', '14', 'KAB. BENGKALIS'),
('1404', '14', 'KAB. INDRAGIRI HILIR'),
('1405', '14', 'KAB. PELALAWAN'),
('1406', '14', 'KAB. ROKAN HULU'),
('1407', '14', 'KAB. ROKAN HILIR'),
('1408', '14', 'KAB. SIAK'),
('1409', '14', 'KAB. KUANTAN SINGINGI'),
('1410', '14', 'KAB. KEPULAUAN MERANTI'),
('1471', '14', 'KOTA PEKANBARU'),
('1472', '14', 'KOTA DUMAI'),
('1501', '15', 'KAB. KERINCI'),
('1502', '15', 'KAB. MERANGIN'),
('1503', '15', 'KAB. SAROLANGUN'),
('1504', '15', 'KAB. BATANGHARI'),
('1505', '15', 'KAB. MUARO JAMBI'),
('1506', '15', 'KAB. TANJUNG JABUNG BARAT'),
('1507', '15', 'KAB. TANJUNG JABUNG TIMUR'),
('1508', '15', 'KAB. BUNGO'),
('1509', '15', 'KAB. TEBO'),
('1571', '15', 'KOTA JAMBI'),
('1572', '15', 'KOTA SUNGAI PENUH'),
('1601', '16', 'KAB. OGAN KOMERING ULU'),
('1602', '16', 'KAB. OGAN KOMERING ILIR'),
('1603', '16', 'KAB. MUARA ENIM'),
('1604', '16', 'KAB. LAHAT'),
('1605', '16', 'KAB. MUSI RAWAS'),
('1606', '16', 'KAB. MUSI BANYUASIN'),
('1607', '16', 'KAB. BANYUASIN'),
('1608', '16', 'KAB. OGAN KOMERING ULU TIMUR'),
('1609', '16', 'KAB. OGAN KOMERING ULU SELATAN'),
('1610', '16', 'KAB. OGAN ILIR'),
('1611', '16', 'KAB. EMPAT LAWANG'),
('1612', '16', 'KAB. PENUKAL ABAB LEMATANG ILIR'),
('1613', '16', 'KAB. MUSI RAWAS UTARA'),
('1671', '16', 'KOTA PALEMBANG'),
('1672', '16', 'KOTA PAGAR ALAM'),
('1673', '16', 'KOTA LUBUK LINGGAU'),
('1674', '16', 'KOTA PRABUMULIH'),
('1701', '17', 'KAB. BENGKULU SELATAN'),
('1702', '17', 'KAB. REJANG LEBONG'),
('1703', '17', 'KAB. BENGKULU UTARA'),
('1704', '17', 'KAB. KAUR'),
('1705', '17', 'KAB. SELUMA'),
('1706', '17', 'KAB. MUKO MUKO'),
('1707', '17', 'KAB. LEBONG'),
('1708', '17', 'KAB. KEPAHIANG'),
('1709', '17', 'KAB. BENGKULU TENGAH'),
('1771', '17', 'KOTA BENGKULU'),
('1801', '18', 'KAB. LAMPUNG SELATAN'),
('1802', '18', 'KAB. LAMPUNG TENGAH'),
('1803', '18', 'KAB. LAMPUNG UTARA'),
('1804', '18', 'KAB. LAMPUNG BARAT'),
('1805', '18', 'KAB. TULANG BAWANG'),
('1806', '18', 'KAB. TANGGAMUS'),
('1807', '18', 'KAB. LAMPUNG TIMUR'),
('1808', '18', 'KAB. WAY KANAN'),
('1809', '18', 'KAB. PESAWARAN'),
('1810', '18', 'KAB. PRINGSEWU'),
('1811', '18', 'KAB. MESUJI'),
('1812', '18', 'KAB. TULANG BAWANG BARAT'),
('1813', '18', 'KAB. PESISIR BARAT'),
('1871', '18', 'KOTA BANDAR LAMPUNG'),
('1872', '18', 'KOTA METRO'),
('1901', '19', 'KAB. BANGKA'),
('1902', '19', 'KAB. BELITUNG'),
('1903', '19', 'KAB. BANGKA SELATAN'),
('1904', '19', 'KAB. BANGKA TENGAH'),
('1905', '19', 'KAB. BANGKA BARAT'),
('1906', '19', 'KAB. BELITUNG TIMUR'),
('1971', '19', 'KOTA PANGKAL PINANG'),
('2101', '21', 'KAB. BINTAN'),
('2102', '21', 'KAB. KARIMUN'),
('2103', '21', 'KAB. NATUNA'),
('2104', '21', 'KAB. LINGGA'),
('2105', '21', 'KAB. KEPULAUAN ANAMBAS'),
('2171', '21', 'KOTA BATAM'),
('2172', '21', 'KOTA TANJUNG PINANG'),
('3101', '31', 'KAB. ADM. KEP. SERIBU'),
('3171', '31', 'KOTA ADM. JAKARTA PUSAT'),
('3172', '31', 'KOTA ADM. JAKARTA UTARA'),
('3173', '31', 'KOTA ADM. JAKARTA BARAT'),
('3174', '31', 'KOTA ADM. JAKARTA SELATAN'),
('3175', '31', 'KOTA ADM. JAKARTA TIMUR'),
('3201', '32', 'KAB. BOGOR'),
('3202', '32', 'KAB. SUKABUMI'),
('3203', '32', 'KAB. CIANJUR'),
('3204', '32', 'KAB. BANDUNG'),
('3205', '32', 'KAB. GARUT'),
('3206', '32', 'KAB. TASIKMALAYA'),
('3207', '32', 'KAB. CIAMIS'),
('3208', '32', 'KAB. KUNINGAN'),
('3209', '32', 'KAB. CIREBON'),
('3210', '32', 'KAB. MAJALENGKA'),
('3211', '32', 'KAB. SUMEDANG'),
('3212', '32', 'KAB. INDRAMAYU'),
('3213', '32', 'KAB. SUBANG'),
('3214', '32', 'KAB. PURWAKARTA'),
('3215', '32', 'KAB. KARAWANG'),
('3216', '32', 'KAB. BEKASI'),
('3217', '32', 'KAB. BANDUNG BARAT'),
('3218', '32', 'KAB. PANGANDARAN'),
('3271', '32', 'KOTA BOGOR'),
('3272', '32', 'KOTA SUKABUMI'),
('3273', '32', 'KOTA BANDUNG'),
('3274', '32', 'KOTA CIREBON'),
('3275', '32', 'KOTA BEKASI'),
('3276', '32', 'KOTA DEPOK'),
('3277', '32', 'KOTA CIMAHI'),
('3278', '32', 'KOTA TASIKMALAYA'),
('3279', '32', 'KOTA BANJAR'),
('3301', '33', 'KAB. CILACAP'),
('3302', '33', 'KAB. BANYUMAS'),
('3303', '33', 'KAB. PURBALINGGA'),
('3304', '33', 'KAB. BANJARNEGARA'),
('3305', '33', 'KAB. KEBUMEN'),
('3306', '33', 'KAB. PURWOREJO'),
('3307', '33', 'KAB. WONOSOBO'),
('3308', '33', 'KAB. MAGELANG'),
('3309', '33', 'KAB. BOYOLALI'),
('3310', '33', 'KAB. KLATEN'),
('3311', '33', 'KAB. SUKOHARJO'),
('3312', '33', 'KAB. WONOGIRI'),
('3313', '33', 'KAB. KARANGANYAR'),
('3314', '33', 'KAB. SRAGEN'),
('3315', '33', 'KAB. GROBOGAN'),
('3316', '33', 'KAB. BLORA'),
('3317', '33', 'KAB. REMBANG'),
('3318', '33', 'KAB. PATI'),
('3319', '33', 'KAB. KUDUS'),
('3320', '33', 'KAB. JEPARA'),
('3321', '33', 'KAB. DEMAK'),
('3322', '33', 'KAB. SEMARANG'),
('3323', '33', 'KAB. TEMANGGUNG'),
('3324', '33', 'KAB. KENDAL'),
('3325', '33', 'KAB. BATANG'),
('3326', '33', 'KAB. PEKALONGAN'),
('3327', '33', 'KAB. PEMALANG'),
('3328', '33', 'KAB. TEGAL'),
('3329', '33', 'KAB. BREBES'),
('3371', '33', 'KOTA MAGELANG'),
('3372', '33', 'KOTA SURAKARTA'),
('3373', '33', 'KOTA SALATIGA'),
('3374', '33', 'KOTA SEMARANG'),
('3375', '33', 'KOTA PEKALONGAN'),
('3376', '33', 'KOTA TEGAL'),
('3401', '34', 'KAB. KULON PROGO'),
('3402', '34', 'KAB. BANTUL'),
('3403', '34', 'KAB. GUNUNG KIDUL'),
('3404', '34', 'KAB. SLEMAN'),
('3471', '34', 'KOTA YOGYAKARTA'),
('3501', '35', 'KAB. PACITAN'),
('3502', '35', 'KAB. PONOROGO'),
('3503', '35', 'KAB. TRENGGALEK'),
('3504', '35', 'KAB. TULUNGAGUNG'),
('3505', '35', 'KAB. BLITAR'),
('3506', '35', 'KAB. KEDIRI'),
('3507', '35', 'KAB. MALANG'),
('3508', '35', 'KAB. LUMAJANG'),
('3509', '35', 'KAB. JEMBER'),
('3510', '35', 'KAB. BANYUWANGI'),
('3511', '35', 'KAB. BONDOWOSO'),
('3512', '35', 'KAB. SITUBONDO'),
('3513', '35', 'KAB. PROBOLINGGO'),
('3514', '35', 'KAB. PASURUAN'),
('3515', '35', 'KAB. SIDOARJO'),
('3516', '35', 'KAB. MOJOKERTO'),
('3517', '35', 'KAB. JOMBANG'),
('3518', '35', 'KAB. NGANJUK'),
('3519', '35', 'KAB. MADIUN'),
('3520', '35', 'KAB. MAGETAN'),
('3521', '35', 'KAB. NGAWI'),
('3522', '35', 'KAB. BOJONEGORO'),
('3523', '35', 'KAB. TUBAN'),
('3524', '35', 'KAB. LAMONGAN'),
('3525', '35', 'KAB. GRESIK'),
('3526', '35', 'KAB. BANGKALAN'),
('3527', '35', 'KAB. SAMPANG'),
('3528', '35', 'KAB. PAMEKASAN'),
('3529', '35', 'KAB. SUMENEP'),
('3571', '35', 'KOTA KEDIRI'),
('3572', '35', 'KOTA BLITAR'),
('3573', '35', 'KOTA MALANG'),
('3574', '35', 'KOTA PROBOLINGGO'),
('3575', '35', 'KOTA PASURUAN'),
('3576', '35', 'KOTA MOJOKERTO'),
('3577', '35', 'KOTA MADIUN'),
('3578', '35', 'KOTA SURABAYA'),
('3579', '35', 'KOTA BATU'),
('3601', '36', 'KAB. PANDEGLANG'),
('3602', '36', 'KAB. LEBAK'),
('3603', '36', 'KAB. TANGERANG'),
('3604', '36', 'KAB. SERANG'),
('3671', '36', 'KOTA TANGERANG'),
('3672', '36', 'KOTA CILEGON'),
('3673', '36', 'KOTA SERANG'),
('3674', '36', 'KOTA TANGERANG SELATAN'),
('5101', '51', 'KAB. JEMBRANA'),
('5102', '51', 'KAB. TABANAN'),
('5103', '51', 'KAB. BADUNG'),
('5104', '51', 'KAB. GIANYAR'),
('5105', '51', 'KAB. KLUNGKUNG'),
('5106', '51', 'KAB. BANGLI'),
('5107', '51', 'KAB. KARANGASEM'),
('5108', '51', 'KAB. BULELENG'),
('5171', '51', 'KOTA DENPASAR'),
('5201', '52', 'KAB. LOMBOK BARAT'),
('5202', '52', 'KAB. LOMBOK TENGAH'),
('5203', '52', 'KAB. LOMBOK TIMUR'),
('5204', '52', 'KAB. SUMBAWA'),
('5205', '52', 'KAB. DOMPU'),
('5206', '52', 'KAB. BIMA'),
('5207', '52', 'KAB. SUMBAWA BARAT'),
('5208', '52', 'KAB. LOMBOK UTARA'),
('5271', '52', 'KOTA MATARAM'),
('5272', '52', 'KOTA BIMA'),
('5301', '53', 'KAB. KUPANG'),
('5302', '53', 'KAB TIMOR TENGAH SELATAN'),
('5303', '53', 'KAB. TIMOR TENGAH UTARA'),
('5304', '53', 'KAB. BELU'),
('5305', '53', 'KAB. ALOR'),
('5306', '53', 'KAB. FLORES TIMUR'),
('5307', '53', 'KAB. SIKKA'),
('5308', '53', 'KAB. ENDE'),
('5309', '53', 'KAB. NGADA'),
('5310', '53', 'KAB. MANGGARAI'),
('5311', '53', 'KAB. SUMBA TIMUR'),
('5312', '53', 'KAB. SUMBA BARAT'),
('5313', '53', 'KAB. LEMBATA'),
('5314', '53', 'KAB. ROTE NDAO'),
('5315', '53', 'KAB. MANGGARAI BARAT'),
('5316', '53', 'KAB. NAGEKEO'),
('5317', '53', 'KAB. SUMBA TENGAH'),
('5318', '53', 'KAB. SUMBA BARAT DAYA'),
('5319', '53', 'KAB. MANGGARAI TIMUR'),
('5320', '53', 'KAB. SABU RAIJUA'),
('5321', '53', 'KAB. MALAKA'),
('5371', '53', 'KOTA KUPANG'),
('6101', '61', 'KAB. SAMBAS'),
('6102', '61', 'KAB. MEMPAWAH'),
('6103', '61', 'KAB. SANGGAU'),
('6104', '61', 'KAB. KETAPANG'),
('6105', '61', 'KAB. SINTANG'),
('6106', '61', 'KAB. KAPUAS HULU'),
('6107', '61', 'KAB. BENGKAYANG'),
('6108', '61', 'KAB. LANDAK'),
('6109', '61', 'KAB. SEKADAU'),
('6110', '61', 'KAB. MELAWI'),
('6111', '61', 'KAB. KAYONG UTARA'),
('6112', '61', 'KAB. KUBU RAYA'),
('6171', '61', 'KOTA PONTIANAK'),
('6172', '61', 'KOTA SINGKAWANG'),
('6201', '62', 'KAB. KOTAWARINGIN BARAT'),
('6202', '62', 'KAB. KOTAWARINGIN TIMUR'),
('6203', '62', 'KAB. KAPUAS'),
('6204', '62', 'KAB. BARITO SELATAN'),
('6205', '62', 'KAB. BARITO UTARA'),
('6206', '62', 'KAB. KATINGAN'),
('6207', '62', 'KAB. SERUYAN'),
('6208', '62', 'KAB. SUKAMARA'),
('6209', '62', 'KAB. LAMANDAU'),
('6210', '62', 'KAB. GUNUNG MAS'),
('6211', '62', 'KAB. PULANG PISAU'),
('6212', '62', 'KAB. MURUNG RAYA'),
('6213', '62', 'KAB. BARITO TIMUR'),
('6271', '62', 'KOTA PALANGKARAYA'),
('6301', '63', 'KAB. TANAH LAUT'),
('6302', '63', 'KAB. KOTABARU'),
('6303', '63', 'KAB. BANJAR'),
('6304', '63', 'KAB. BARITO KUALA'),
('6305', '63', 'KAB. TAPIN'),
('6306', '63', 'KAB. HULU SUNGAI SELATAN'),
('6307', '63', 'KAB. HULU SUNGAI TENGAH'),
('6308', '63', 'KAB. HULU SUNGAI UTARA'),
('6309', '63', 'KAB. TABALONG'),
('6310', '63', 'KAB. TANAH BUMBU'),
('6311', '63', 'KAB. BALANGAN'),
('6371', '63', 'KOTA BANJARMASIN'),
('6372', '63', 'KOTA BANJARBARU'),
('6401', '64', 'KAB. PASER'),
('6402', '64', 'KAB. KUTAI KARTANEGARA'),
('6403', '64', 'KAB. BERAU'),
('6407', '64', 'KAB. KUTAI BARAT'),
('6408', '64', 'KAB. KUTAI TIMUR'),
('6409', '64', 'KAB. PENAJAM PASER UTARA'),
('6411', '64', 'KAB. MAHAKAM ULU'),
('6471', '64', 'KOTA BALIKPAPAN'),
('6472', '64', 'KOTA SAMARINDA'),
('6474', '64', 'KOTA BONTANG'),
('6501', '65', 'KAB. BULUNGAN'),
('6502', '65', 'KAB. MALINAU'),
('6503', '65', 'KAB. NUNUKAN'),
('6504', '65', 'KAB. TANA TIDUNG'),
('6571', '65', 'KOTA TARAKAN'),
('7101', '71', 'KAB. BOLAANG MONGONDOW'),
('7102', '71', 'KAB. MINAHASA'),
('7103', '71', 'KAB. KEPULAUAN SANGIHE'),
('7104', '71', 'KAB. KEPULAUAN TALAUD'),
('7105', '71', 'KAB. MINAHASA SELATAN'),
('7106', '71', 'KAB. MINAHASA UTARA'),
('7107', '71', 'KAB. MINAHASA TENGGARA'),
('7108', '71', 'KAB. BOLAANG MONGONDOW UTARA'),
('7109', '71', 'KAB. KEP. SIAU TAGULANDANG BIARO'),
('7110', '71', 'KAB. BOLAANG MONGONDOW TIMUR'),
('7111', '71', 'KAB. BOLAANG MONGONDOW SELATAN'),
('7171', '71', 'KOTA MANADO'),
('7172', '71', 'KOTA BITUNG'),
('7173', '71', 'KOTA TOMOHON'),
('7174', '71', 'KOTA KOTAMOBAGU'),
('7201', '72', 'KAB. BANGGAI'),
('7202', '72', 'KAB. POSO'),
('7203', '72', 'KAB. DONGGALA'),
('7204', '72', 'KAB. TOLI TOLI'),
('7205', '72', 'KAB. BUOL'),
('7206', '72', 'KAB. MOROWALI'),
('7207', '72', 'KAB. BANGGAI KEPULAUAN'),
('7208', '72', 'KAB. PARIGI MOUTONG'),
('7209', '72', 'KAB. TOJO UNA UNA'),
('7210', '72', 'KAB. SIGI'),
('7211', '72', 'KAB. BANGGAI LAUT'),
('7212', '72', 'KAB. MOROWALI UTARA'),
('7271', '72', 'KOTA PALU'),
('7301', '73', 'KAB. KEPULAUAN SELAYAR'),
('7302', '73', 'KAB. BULUKUMBA'),
('7303', '73', 'KAB. BANTAENG'),
('7304', '73', 'KAB. JENEPONTO'),
('7305', '73', 'KAB. TAKALAR'),
('7306', '73', 'KAB. GOWA'),
('7307', '73', 'KAB. SINJAI'),
('7308', '73', 'KAB. BONE'),
('7309', '73', 'KAB. MAROS'),
('7310', '73', 'KAB. PANGKAJENE KEPULAUAN'),
('7311', '73', 'KAB. BARRU'),
('7312', '73', 'KAB. SOPPENG'),
('7313', '73', 'KAB. WAJO'),
('7314', '73', 'KAB. SIDENRENG RAPPANG'),
('7315', '73', 'KAB. PINRANG'),
('7316', '73', 'KAB. ENREKANG'),
('7317', '73', 'KAB. LUWU'),
('7318', '73', 'KAB. TANA TORAJA'),
('7322', '73', 'KAB. LUWU UTARA'),
('7324', '73', 'KAB. LUWU TIMUR'),
('7326', '73', 'KAB. TORAJA UTARA'),
('7371', '73', 'KOTA MAKASSAR'),
('7372', '73', 'KOTA PARE PARE'),
('7373', '73', 'KOTA PALOPO'),
('7401', '74', 'KAB. KOLAKA'),
('7402', '74', 'KAB. KONAWE'),
('7403', '74', 'KAB. MUNA'),
('7404', '74', 'KAB. BUTON'),
('7405', '74', 'KAB. KONAWE SELATAN'),
('7406', '74', 'KAB. BOMBANA'),
('7407', '74', 'KAB. WAKATOBI'),
('7408', '74', 'KAB. KOLAKA UTARA'),
('7409', '74', 'KAB. KONAWE UTARA'),
('7410', '74', 'KAB. BUTON UTARA'),
('7411', '74', 'KAB. KOLAKA TIMUR'),
('7412', '74', 'KAB. KONAWE KEPULAUAN'),
('7413', '74', 'KAB. MUNA BARAT'),
('7414', '74', 'KAB. BUTON TENGAH'),
('7415', '74', 'KAB. BUTON SELATAN'),
('7471', '74', 'KOTA KENDARI'),
('7472', '74', 'KOTA BAU BAU'),
('7501', '75', 'KAB. GORONTALO'),
('7502', '75', 'KAB. BOALEMO'),
('7503', '75', 'KAB. BONE BOLANGO'),
('7504', '75', 'KAB. PAHUWATO'),
('7505', '75', 'KAB. GORONTALO UTARA'),
('7571', '75', 'KOTA GORONTALO'),
('7601', '76', 'KAB. MAMUJU UTARA'),
('7602', '76', 'KAB. MAMUJU'),
('7603', '76', 'KAB. MAMASA'),
('7604', '76', 'KAB. POLEWALI MANDAR'),
('7605', '76', 'KAB. MAJENE'),
('7606', '76', 'KAB. MAMUJU TENGAH'),
('8101', '81', 'KAB. MALUKU TENGAH'),
('8102', '81', 'KAB. MALUKU TENGGARA'),
('8103', '81', 'KAB MALUKU TENGGARA BARAT'),
('8104', '81', 'KAB. BURU'),
('8105', '81', 'KAB. SERAM BAGIAN TIMUR'),
('8106', '81', 'KAB. SERAM BAGIAN BARAT'),
('8107', '81', 'KAB. KEPULAUAN ARU'),
('8108', '81', 'KAB. MALUKU BARAT DAYA'),
('8109', '81', 'KAB. BURU SELATAN'),
('8171', '81', 'KOTA AMBON'),
('8172', '81', 'KOTA TUAL'),
('8201', '82', 'KAB. HALMAHERA BARAT'),
('8202', '82', 'KAB. HALMAHERA TENGAH'),
('8203', '82', 'KAB. HALMAHERA UTARA'),
('8204', '82', 'KAB. HALMAHERA SELATAN'),
('8205', '82', 'KAB. KEPULAUAN SULA'),
('8206', '82', 'KAB. HALMAHERA TIMUR'),
('8207', '82', 'KAB. PULAU MOROTAI'),
('8208', '82', 'KAB. PULAU TALIABU'),
('8271', '82', 'KOTA TERNATE'),
('8272', '82', 'KOTA TIDORE KEPULAUAN'),
('9101', '91', 'KAB. MERAUKE'),
('9102', '91', 'KAB. JAYAWIJAYA'),
('9103', '91', 'KAB. JAYAPURA'),
('9104', '91', 'KAB. NABIRE'),
('9105', '91', 'KAB. KEPULAUAN YAPEN'),
('9106', '91', 'KAB. BIAK NUMFOR'),
('9107', '91', 'KAB. PUNCAK JAYA'),
('9108', '91', 'KAB. PANIAI'),
('9109', '91', 'KAB. MIMIKA'),
('9110', '91', 'KAB. SARMI'),
('9111', '91', 'KAB. KEEROM'),
('9112', '91', 'KAB PEGUNUNGAN BINTANG'),
('9113', '91', 'KAB. YAHUKIMO'),
('9114', '91', 'KAB. TOLIKARA'),
('9115', '91', 'KAB. WAROPEN'),
('9116', '91', 'KAB. BOVEN DIGOEL'),
('9117', '91', 'KAB. MAPPI'),
('9118', '91', 'KAB. ASMAT'),
('9119', '91', 'KAB. SUPIORI'),
('9120', '91', 'KAB. MAMBERAMO RAYA'),
('9121', '91', 'KAB. MAMBERAMO TENGAH'),
('9122', '91', 'KAB. YALIMO'),
('9123', '91', 'KAB. LANNY JAYA'),
('9124', '91', 'KAB. NDUGA'),
('9125', '91', 'KAB. PUNCAK'),
('9126', '91', 'KAB. DOGIYAI'),
('9127', '91', 'KAB. INTAN JAYA'),
('9128', '91', 'KAB. DEIYAI'),
('9171', '91', 'KOTA JAYAPURA'),
('9201', '92', 'KAB. SORONG'),
('9202', '92', 'KAB. MANOKWARI'),
('9203', '92', 'KAB. FAK FAK'),
('9204', '92', 'KAB. SORONG SELATAN'),
('9205', '92', 'KAB. RAJA AMPAT'),
('9206', '92', 'KAB. TELUK BINTUNI'),
('9207', '92', 'KAB. TELUK WONDAMA'),
('9208', '92', 'KAB. KAIMANA'),
('9209', '92', 'KAB. TAMBRAUW'),
('9210', '92', 'KAB. MAYBRAT'),
('9211', '92', 'KAB. MANOKWARI SELATAN'),
('9212', '92', 'KAB. PEGUNUNGAN ARFAK'),
('9271', '92', 'KOTA SORONG');

-- --------------------------------------------------------

--
-- Table structure for table `laparuskas`
--

CREATE TABLE `laparuskas` (
  `Nomor_Jurnal` varchar(5) DEFAULT NULL,
  `Saldo_Kas` bigint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laplabarugi`
--

CREATE TABLE `laplabarugi` (
  `Tanggal_LabaRugi` datetime DEFAULT NULL,
  `Kode_Perkiraan` varchar(3) DEFAULT NULL,
  `Debet_LR` bigint(4) DEFAULT NULL,
  `Kredit_LR` bigint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lapmodal`
--

CREATE TABLE `lapmodal` (
  `Bulan_Tahun` varchar(20) DEFAULT NULL,
  `Tanggal_Prive` datetime DEFAULT NULL,
  `Modal_Awal` decimal(16,0) DEFAULT NULL,
  `Laba_Bersih` decimal(16,0) DEFAULT NULL,
  `Prive` decimal(16,0) DEFAULT NULL,
  `Penambahan_Modal` decimal(16,0) DEFAULT NULL,
  `Modal_Akhir` decimal(16,0) DEFAULT NULL,
  `Kode_Perusahaan` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lapmodaldetail`
--

CREATE TABLE `lapmodaldetail` (
  `Nomor_Input` varchar(5) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `Modal_Awal_Detail` decimal(16,0) DEFAULT NULL,
  `Laba_Bersih_Detail` decimal(16,0) DEFAULT NULL,
  `Prive_Detail` decimal(16,0) DEFAULT NULL,
  `Penambahan_Modal_Detail` decimal(16,0) DEFAULT NULL,
  `Modal_Akhir_Detail` decimal(16,0) DEFAULT NULL,
  `Kode_Perusahaan` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lapneraca`
--

CREATE TABLE `lapneraca` (
  `Bulan_Tahun` varchar(20) DEFAULT NULL,
  `Tanggal_Neraca` datetime DEFAULT NULL,
  `Kode_Perkiraan` varchar(3) DEFAULT NULL,
  `SaldoDebet` bigint(4) DEFAULT NULL,
  `SaldoKredit` bigint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lapneracasaldo`
--

CREATE TABLE `lapneracasaldo` (
  `Tanggal_Neraca_Saldo` datetime DEFAULT NULL,
  `Kode_Perkiraan` varchar(3) DEFAULT NULL,
  `Debet_Neraca_Saldo` bigint(4) DEFAULT NULL,
  `Kredit_Neraca_Saldo` bigint(4) DEFAULT NULL,
  `Saldo_Neraca_Saldo` bigint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_prov` char(2) NOT NULL,
  `nama` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_prov`, `nama`) VALUES
('11', 'Aceh'),
('12', 'Sumatera Utara'),
('13', 'Sumatera Barat'),
('14', 'Riau'),
('15', 'Jambi'),
('16', 'Sumatera Selatan'),
('17', 'Bengkulu'),
('18', 'Lampung'),
('19', 'Kepulauan Bangka Belitung'),
('21', 'Kepulauan Riau'),
('31', 'DKI Jakarta'),
('32', 'Jawa Barat'),
('33', 'Jawa Tengah'),
('34', 'DI Yogyakarta'),
('35', 'Jawa Timur'),
('36', 'Banten'),
('51', 'Bali'),
('52', 'Nusa Tenggara Barat'),
('53', 'Nusa Tenggara Timur'),
('61', 'Kalimantan Barat'),
('62', 'Kalimantan Tengah'),
('63', 'Kalimantan Selatan'),
('64', 'Kalimantan Timur'),
('65', 'Kalimantan Utara'),
('71', 'Sulawesi Utara'),
('72', 'Sulawesi Tengah'),
('73', 'Sulawesi Selatan'),
('74', 'Sulawesi Tenggara'),
('75', 'Gorontalo'),
('76', 'Sulawesi Barat'),
('81', 'Maluku'),
('82', 'Maluku Utara'),
('91', 'Papua Barat'),
('92', 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_admin`
--

CREATE TABLE `tabel_admin` (
  `id_admin` int(4) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tanggal` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_admin`
--

INSERT INTO `tabel_admin` (`id_admin`, `nama`, `username`, `password`, `tanggal`) VALUES
(1, 'Agus Sumarna', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2011-03-11 08:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_master`
--

CREATE TABLE `tabel_master` (
  `kode_rekening` varchar(10) NOT NULL DEFAULT '',
  `nama_rekening` varchar(100) NOT NULL,
  `tanggal_awal` varchar(12) NOT NULL,
  `awal_debet` int(15) NOT NULL,
  `awal_kredit` int(15) NOT NULL,
  `mut_debet` int(15) NOT NULL,
  `mut_kredit` int(15) NOT NULL,
  `sisa_debet` int(15) NOT NULL,
  `sisa_kredit` int(15) NOT NULL,
  `rl_debet` int(15) NOT NULL,
  `rl_kredit` int(15) NOT NULL,
  `nrc_debet` int(15) NOT NULL,
  `nrc_kredit` int(15) NOT NULL,
  `posisi` varchar(15) NOT NULL,
  `normal` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_master`
--

INSERT INTO `tabel_master` (`kode_rekening`, `nama_rekening`, `tanggal_awal`, `awal_debet`, `awal_kredit`, `mut_debet`, `mut_kredit`, `sisa_debet`, `sisa_kredit`, `rl_debet`, `rl_kredit`, `nrc_debet`, `nrc_kredit`, `posisi`, `normal`) VALUES
('111.01', 'Kas Unit Umum', '', 0, 8600000, 0, 0, 0, 0, 0, 0, 0, 8600000, 'neraca', 'debet'),
('112.01', 'Kas Di Bank', '', 20000000, 0, 0, 0, 0, 0, 0, 0, 20000000, 0, 'neraca', 'debet'),
('113.01', 'Piutang Anggota', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'neraca', 'debet'),
('114.01', 'Piutang Pengurus', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'neraca', 'debet'),
('133.01', 'Mesin Ketik', '', 5100000, 0, 0, 0, 0, 0, 0, 0, 5100000, 0, 'neraca', 'debet'),
('133.02', 'Komputer', '', 44000000, 0, 0, 0, 0, 0, 0, 0, 44000000, 0, 'neraca', 'debet'),
('133.03', 'Mesin Foto Copy', '', 32500000, 0, 0, 0, 0, 0, 0, 0, 32500000, 0, 'neraca', 'debet'),
('133.04', 'Handphone', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'neraca', 'debet'),
('134.01', 'Kendaraan Roda Empat', '', 75000000, 0, 0, 0, 0, 0, 0, 0, 75000000, 0, 'neraca', 'debet'),
('135.01', 'Perlengkapan Toko', '', 5000000, 0, 0, 0, 0, 0, 0, 0, 5000000, 0, 'neraca', 'debet'),
('135.02', 'Perabot/Inventaris', '', 5000000, 0, 0, 0, 0, 0, 0, 0, 5000000, 0, 'neraca', 'debet'),
('211.01', 'Hutang Barang Toko', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'neraca', 'kredit'),
('212.01', 'Simpanan Manasuka', '', 0, 97600000, 0, 0, 0, 0, 0, 0, 0, 97600000, 'neraca', 'kredit'),
('212.02', 'Simpanan Khusus', '', 0, 400000, 0, 0, 0, 0, 0, 0, 0, 400000, 'neraca', 'kredit'),
('213.01', 'Dana Anggota', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'neraca', 'kredit'),
('213.02', 'Dana Pengurus', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'neraca', 'kredit'),
('311.01', 'Simpanan Anggota Pokok', '', 0, 10000000, 0, 0, 0, 0, 0, 0, 0, 10000000, 'neraca', 'kredit'),
('311.02', 'Simpanan Anggota Wajib', '', 0, 10000000, 0, 0, 0, 0, 0, 0, 0, 10000000, 'neraca', 'kredit'),
('313.01', 'Modal Donasi', '', 0, 60000000, 0, 0, 0, 0, 0, 0, 0, 60000000, 'neraca', 'kredit'),
('313.05', 'SHU Tahun Lalu Belum Dibagi', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'neraca', 'kredit'),
('314.01', 'SHU Tahun Berjalan(Umum)', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'neraca', 'kredit'),
('411.01', 'Penjualan Barang Toko', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'debet'),
('411.02', 'Pendapatan Jasa', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'debet'),
('412.01', 'Pendapatan Simpan Pinjam', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'kredit'),
('413.01', 'Pendapatan Jasa Lain-lain', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'kredit'),
('511.01', 'Biaya Pembelian Barang', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'debet'),
('522.01', 'Biaya Administrasi', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'debet'),
('522.02', 'Biaya Gaji Karyawan', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'debet'),
('522.03', 'Biaya Keuangan (Bank)', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'debet'),
('522.04', 'Biaya Organisasi', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'debet');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_neraca`
--

CREATE TABLE `tabel_neraca` (
  `kode_rekening` varchar(10) NOT NULL DEFAULT '',
  `nama_rekening` varchar(100) NOT NULL,
  `tanggal_awal` varchar(12) NOT NULL,
  `awal_debet` int(15) NOT NULL,
  `awal_kredit` int(15) NOT NULL,
  `mut_debet` int(15) NOT NULL,
  `mut_kredit` int(15) NOT NULL,
  `sisa_debet` int(15) NOT NULL,
  `sisa_kredit` int(15) NOT NULL,
  `rl_debet` int(15) NOT NULL,
  `rl_kredit` int(15) NOT NULL,
  `nrc_debet` int(15) NOT NULL,
  `nrc_kredit` int(15) NOT NULL,
  `posisi` varchar(15) NOT NULL,
  `normal` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_neraca`
--

INSERT INTO `tabel_neraca` (`kode_rekening`, `nama_rekening`, `tanggal_awal`, `awal_debet`, `awal_kredit`, `mut_debet`, `mut_kredit`, `sisa_debet`, `sisa_kredit`, `rl_debet`, `rl_kredit`, `nrc_debet`, `nrc_kredit`, `posisi`, `normal`) VALUES
('0', '<b>AKTIVA LANCAR</b>', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('1', 'Kas', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('2', 'Bank', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('3', 'Piutang Anggota', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('4', 'Piutang Bukan Anggota', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('5', 'Pendapatan yang masih harus diterima', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('6', 'Persediaan Barang Toko', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('7', 'break', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('8', '<b>TOTAL AKTIVA LANCAR</b>', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('9', 'break', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('10', '<b>PENYERTAAN PKPRI</b>', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('11', 'Penyertaan PKPRI', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('12', 'break', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('13', '<b>AKTIVA TETAP</b>', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('14', 'Mesin-mesin', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('15', 'Kendaraan', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('16', 'Perlengkapan Toko', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('17', 'Perabot', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('18', 'Penyusutan Mesin', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('19', 'Penyusutan Kendaraan', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('20', 'Penyusutan Perlengkapan Toko', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('21', 'Penyusutan Perabot', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('22', 'Total Aktiva Tetap', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('23', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('24', '<b>AKTIVA LAINNYA<b>', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('25', 'Piutang Sementara', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('26', 'break', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('27', '<b>JUMLAH AKTIVA</b>', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_profil`
--

CREATE TABLE `tabel_profil` (
  `nama_perusahaan` varchar(30) NOT NULL,
  `gedung` varchar(30) NOT NULL,
  `jalan` varchar(30) NOT NULL,
  `kelurahan` varchar(30) NOT NULL,
  `kecamatan` varchar(30) NOT NULL,
  `propinsi` varchar(15) NOT NULL,
  `negara` varchar(15) NOT NULL,
  `telpon` varchar(12) NOT NULL,
  `fax` varchar(12) NOT NULL,
  `email` varchar(20) NOT NULL,
  `website` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_profil`
--

INSERT INTO `tabel_profil` (`nama_perusahaan`, `gedung`, `jalan`, `kelurahan`, `kecamatan`, `propinsi`, `negara`, `telpon`, `fax`, `email`, `website`) VALUES
('Koperasi Bersama', 'Menara Sarbini', 'Jl. Salak VII', 'Abadijaya', 'Sukmajaya', 'Jabar', 'Indonesia', '0217703964', '0217703964', 'sumarna_agus@yahoo.c', 'http://ri32.wordpres');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_rugi_laba`
--

CREATE TABLE `tabel_rugi_laba` (
  `kode_rekening` varchar(10) NOT NULL DEFAULT '',
  `nama_rekening` varchar(100) NOT NULL,
  `tanggal_awal` varchar(12) NOT NULL,
  `awal_debet` int(15) NOT NULL,
  `awal_kredit` int(15) NOT NULL,
  `mut_debet` int(15) NOT NULL,
  `mut_kredit` int(15) NOT NULL,
  `sisa_debet` int(15) NOT NULL,
  `sisa_kredit` int(15) NOT NULL,
  `rl_debet` int(15) NOT NULL,
  `rl_kredit` int(15) NOT NULL,
  `nrc_debet` int(15) NOT NULL,
  `nrc_kredit` int(15) NOT NULL,
  `posisi` varchar(15) NOT NULL,
  `normal` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_rugi_laba`
--

INSERT INTO `tabel_rugi_laba` (`kode_rekening`, `nama_rekening`, `tanggal_awal`, `awal_debet`, `awal_kredit`, `mut_debet`, `mut_kredit`, `sisa_debet`, `sisa_kredit`, `rl_debet`, `rl_kredit`, `nrc_debet`, `nrc_kredit`, `posisi`, `normal`) VALUES
('I.', 'SUMBER PENGHASILAN', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('411.01', 'Penjualan Barang Toko', '02/12/2010', 0, 0, 0, 10000000, 0, 10000000, 0, 10000000, 0, 0, 'rugi-laba', 'debet'),
('411.02', 'Pendapatan Jasa', '02/12/2010', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'debet'),
('412.01', 'Pendapatan Simpan Pinjam', '02/12/2010', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'kredit'),
('413.01', 'Pendapatan Jasa Lain-lain', '02/12/2010', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'kredit'),
('II.', 'BIAYA UMUM DAN ADMINISTRASI', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('B', 'BIAYA ADMINISTRASI', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('522.01', 'Biaya Administrasi', '02/12/2010', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'debet'),
('522.02', 'Biaya Gaji Karyawan', '02/12/2010', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'debet'),
('522.03', 'Biaya Keuangan (Bank)', '02/12/2010', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'debet'),
('522.04', 'Biaya Organisasi', '02/12/2010', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rugi-laba', 'debet'),
('III', 'JUMLAH PENDAPATAN', '', 0, 0, 0, 0, 0, 0, 0, 10000000, 0, 0, '', ''),
('IV', 'JUMLAH BIAYA', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
('V', 'Sisa Hasil Usaha Tahun Berjalan', '', 0, 0, 0, 0, 0, 0, 10000000, 0, 0, 0, '', ''),
('VI', 'Total Balance', '', 0, 0, 0, 0, 0, 0, 10000000, 10000000, 0, 0, '', ''),
('VII', 'TANGGAL PERIODE', '18/12/2010', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `id_transaksi` int(15) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `kode_rekening` varchar(10) NOT NULL,
  `tanggal_transaksi` varchar(12) NOT NULL,
  `jenis_transaksi` varchar(15) NOT NULL,
  `keterangan_transaksi` text NOT NULL,
  `debet` int(15) NOT NULL,
  `kredit` int(15) NOT NULL,
  `tanggal_posting` varchar(12) NOT NULL,
  `keterangan_posting` varchar(10) NOT NULL,
  `id_admin` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table_name`
--

CREATE TABLE `table_name` (
  `nama_dokter` varchar(100) DEFAULT NULL,
  `no_sip` varchar(100) DEFAULT NULL,
  `alamat_dokter` varchar(100) DEFAULT NULL,
  `kontak_dokter` double DEFAULT NULL,
  `id_member` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_name`
--

INSERT INTO `table_name` (`nama_dokter`, `no_sip`, `alamat_dokter`, `kontak_dokter`, `id_member`) VALUES
('Dr.Maria Elisabeth Siahaan', '028/158/SIP-TU/II/2003', 'sby', 1234, 8),
('Dr. Sony Prabowo', '028/162/SIP-TU/III/2003', 'sby', 1234, 8),
('Dr.Nursukmawati Malayu', '028/167/SIP-TU/III/2003', 'sby', 1234, 8),
('Dr.Ike Hikmawati', '028/169/SIP-TU/III/2003', 'sby', 1234, 8),
('Dr.Dewa Ayu Sasiary Prawani', '028/170/SIP-TU/III/2003', 'sby', 1234, 8),
('Dr.I Gusti Ngurah Okadara', '028/171/SIP-TU/III/2003', 'sby', 1234, 8),
('Dr.Masria', '028/180/SIP-TU/VI/2003', 'sby', 1234, 8),
('Dr.Teti Tridarti Kudrat', '028/183/SIP-TU/V/2003', 'sby', 1234, 8),
('Dr.Tri Sujiwati', '028/185/SIP-TU/VIII/2003', 'sby', 1234, 8),
('Dr.Susi Nurhayani', '028/186/SIP-TU/VIII/2003', 'sby', 1234, 8),
('Dr.Hermawan Adinugroho', '028/188/SIP-TU/VIII/2003', 'sby', 1234, 8),
('Dr.Dewi Caturriny', '028/189/SIP-TU/VIII/2003', 'sby', 1234, 8),
('Dr.M Fadjar Nur Ilhamsyah Gaffar', '028/190/SIP-TU/VIII/2003', 'sby', 1234, 8),
('Dr.Lizna Oemar', '028/191/SIP-TU/VIII/2003', 'sby', 1234, 8),
('Dr.Alia Shahnaz', '028/195/SIP-TU/IX/2003', 'sby', 1234, 8),
('Dr.Feriyandhi Meizirrsjah', '028/203/SIP-TU/XI/2003', 'sby', 1234, 8),
('Dr.Vindy Ruslianti', '028/206/SIP-TU/XI/2003', 'sby', 1234, 8),
('Dr.Hanry Susilo Ibrahim', '028/210/SIP-TU/I/2004', 'sby', 1234, 8),
('Dr.Isnindiary Sandra Dungga', '028/78/SIP-TU/V/2001', 'sby', 1234, 8),
('Dr.Isdiawati', '028/218/SIP-TU/III/2004', 'sby', 1234, 8),
('Dr.Fransisca Amelia Sugianto', '028/220/SIP-TU/III/2004', 'sby', 1234, 8),
('Dr.Stella Patricia Yapari', '028/224/SIP-TU/III/2004', 'sby', 1234, 8),
('Dr.Jouhartien Aquarini', '028/226/SIP-TU/IV/2004', 'sby', 1234, 8),
('Dr.Renaning Tyas', '028/230/SIP-TU/IV/2004', 'sby', 1234, 8),
('Dr.Herliawati', '028/231/SIP-TU/V/2004', 'sby', 1234, 8),
('Dr.Erica Handrita', '028/232/SIP-TU/V/2004', 'sby', 1234, 8),
('Dr.Ariesanty Irawaty M', '028/234/SIP-TU/V/2004', 'sby', 1234, 8),
('Dr.Trining Sujiani', '028/235/SIP-TU/V/2004', 'sby', 1234, 8),
('Dr.Julhismira', '028/236/SIP-TU/V/2004', 'sby', 1234, 8),
('Dr.I Made Budawarman', '028/238/SIP-TU/VI/2004', 'sby', 1234, 8),
('Dr.Abdul Haris', '028/241/SIP-TU/VII/2004', 'sby', 1234, 8),
('Dr.Astrid Septrisia Paat', '028/244/SIP-TU/VII/2004', 'sby', 1234, 8),
('Dr.Uji Asiah', '028/245/SIP-TU/VII/2004', 'sby', 1234, 8),
('Dr.Ummi Sartika Almady', '028/246/SIP-TU/VIII/2004', 'sby', 1234, 8),
('Dr.Neni Sundari', '028/247/SIP-TU/VIII/2004', 'sby', 1234, 8),
('Dr.Joko Yustono Yus Kasran', '028/250/SIP-TU/VIII/2004', 'sby', 1234, 8),
('Dr.Mimin Saputri', '028/251/SIP-TU/VIII/2004', 'sby', 1234, 8),
('Dr.Martin Ayuningtyas Wulandari', '028/252/SIP-TU/VIII/2004', 'sby', 1234, 8),
('Dr.Agus Nirwan', '028/253/SIP-TU/VIII/2004', 'sby', 1234, 8),
('Dr.Justina Faresty', '028/255/SIP-TU/VIII/2004', 'sby', 1234, 8),
('Dr.Susanto', '028/257/SIP-TU/VIII/2004', 'sby', 1234, 8),
('Dr.Vidyanti Evabrina Simarmata', '028/260/SIP-TU/X/2004', 'sby', 1234, 8),
('Dr.Yina Linden', '028/261/SIP-TU/X/2004', 'sby', 1234, 8),
('Dr.Linda Ramayati', '028/262/SIP-TU/X/2004', 'sby', 1234, 8),
('Dr.Ernawati', '028/263/SIP-TU/X/2004', 'sby', 1234, 8),
('Dr.Yulisna Leman', '028/266/SIP-TU/XI/2004', 'sby', 1234, 8),
('Dr.Aris Santoso', '028/268/SIP-TU/XI/2004', 'sby', 1234, 8),
('Dr.Erika Nina Br Sembiring', '028/272/SIP-TU/XI/2004', 'sby', 1234, 8),
('Dr.Faisal Thamrin', '028/275/SIP-TU/XII/2004', 'sby', 1234, 8),
('Dr.Nasaruddin M.Sheldon', '028/276/SIP-TU/XII/2004', 'sby', 1234, 8),
('Dr.Muhammad Ahsan', '028/277/SIP-TU/XII/2004', 'sby', 1234, 8),
('Dr.Tien Fatimatuzahhra', '028/278/SIP-TU/XII/2004', 'sby', 1234, 8),
('Dr.Thrisia Wuryanti', '028/279/SIP-TU/XII/2004', 'sby', 1234, 8),
('Dr.Endang Dwi Esti Juliandary', '028/280/SIP-TU/I/2005', 'sby', 1234, 8),
('Dr.Sri Amrini', '028/281/SIP-TU/I/2005', 'sby', 1234, 8),
('Dr.Zainue Akbar', '028/282/SIP-TU/I/2005', 'sby', 1234, 8),
('Dr.Otto Rajasa', '028/284/SIP-TU/III/2005', 'sby', 1234, 8),
('Dr.Francisca Pratiwi', '028/285/SIP-TU/III/2005', 'sby', 1234, 8),
('Dr.Cahyadi Ilham', '028/286/SIP-TU/III/2005', 'sby', 1234, 8),
('Dr.Faisal', '028/287/SIP-TU/III/2005', 'sby', 1234, 8),
('Dr.Esther Vonny K', '028/293/SIP-TU/III/2005', 'sby', 1234, 8),
('Dr.Mahes Bayu Aji', '028/294/SIP-TU/III/2005', 'sby', 1234, 8),
('Dr.Yenny Setiawati', '028/296/SIP-TU/III/2005', 'sby', 1234, 8),
('Dr.Susi Cavinojani', '028/298/SIP-TU/III/2005', 'sby', 1234, 8),
('Dr.Oktavio Augusto De Jesus OS', '028/299/SIP-TU/IV/2005', 'sby', 1234, 8),
('Dr.Andrianus Rohadi', '028/300/SIP-TU/IV/2005', 'sby', 1234, 8),
('Dr.Eko Wahju Tjahjono', '028/301/SIP-TU/IV/2005', 'sby', 1234, 8),
('Dr.H.M Subandi', '028/302/SIP-TU/IV/2005', 'sby', 1234, 8),
('Dr.Taufik Kukuh Widodo', '028/303/SIP-TU/IV/2005', 'sby', 1234, 8),
('Dr.Yuli Eko Prasetyo', '028/305/SIP-TU/IV/2005', 'sby', 1234, 8),
('Dr.Subagya', '028/306/SIP-TU/V/2005', 'sby', 1234, 8),
('Dr. Erika S Panjaitan', '028/309/SIP-TU/V/2005', 'sby', 1234, 8),
('Dr.Oksen Pariangan', '028/314/SIP-TU/VI/2005', 'sby', 1234, 8),
('Dr.Luluk Kumala Kafbiyah', '028/315/SIP-TU/VI/2005', 'sby', 1234, 8),
('Dr.Suciohati Dewata', '028/316/SIP-TU/VI/2005', 'sby', 1234, 8),
('Dr.Fenny Zulkiflie', '028/317/SIP-TU/VI/2005', 'sby', 1234, 8),
('Dr.Efanna Yogiyanti', '028/318/SIP-TU/VI/2005', 'sby', 1234, 8),
('Dr.Erna Kartikawati', '028/319/SIP-TU/VII/2005', 'sby', 1234, 8),
('Dr.R FX Widyatmoko', '028/320/SIP-TU/VII/2005', 'sby', 1234, 8),
('Dr.Nur Afiah', '028/326/SIP-TU/VII/2005', 'sby', 1234, 8),
('Dr.Lilik Indrayati', '028/328/SIP-TU/VII/2005', 'sby', 1234, 8),
('Dr.Ita Dahlia', '028/330/SIP-TU/VII/2005', 'sby', 1234, 8),
('Dr.Simon Akhmad Norman', '028/331/SIP-TU/VII/2005', 'sby', 1234, 8),
('Dr.Kristina Dwi Wahyuni', '028/332/SIP-TU/VII/2005', 'sby', 1234, 8),
('Dr.Balerina J.P Pontolumiju', '028/338/SIP-TU/VII/2005', 'sby', 1234, 8),
('Dr. Masria', '028/339/SIP-TU/VIII/2005', 'sby', 1234, 8),
(' Dr. Mochammad Syafak', '028/340/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr. Steven Fungsi', '028/345/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Ingrid Jeanette Maria S', '028/349/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Agustining Rahayu', '028/350/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Freddy Suhadi', '028/352/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Rudi Mokodompit', '028/354/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Nicko Febriyanto', '028/356/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Cristmos Bambang M', '028/357/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Ririn Sriwijayanti', '028/359/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Christie Sophie Tengkere', '028/360/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Daniel Richard Humpry', '028/361/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Petty Ariani', '028/362/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Samuel Kong', '028/364/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Nike Ariesta', '028/368/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Wita Kartika Nurani', '028/369/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Fitriah', '028/370/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Fahmi Zawawi', '028/372/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Andi Sri Juliarty', '028/373/SIP-TU/VIII/2005', 'sby', 1234, 8),
('Dr.Wiwik Mulyana', '028/374/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Sri Irma Fitriani', '028/375/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Tzeto Itjong', '028/376/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Koster Panggabean', '028/377/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Fredrik P Demmassabu', '028/378/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Djuhani Prihnata Putri', '028/381/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.La Ode Syahrizal', '028/382/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Indah Puspitasari', '028/383/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Dedy Waskita', '028/384/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Basuki Nugroho', '028/385/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Khairan Irmansyah', '028/386/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Alexander Henry MS', '028/387/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Novida Ariani', '028/390/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Iskandar', '028/392/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Syafaah H Ma\'sum', '028/395/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Danie Djonly Poluan', '028/398/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Miliater Simanjuntak', '028/401/SIP-TU/IX/2005', 'sby', 1234, 8),
('Dr.Debi Septiawati', '028/409/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Andi Ashaq', '028/410/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Ami Noviana Pangkong', '028/411/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Anastasia Yuliani', '028/412/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Retnowati', '028/413/SIP-TU/X/2005', 'sby', 1234, 8),
('\"Dr.Bambang Edyono', 'MA\"', '028/414/SIP-TU/X/2005', 0, 1234),
('\"Dr.Irma Eriawati', 'MA\"', '028/415/SIP-TU/X/2005', 0, 1234),
('\"Dr.Emilia Imelda', 'SPP\"', '028/416/SIP-TU/X/2005', 0, 1234),
('Dr.Theresia Normawati A', '028/417/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Aminuddin', '028/418/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Lisa Safitri', '028/419/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Waty Anton', '028/420/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Meriah Yacobi', '028/421/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.PM Sandra Iskandar', '028/422/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Dwi Anna Susanti', '028/423/SIP-TU/X/2005', 'sby', 1234, 8),
('\"Dr.Bambang Syahrial', 'M.Kes\"', '028/424/SIP-TU/X/2005', 0, 1234),
('Dr.Radot Marchum.S', '028/425/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Benny Winata', '028/426/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Syamsul Bahri', '028/427/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Kusnadi', '028/428/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Jahja Budi Sutedja', '028/429/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Taufik Kukuh Widodo', '028/440/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Erna Wahid Tyastuti', '028/447/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Florensia Shanty DM', '028/451/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Hamidi Tjiu', '028/452/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Marlina', '028/453/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Zulfikar Mochtar', '028/456/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Anton Budi Saputra Usfinit', '028/458/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Dwi Susanto', '028/460/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Suko Setyanto', '028/461/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.R Julian Sjarif', '028/463/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Ratih Terang P', '028/467/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Fajar Rudy Qimindra', '028/468/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Richard Herman Senduk', '028/469/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Hadi Yuniarko', '028/473/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Benny Wibianto', '028/484/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Deetje Mawengkang', '028/485/SIP-TU/X/2005', 'sby', 1234, 8),
('Dr.Lies Indrayati', '028/486/SIP-TU/XI/2005', 'sby', 1234, 8),
('Dr.Cokorda Ratih Istri KW', '028/487/SIP-TU/XI/2005', 'sby', 1234, 8),
('Dr.H.Andi Lawang P', '028/489/SIP-TU/XI/2005', 'sby', 1234, 8),
('Dr.Mahmudah', '028/491/SIP-TU/XI/2005', 'sby', 1234, 8),
('Dr.Endah Pujiastuti', '028/492/SIP-TU/XI/2005', 'sby', 1234, 8),
('Dr.Elyas Pangalinan', '028/493/SIP-TU/XI/2005', 'sby', 1234, 8),
('Dr.Arnold Wayong OW', '028/496/SIP-TU/XII/2005', 'sby', 1234, 8),
('Dr.Veronica Epana Silaen', '028/496/SIP-TU/XII/2005', 'sby', 1234, 8),
('Dr.Rahmani Husin', '028/498/SIP-TU/XII/2005', 'sby', 1234, 8),
('Dr.Tenri Esa', '028/502/SIP-TU/XII/2005', 'sby', 1234, 8),
('Dr.Ira Rahma', '028/504/SIP-TU/XII/2005', 'sby', 1234, 8),
('Dr.Line Tatkarina', '028/505/SIP-TU/XII/2005', 'sby', 1234, 8),
('Dr.Faisal Rosady', '028/506/SIP-TU/XII/2005', 'sby', 1234, 8),
('Dr.Ghulam Iskandarsyah', '028/507/SIP-TU/XII/2005', 'sby', 1234, 8),
('Dr.Fahmi Hardini', '028/510/SIP-TU/I/2006', 'sby', 1234, 8),
('Dr.Lidia Nangay', '028/511/SIP-TU/I/2006', 'sby', 1234, 8),
('Dr.Padyo Budi Purbono', '028/512/SIP-TU/I/2006', 'sby', 1234, 8),
('Dr.Diah Ashyaksanti', '028/513/SIP-TU/I/2006', 'sby', 1234, 8),
('Dr.Soesi Meilisa Rani', '028/515/SIP-TU/I/2006', 'sby', 1234, 8),
('Dr.Linda Widiasari', '028/516/SIP-TU/I/2006', 'sby', 1234, 8),
('Dr.Aryono Wardiman', '028/517/SIP-TU/I/2006', 'sby', 1234, 8),
('Dr.Hamonangan Ronal PS', '028/518/SIP-TU/I/2006', 'sby', 1234, 8),
('Dr.Umi Latifah', '028/519/SIP-TU/I/2006', 'sby', 1234, 8),
('Dr.Erwin Widyanto', '028/520/SIP-TU/I/2006', 'sby', 1234, 8),
('Dr.Agus Iriansyah', '028/521/SIP-TU/I/2006', 'sby', 1234, 8),
('Dr.Rosdiana Sujuti', '028/522/SIP-TU/I/2006', 'sby', 1234, 8),
('Dr.Rachel Sinaga', '028/527/SIP-TU/II/2006', 'sby', 1234, 8),
('Dr.Hasmirah', '028/528/SIP-TU/II/2006', 'sby', 1234, 8),
('Dr.Riny Utami', '028/537/SIP-TU/III/2006', 'sby', 1234, 8),
('Dr.Evy Irmawaty Apidian', '028/539/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.Nisma', '028/540/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.A Hasnawati', '028/542/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.Sriyono', '028/543/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.Olga Jenny P.Mkes', '028/544/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.Friska Pardede', '028/545/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.Lily Banonah Rivai', '028/546/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.Endang Diarty', '028/547/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.Lanny Indah Wijaya', '028/548/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.Anne Indrawati', '028/552/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.Andrijanus Warsito', '028/553/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.Fatimah', '028/554/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.Cut Minora', '028/555/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.H Antung Asbad', '028/555/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.Mulik Liza Rachmi', '028/557/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.Marie Eva Hetty M', '028/558/SIP-TU/IV/2006', 'sby', 1234, 8),
('Dr.Endang Rahmawati P', '028/561/SIP-TU/V/2006', 'sby', 1234, 8),
('Dr.I Budianna Tombi Langi', '028/562/SIP-TU/V/2006', 'sby', 1234, 8),
('Dr.Puji Riani', '028/563/SIP-TU/V/2006', 'sby', 1234, 8),
('Dr.Fair Ruza', '028/566/SIP-TU/VI/2006', 'sby', 1234, 8),
('Dr.Maria Magdalena D', '028/569/SIP-TU/VII/2006', 'sby', 1234, 8),
('Dr.Reza Hafid', '028/570/SIP-TU/VII/2006', 'sby', 1234, 8),
('Dr.Herry Okta Winarto', '028/572/SIP-TU/VII/2006', 'sby', 1234, 8),
('Dr.Dewi Supriyana', '028/573/SIP-TU/VII/2006', 'sby', 1234, 8),
('Dr.Halimah Sadiah', '028/574/SIP-TU/VIII/2006', 'sby', 1234, 8),
('Dr.Iwan Zulfikar', '028/575/SIP-TU/VIII/2006', 'sby', 1234, 8),
('Dr.H. Rina Yuniarti', '028/577/SIP-TU/IX/2006', 'sby', 1234, 8),
('Dr.Karunia Nente', '028/578/SIP-TU/IX/2006', 'sby', 1234, 8),
('Dr.Ika Gladies Syaferani', '028/581/SIP-TU/X/2006', 'sby', 1234, 8),
('Dr.Henry Yapari', '028/582/SIP-TU/X/2006', 'sby', 1234, 8),
('Dr.Janes Martinus M', '028/583/SIP-TU/X/2006', 'sby', 1234, 8),
('Dr.Juliyanti Rohsortani. S', '028/585/SIP-TU/X/2006', 'sby', 1234, 8),
('Dr.Dameria Sri I P', '028/586/SIP-TU/X/2006', 'sby', 1234, 8),
('Dr.Nadia Monita', '028/588/SIP-TU/X/2006', 'sby', 1234, 8),
('Dr.Rano Ismail', '028/589/SIP-TU/X/2006', 'sby', 1234, 8),
('Dr.Vernilina Oktaeighta A', '028/590/SIP-TU/XI/2006', 'sby', 1234, 8),
('Dr.Istianah', '028/592/SIP-TU/XI/2006', 'sby', 1234, 8),
('Dr.Tommy Nugraha', '028/593/SIP-TU/XI/2006', 'sby', 1234, 8),
('Dr.Albert Arung', '028/594/SIP-TU/XII/2006', 'sby', 1234, 8),
('Dr.Yuli Astutiandriani', '028/595/SIP-TU/XII/2006', 'sby', 1234, 8),
('Dr.Netiana', '028/596/SIP-TU/XII/2006', 'sby', 1234, 8),
('Dr.Siti Saima', '028/597/SIP-TU/XII/2006', 'sby', 1234, 8),
('Dr.Yurgen', '028/597/SIP-TU/XII/2006', 'sby', 1234, 8),
('Dr.Vina Oktora', '028/602/SIP-TU/I/2007', 'sby', 1234, 8),
('Dr.Hidjrat Hidayat', '028/604/SIP-TU/I/2007', 'sby', 1234, 8),
('Dr.Farah Alkatiri', '028/605/SIP-TU/I/2007', 'sby', 1234, 8),
('Dr.H Ichsan Fahmi', '028/606/SIP-TU/II/2007', 'sby', 1234, 8),
('Dr.Hastuti Untari', '028/607/SIP-TU/II/2007', 'sby', 1234, 8),
('Dr.Siti Hatijah', '028/608/SIP-TU/II/2007', 'sby', 1234, 8),
('Dr.Muhammad Zaitun F', '028/609/SIP-TU/II/2007', 'sby', 1234, 8),
('Dr.Herlina Pohan', '028/610/SIP-TU/II/2007', 'sby', 1234, 8),
('Dr.Irma Suryani', '028/611/SIP-TU/II/2007', 'sby', 1234, 8),
('Dr.Agus Darwiyanto', '028/612/SIP-TU/II/2007', 'sby', 1234, 8),
('Dr.Jimmy Elraju Kalesaran', '028/613/SIP-TU/II/2007', 'sby', 1234, 8),
('Dr.Dody Alfera', '028/615/SIP-TU/III/2007', 'sby', 1234, 8),
('Dr.Fatmawati', '028/616/SIP-TU/III/2007', 'sby', 1234, 8),
('Dr.Afriani Likun', '028/617/SIP-TU/III/2007', 'sby', 1234, 8),
('Dr.Ursula Catharina Sulistiani', '028/618/SIP-TU/III/2007', 'sby', 1234, 8),
('Dr.Sri Susanti Handayani', '028/619/SIP-TU/III/2007', 'sby', 1234, 8),
('Dr.Sofiana', '028/620/SIP-TU/III/2007', 'sby', 1234, 8),
('Dr.Hendrik E I Rumajar', '028/626/SIP-TU/III/2007', 'sby', 1234, 8),
('Dr.Philip Hasanuddin Panrita', '028/627/SIP-TU/IV/2007', 'sby', 1234, 8),
('Dr.Paulus Erwin Marulitua', '028/628/SIP-TU/IV/2007', 'sby', 1234, 8),
('Dr.Alifiana Dewi', '028/629/SIP-TU/IV/2007', 'sby', 1234, 8),
('Dr.Mas Soemardjono Djajoesman', '028/630/SIP-TU/IV/2007', 'sby', 1234, 8),
('Dr.Endah Nuranisah', '028/632/SIP-TU/IV/2007', 'sby', 1234, 8),
('Dr.Leonardus Singgih', '028/633/SIP-TU/IV/2007', 'sby', 1234, 8),
('Dr.Agus Jiwani', '028/634/SIP-TU/IV/2007', 'sby', 1234, 8),
('Dr.Syamsudin Nasori Syamsuri', '028/637/SIP-TU/IV/2007', 'sby', 1234, 8),
('Dr.Momon Indrawan', '028/638/SIP-TU/IV/2007', 'sby', 1234, 8),
('Dr.Ivan Garibaldi S', '028/639/SIP-TU/IV/2007', 'sby', 1234, 8),
('Dr.Antonius tirtamulya', '028/640/SIP-TU/V/2007', 'sby', 1234, 8),
('Dr.Lany Hakim\'', '028/641/SIP-TU/V/2007', 'sby', 1234, 8),
('Dr.Juliana Hariman', '028/642/SIP-TU/V/2007', 'sby', 1234, 8),
('Dr.Helmi Hidayat', '028/644/SIP-TU/VI/2007', 'sby', 1234, 8),
('Dr.Tri Wahyuni', '028/645/SIP-TU/VI/2007', 'sby', 1234, 8),
('Dr.James Kalengkongan', '028/646/SIP-TU/VI/2007', 'sby', 1234, 8),
('Dr.Shinta Devi Aguslia', '028/649/SIP-TU/VI/2007', 'sby', 1234, 8),
('\"Dr.R Anita Indriyanti', 'M.Kes\"', '028/650/SIP-TU/VII/2007', 0, 1234),
('Dr.Antanius Artanto Endro P', '028/651/SIP-TU/VII/2007', 'sby', 1234, 8),
('Dr.Eni Dwi Astuti', '028/652/SIP-TU/VII/2007', 'sby', 1234, 8),
('Dr.Masnawati', '028/655/SIP-TU/VIII/2007', 'sby', 1234, 8),
('Dr.Satoto Kosasi', '028/656/SIP-TU/VIII/2007', 'sby', 1234, 8),
('Dr.Fatinah', '028/657/SIP-TU/VIII/2007', 'sby', 1234, 8),
('Dr.Meida Erimarisya', '028/658/SIP-TU/VIII/2007', 'sby', 1234, 8),
('Dr.Felitiana Maria Hanggani K', '028/659/SIP-TU/VIII/2007', 'sby', 1234, 8),
('Dr.Petty Widyanti', '028/661/SIP-TU/VIII/2007', 'sby', 1234, 8),
('Dr.Muhammad Al Azhary', '028/662/SIP-TU/IX/2007', 'sby', 1234, 8),
('Dr.Mangihut Rumiris Manullang', '028/663/SIP-TU/IX/2007', 'sby', 1234, 8),
('Dr.Sariman', '028/665/SIP-TU/X/2007', 'sby', 1234, 8),
('Dr.Yustina Nababan', '028/667/SIP-TU/XI/2007', 'sby', 1234, 8),
('Dr.Banjir Lumban Gaol', '028/668/SIP-TU/XI/2007', 'sby', 1234, 8),
('Dr.Hendra Agusswarman Siahaan', '028/669/SIP-TU/XI/2007', 'sby', 1234, 8),
('Dr.Andi Yanti', '028/670/SIP-TU/XI/2007', 'sby', 1234, 8),
('Dr.Alexander Hendrato S', '028/672/SIP-TU/XI/2007', 'sby', 1234, 8),
('Dr.Isyanna Paramitha', '028/673/SIP-TU/XI/2007', 'sby', 1234, 8),
('Dr.Elke Winasari', '028/676/SIP-TU/XII/2007', 'sby', 1234, 8),
('Dr.Arswendy', '028/677/SIP-TU/XII/2007', 'sby', 1234, 8),
('Dr.Ayu Ummahat Al Mukmin', '028/678/SIP-TU/XII/2007', 'sby', 1234, 8),
('Dr.Suhadi Hasan', '028/685/SIP-TU/I/2008', 'sby', 1234, 8),
('Dr.Datik Yuli Darwati', '028/686/SIP-TU/I/2008', 'sby', 1234, 8),
('Dr.Silvi Korprina', '028/689/SIP-TU/II/2008', 'sby', 1234, 8),
('Dr.Yenny Angdriani', '028/690/SIP-TU/II/2008', 'sby', 1234, 8),
('Dr.Riri Yuliana', '028/692/SIP-TU/II/2008', 'sby', 1234, 8),
('Dr.Rina', '028/693/SIP-TU/II/2008', 'sby', 1234, 8),
('Dr. Dr.Kartinah', '028/694/SIP-TU/III/2008', 'sby', 1234, 8),
('Dr.Tommy Nugroho W', '028/696/SIP-TU/III/2008', 'sby', 1234, 8),
('Dr.Resky Malinda', '028/697/SIP-TU/III/2008', 'sby', 1234, 8),
('Dr.Roy Pardoman Hariadji', '028/698/SIP-TU/IV/2008', 'sby', 1234, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbljurnal`
--

CREATE TABLE `tbljurnal` (
  `Nomor_Jurnal` varchar(5) DEFAULT NULL,
  `Tanggal_Jurnal` datetime DEFAULT NULL,
  `Nomor_Bukti` varchar(20) DEFAULT NULL,
  `Uraian` tinytext DEFAULT NULL,
  `Kode_Perkiraan` varchar(3) DEFAULT NULL,
  `Nama_Perkiraan_Jurnal` varchar(100) DEFAULT NULL,
  `Debet` bigint(4) DEFAULT NULL,
  `Kredit` bigint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbljurnaldihapus`
--

CREATE TABLE `tbljurnaldihapus` (
  `Nomor_Hapus` varchar(5) DEFAULT NULL,
  `Tanggal_Hapus` datetime DEFAULT NULL,
  `Nomor_Bukti_Hapus` varchar(20) DEFAULT NULL,
  `Uraian_Hapus` tinytext DEFAULT NULL,
  `Kode_Perkiraan` varchar(3) DEFAULT NULL,
  `Debet_Hapus` bigint(4) DEFAULT NULL,
  `Kredit_Hapus` bigint(4) DEFAULT NULL,
  `Kode_User` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblperkiraan`
--

CREATE TABLE `tblperkiraan` (
  `Kode_Perkiraan` varchar(3) DEFAULT NULL,
  `Nama_Perkiraan` varchar(100) DEFAULT NULL,
  `Kelompok_Akun` varchar(50) DEFAULT NULL,
  `Kelompok_Laporan` varchar(50) DEFAULT NULL,
  `Kode_Perusahaan` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblperkiraan`
--

INSERT INTO `tblperkiraan` (`Kode_Perkiraan`, `Nama_Perkiraan`, `Kelompok_Akun`, `Kelompok_Laporan`, `Kode_Perusahaan`) VALUES
('101', 'gfh', 'AKTIVA LANCAR', 'NERACA', NULL),
('102', 'tttt', 'AKTIVA LANCAR', 'NERACA', NULL),
('101', 'rrrr', 'AKTIVA LANCAR', 'NERACA', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblperusahaan`
--

CREATE TABLE `tblperusahaan` (
  `Kode_Perusahaan` varchar(2) DEFAULT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `Telepon` varchar(50) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_akun_akuntansi`
--

CREATE TABLE `tbl_akun_akuntansi` (
  `id_akun_akuntansi` int(11) NOT NULL,
  `id_jenis_akun_akuntansi` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `saldo` double NOT NULL DEFAULT 0,
  `kode_tanpa_jenis` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_akun_akuntansi`
--

INSERT INTO `tbl_akun_akuntansi` (`id_akun_akuntansi`, `id_jenis_akun_akuntansi`, `kode`, `saldo`, `kode_tanpa_jenis`, `nama`, `id_member`) VALUES
(9, 1, '1-1000', 10000000, '1000', 'Kas Besar', 8),
(10, 1, '1-1001', -5973000, '1001', 'Kas Kecil', 8),
(11, 1, '1-1002', 1071569, '1002', 'Kas Operasional Kasir', 8),
(12, 1, '1-1003', 0, '1003', 'Bank BCA', 8),
(13, 1, '1-1004', 0, '1004', 'Bank BNI', 8),
(14, 1, '1-1005', 0, '1005', 'Bank BRI', 8),
(15, 1, '1-1006', 0, '1006', 'Bank Mandiri', 8),
(16, 1, '1-1020', 0, '1020', 'Piutang Dagang Apotek', 8),
(17, 1, '1-1030', -2970000, '1030', 'Persediaan Barang Apotek', 8),
(18, 1, '1-1040', 0, '1040', 'Discount Pembelian ', 8),
(19, 1, '1-1050', -297000, '1050', 'PPN Masukan', 8),
(20, 1, '1-1055', 0, '1055', 'Pajak Dibayar Dimuka', 8),
(21, 1, '1-1080', 0, '1080', 'Aset Tanah', 8),
(22, 1, '1-1081', 0, '1081', 'Aset Bangunan', 8),
(23, 1, '1-1082', 0, '1082', 'Aset Kendaraan', 8),
(24, 1, '1-1083', 0, '1083', 'Aset Peralatan', 8),
(25, 1, '1-1100', 0, '1100', 'Akumulasi Penyusutan Bangunan', 8),
(26, 1, '1-1101', 0, '1101', 'Akumulasi Penyusutan kendaraan', 8),
(27, 1, '1-1102', 0, '1102', 'Akumulasi Penyusutan Peralatan', 8),
(28, 1, '1-1200', 0, '1200', 'Uang Muka Pesanan Pembelian', 8),
(29, 2, '2-1000', 1090000, '1000', 'Hutang Dagang Apotek', 8),
(30, 2, '2-1001', 0, '1001', 'Hutang  Dagang Konsinyasi', 8),
(31, 2, '2-1010', 0, '1010', 'Hutang Non Operasional', 8),
(32, 2, '2-1020', 0, '1020', 'Uang Muka Pesanan Penjualan', 8),
(33, 2, '2-1030', 69875.36363636232, '1030', ' PPN Keluaran', 8),
(34, 2, '2-1031', 0, '1031', 'Hutang Pajak Final PP.46', 8),
(35, 2, '2-1040', 0, '1040', 'Hutang Gaji Karyawan', 8),
(36, 3, '3-1000', 10000000, '1000', 'Modal Pemilik', 8),
(37, 3, '3-2000', 0, '2000', 'Laba Ditahan', 8),
(38, 3, '3-3000', 0, '3000', 'Laba Tahun Berjalan', 8),
(39, 3, '3-4000', 0, '4000', 'Prive', 8),
(40, 4, '4-1000', -275400, '1000', 'Pendapatan Jual Dagang', 8),
(41, 4, '4-1100', 0, '1100', 'Discount Penjualan', 8),
(43, 4, '4-1200', 0, '1200', 'Retur Jual', 8),
(44, 4, '4-1300', 31000, '1300', 'Pendapatan Ongkir Penjualan', 8),
(45, 7, '7-1105', 0, '1105', 'Pandapatan Jasa Dokter', 8),
(46, 4, '4-2200', 0, '2200', 'Pendapatan Jasa Tuslah', 8),
(47, 7, '7-1106', 0, '1106', 'Pendapatan Jasa Konsultasi', 8),
(48, 5, '5-1000', 0, '1000', 'Harga Pokok Pejualan Barang', 8),
(49, 8, '8-1100', 0, '1100', 'Potongan Hutang', 8),
(50, 6, '6-3102', 0, '3102', 'Biaya Insentif Karyawan', 8),
(51, 8, '8-2000', 0, '2000', 'Kerugian Selisih Stock', 8),
(52, 8, '8-2200', 0, '2200', 'Kerugian Piutang', 8),
(53, 5, '5-2300', 0, '2300', 'Stock Masuk', 8),
(54, 5, '5-2400', 0, '2400', 'Stock Keluar', 8),
(55, 6, '6-1100', 0, '1100', 'Biaya Listrik/ Air/ Telp', 8),
(56, 6, '6-1101', 0, '1101', 'Biaya Sewa', 8),
(57, 6, '6-1102', 0, '1102', 'Biaya ATK', 8),
(58, 5, '5-1100', 0, '1100', 'Biaya Pengiriman Barang Penjualan', 8),
(59, 6, '6-1103', 0, '1103', 'Biaya Administrasi Bank', 8),
(60, 6, '6-1104', 0, '1104', 'Biaya Internet', 8),
(61, 6, '6-1105', 0, '1105', 'Biaya Sewa Program', 8),
(62, 6, '6-2100', 0, '2100', 'Biaya Iklan', 8),
(63, 6, '6-2101', 0, '2101', 'Biaya Promosi', 8),
(64, 6, '6-2103', 0, '2103', 'Biaya Fee User', 8),
(65, 6, '6-3100', 0, '3100', 'Biaya Gaji Karyawan', 8),
(66, 6, '6-3101', 0, '3101', 'Biaya Komisi Marketing (Sales)', 8),
(67, 6, '6-4100', 0, '4100', 'Biaya Penyusutan Bangunan', 8),
(68, 6, '6-4101', 0, '4101', 'Biaya Penyusutan Kendaraan', 8),
(69, 6, '6-5100', 0, '5100', 'Biaya Belanja Non Inventory', 8),
(70, 7, '7-1100', 0, '1100', 'Pendapatan Pembulatan Penjualan', 8),
(71, 7, '7-1101', 0, '1101', 'Pendapatan Penjualan Aset', 8),
(72, 7, '7-1102', 0, '1102', 'Laba selisih Stok Lebih', 8),
(73, 7, '7-1103', 0, '1103', 'Pendapatan Embalase', 8),
(74, 8, '8-1000', 0, '1000', 'Biaya Diluar Perkiraan', 8),
(75, 4, '4-1001', 0, '1001', 'Pendapatan Jual Konsinyasi', 8),
(76, 1, '1-1045', 100000, '1045', 'Ongkir Pembelian', 8),
(77, 6, '6-6100', 0, '6100', 'Biaya Pajak Final PP. 46', 8),
(78, 1, '1-1031', 0, '1031', 'Persediaan Barang Konsinyasi', 8),
(79, 1, '1-1021', 0, '1021', 'Piutang Dagang Konsinyasi', 8),
(81, 7, '7-1104', 0, '1104', 'Pendapatan Potongan Hutang', 8),
(82, 1, '1-1051', 0, '1051', 'Piutang PPN', 8),
(83, 5, '5-1001', 0, '1001', 'Potongan Pembelian', 8),
(84, 5, '5-2000', 0, '2000', 'Stok Opname', 8),
(85, 4, '4-2300', 3500, '2300', 'Pendapatan Kemasan Penjualan', 8),
(86, 4, '4-2201', 0, '2201', 'Pendapatan Embalace', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_apotek`
--

CREATE TABLE `tbl_apotek` (
  `id_apotek` int(11) NOT NULL,
  `nama_apotek` varchar(200) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `no_telp` varchar(50) DEFAULT NULL,
  `npwp` varchar(100) DEFAULT NULL,
  `no_sia` varchar(100) DEFAULT NULL,
  `nama_apoteker` varchar(100) DEFAULT NULL,
  `no_sipa` varchar(100) DEFAULT NULL,
  `jam_buka` varchar(10) DEFAULT NULL,
  `jam_tutup` varchar(10) DEFAULT NULL,
  `post_image` varchar(200) DEFAULT NULL,
  `faktur_awal` varchar(100) DEFAULT NULL,
  `faktur_akhir` varchar(100) DEFAULT NULL,
  `faktur_pakai` varchar(100) NOT NULL,
  `kadaluwarsa` date DEFAULT NULL,
  `flg_pkp` int(2) NOT NULL,
  `tgl_saldo_awal` date DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `id_provinsi` int(11) DEFAULT NULL,
  `id_kabupaten` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL,
  `platform` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_apotek`
--

INSERT INTO `tbl_apotek` (`id_apotek`, `nama_apotek`, `alamat`, `no_telp`, `npwp`, `no_sia`, `nama_apoteker`, `no_sipa`, `jam_buka`, `jam_tutup`, `post_image`, `faktur_awal`, `faktur_akhir`, `faktur_pakai`, `kadaluwarsa`, `flg_pkp`, `tgl_saldo_awal`, `longitude`, `latitude`, `id_provinsi`, `id_kabupaten`, `id_member`, `platform`) VALUES
(1, 'APOTEK SAHABAT', 'Jl. Veteran no. 17', '082251248773', '8135801351039580139', '0918285713081308701', 'Apt. Hami Gusman', '081254123151351313', '08:00', '20:00', 'upload/apotek/18574362655f1da30276920.png', '00000001', '000000010', '00000000002', '2020-06-17', 1, '2020-04-30', '109.69093322753908', '-7.389364929965083', 33, 3304, 8, 'Web'),
(11, 'FIHA MEGA INDOTAMA', 'Jl. Raya timur wanadadi Rt.02/02', '082119054545', '0885522516', '155882676490', 'apt. Hami Gusman, S.Farm', '0526856763788', '08:00', '16:30', 'upload/apotek/3490658875f8589b62df7a.jpg', NULL, NULL, '', NULL, 1, NULL, '109.5962746', '-7.389875', 33, 3304, 23, 'Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id_banner` int(11) NOT NULL,
  `post_image` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id_banner`, `post_image`, `judul`, `detail`, `created_by`, `created_date`) VALUES
(1, 'upload/banner/2200591865f7def9c5e0e5.png', 'DAGUSIBU', '---> Dapatkan obat yang paling terjamin yaitu apotek\r\n---> Gunakan obat dengan benar\r\n---> Simpan obat sesuai petunjuk penyimpanan\r\n---> Buang obat yang telah kadaluarsa', 'Admin', '2020-03-20 07:07:17'),
(4, 'upload/banner/7973507875f7293c070c39.jpg', 'FRESSMED', 'Beriklan lebih mudah dan murah\r\nhubungi admin myapotek \r\ntlp/wa 082251248773', 'superadmin', '2020-04-25 20:51:07'),
(5, 'upload/banner/15696933125ea84a466f161.jpg', 'Iklan layanan masyarakat', 'kita putus rantai penularan covid19 dengan cara social distancing & physical distancing\r\nIklan layanan ini disponsori oleh Myapotek dapatkan discount up to 30% untuk beriklan di myapotek\r\nhubungi 082251248773', 'superadmin', '2020-04-25 21:48:14'),
(8, 'upload/banner/13100924845f7df1587d2ec.png', 'SEWA BANER IKLAN', 'UNTUK IKLAN  DAPAT MENGHUBUNGI CS MYAPOTEK\r\nWhatsapp 0821-4674-9494', 'superadmin', '2020-10-07 23:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_batch_obat`
--

CREATE TABLE `tbl_batch_obat` (
  `id_batch_obat` int(11) NOT NULL,
  `no_transaksi` varchar(255) NOT NULL,
  `no_faktur` varchar(100) DEFAULT NULL,
  `tgl_faktur` date DEFAULT NULL,
  `flg_kredit` int(11) DEFAULT NULL,
  `tgl_tempo` date DEFAULT NULL,
  `flg_ppn` int(11) DEFAULT NULL,
  `no_sp` varchar(50) DEFAULT NULL,
  `tgl_sp` varchar(50) DEFAULT NULL,
  `tgl_batch` date DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `persen_disc` double DEFAULT NULL,
  `harga_disc` double DEFAULT NULL,
  `dpp` double DEFAULT NULL,
  `ppn` double DEFAULT NULL,
  `ongkir` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `bayar` double DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `status_pkp` varchar(10) DEFAULT NULL,
  `kurang_bayar` double DEFAULT NULL,
  `no_faktur_pajak` varchar(100) DEFAULT NULL,
  `tgl_faktur_pajak` date DEFAULT NULL,
  `kompensasi` varchar(50) DEFAULT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL,
  `flg_status` int(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_batch_obat`
--

INSERT INTO `tbl_batch_obat` (`id_batch_obat`, `no_transaksi`, `no_faktur`, `tgl_faktur`, `flg_kredit`, `tgl_tempo`, `flg_ppn`, `no_sp`, `tgl_sp`, `tgl_batch`, `sub_total`, `persen_disc`, `harga_disc`, `dpp`, `ppn`, `ongkir`, `total`, `bayar`, `status`, `status_pkp`, `kurang_bayar`, `no_faktur_pajak`, `tgl_faktur_pajak`, `kompensasi`, `id_supplier`, `id_member`, `flg_status`, `created_by`, `created_date`) VALUES
(43, '01/BL/08/2020', 'MKASMOA112', '1970-01-01', 0, NULL, 0, NULL, NULL, '2020-08-31', 2400000, 0, 0, 2400000, 240000, 100000, 2740000, 2740000, 'Lunas', 'PKP', 0, '7123MASD', '2020-08-31', '2020-08', 8, 8, 2, 'coba@gmail.com', '2020-08-31 14:47:46'),
(44, '02/BL/09/2020', 'YIOAUSD123', '2020-09-02', 1, '2020-12-31', 0, NULL, NULL, '2020-09-02', 4900000, 0, 0, 4900000, 490000, 100000, 5490000, 2000000, 'Kredit', 'PKP', 1000000, 'JLJKANSJLFN123', '2020-09-30', '2020-09', 9, 8, 2, 'coba@gmail.com', '2020-09-02 14:40:44'),
(46, '03/BL/09/2020', 'KMKSDAS123', '2020-10-01', 0, NULL, 0, NULL, NULL, '2020-09-04', 1000000, 0, 0, 1000000, 100000, 100000, 1200000, 1200000, 'Lunas', 'PKP', 0, 'KPKMDOASMD', '2020-09-03', '2020-09', 11, 8, 2, 'coba@gmail.com', '2020-09-04 09:47:34'),
(47, '04/BL/09/2020', 'KOJODASO', '1970-01-01', 0, NULL, 0, NULL, NULL, '2020-09-04', 10000, 0, 0, 10000, 1000, 0, 11000, 11000, 'Lunas', 'PKP', 0, 'IJAOSID123', '2020-09-04', '2020-09', 10, 8, 1, 'coba@gmail.com', '2020-09-04 15:33:25'),
(48, '05/BL/09/2020', 'OJAOSDAS', '1970-01-01', 0, NULL, 0, NULL, NULL, '2020-09-04', 20000, 0, 0, 20000, 2000, 0, 22000, 22000, 'Lunas', 'PKP', 0, '', '1970-01-01', '1970-01', 11, 8, 1, 'coba@gmail.com', '2020-09-04 15:52:46'),
(53, '06/BL/10/2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-04', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_batch`
--

CREATE TABLE `tbl_detail_batch` (
  `id_detail_batch` int(11) NOT NULL,
  `id_batch` int(11) NOT NULL,
  `id_rak` int(11) DEFAULT NULL,
  `id_obat` int(11) DEFAULT NULL,
  `id_satuan` int(11) DEFAULT NULL,
  `isi_satuan` int(11) DEFAULT NULL,
  `batch` varchar(100) DEFAULT NULL,
  `kadaluwarsa` date DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `jumlah_pesan` int(11) DEFAULT NULL,
  `harga_beli` double DEFAULT NULL,
  `disc_obat` double DEFAULT NULL,
  `harga_disc` double DEFAULT NULL,
  `harga_hpp` double DEFAULT NULL,
  `hpp_satuan` double DEFAULT NULL,
  `total_harga` double DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `flg_ppn` int(11) DEFAULT NULL,
  `kode` varchar(5) DEFAULT NULL,
  `flg_status` int(11) NOT NULL DEFAULT 0,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_detail_batch`
--

INSERT INTO `tbl_detail_batch` (`id_detail_batch`, `id_batch`, `id_rak`, `id_obat`, `id_satuan`, `isi_satuan`, `batch`, `kadaluwarsa`, `jumlah`, `jumlah_pesan`, `harga_beli`, `disc_obat`, `harga_disc`, `harga_hpp`, `hpp_satuan`, `total_harga`, `stok`, `flg_ppn`, `kode`, `flg_status`, `id_member`) VALUES
(24, 43, 3, 2, 8, 50, 'ASJNK', '2020-08-31', 4, NULL, 600000, 0, 600000, 12000, 12000, 2400000, 149, 0, 'PB', 1, 8),
(25, 44, 4, 6, 8, 50, 'RYFTYASD', '2020-09-30', 10, NULL, 500000, 2, 490000, 9800, 9800, 4900000, 325, 0, 'PB', 1, 8),
(26, 46, 4, 3, 8, 50, 'JOIAJDOAS', '2020-10-01', 2, NULL, 500000, 0, 500000, 10000, 10000, 1000000, 96, 0, 'PB', 1, 8),
(27, 47, 3, 4, 3, 1, 'UIHAISUD', '2020-09-01', 1, NULL, 10000, 0, 10000, 10000, 10000, 10000, 0, 0, 'PB', 1, 8),
(28, 48, 3, 9, 3, 1, 'ASDASDASD', '2020-09-10', 1, NULL, 10000, 0, 10000, 10000, 10000, 10000, 0, 0, 'PB', 1, 8),
(29, 48, 3, 10, 3, 1, 'VSSDDSAVSD', '2020-09-01', 1, NULL, 10000, 0, 10000, 10000, 10000, 10000, 0, 0, 'PB', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_obat`
--

CREATE TABLE `tbl_detail_obat` (
  `id_detail_obat` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `harga_netto` double DEFAULT NULL,
  `satuan_1` int(11) DEFAULT NULL,
  `satuan_2` int(11) DEFAULT NULL,
  `satuan_3` int(11) DEFAULT NULL,
  `isi_satuan_1` int(11) NOT NULL DEFAULT 0,
  `isi_satuan_2` int(11) NOT NULL DEFAULT 0,
  `isi_satuan_3` int(11) NOT NULL DEFAULT 0,
  `ppn_1` int(11) NOT NULL DEFAULT 0,
  `ppn_2` int(11) NOT NULL DEFAULT 0,
  `ppn_3` int(11) NOT NULL DEFAULT 0,
  `presentase_non_resep_1` double NOT NULL DEFAULT 0,
  `presentase_non_resep_2` double NOT NULL DEFAULT 0,
  `presentase_non_resep_3` double NOT NULL DEFAULT 0,
  `presentase_resep_1` double NOT NULL DEFAULT 0,
  `presentase_resep_2` double NOT NULL DEFAULT 0,
  `presentase_resep_3` double NOT NULL DEFAULT 0,
  `presentase_khusus_1` double NOT NULL DEFAULT 0,
  `presentase_khusus_2` double NOT NULL DEFAULT 0,
  `presentase_khusus_3` double NOT NULL DEFAULT 0,
  `presentase_bpjs_1` double NOT NULL DEFAULT 0,
  `presentase_bpjs_2` double NOT NULL DEFAULT 0,
  `presentase_bpjs_3` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_detail_obat`
--

INSERT INTO `tbl_detail_obat` (`id_detail_obat`, `id_obat`, `harga_netto`, `satuan_1`, `satuan_2`, `satuan_3`, `isi_satuan_1`, `isi_satuan_2`, `isi_satuan_3`, `ppn_1`, `ppn_2`, `ppn_3`, `presentase_non_resep_1`, `presentase_non_resep_2`, `presentase_non_resep_3`, `presentase_resep_1`, `presentase_resep_2`, `presentase_resep_3`, `presentase_khusus_1`, `presentase_khusus_2`, `presentase_khusus_3`, `presentase_bpjs_1`, `presentase_bpjs_2`, `presentase_bpjs_3`) VALUES
(3, 2, 7700, 3, 4, 7, 1, 2, 3, 0, 0, 0, 0.5, 5, 9.5, 1.5, 6.5, 10.5, 3.5, 8.5, 12.5, 2.5, 7.5, 11.5),
(4, 3, 5500, 7, 8, 8, 1, 24, 10, 0, 0, 0, 20, 15, 10, 25, 20, 5, 20, 10, 20, 15, 10, 5),
(5, 4, NULL, 7, 3, 3, 1, 0, 0, 1, 0, 0, 25, 0, 0, 30, 0, 0, 10, 0, 0, 20, 0, 0),
(6, 5, NULL, 3, 8, 3, 1, 10, 0, 1, 1, 0, 30, 20, 0, 25, 15, 0, 15, 10, 0, 20, 20, 0),
(7, 6, NULL, 7, 3, 3, 1, 0, 0, 0, 0, 0, 20, 0, 0, 25, 0, 0, 20, 0, 0, 25, 0, 0),
(8, 7, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 8, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 9, NULL, 3, 4, 3, 1, 10, 0, 1, 1, 0, 20, 17, 0, 25, 20, 0, 15, 15, 0, 20, 20, 0),
(11, 10, NULL, 3, 3, 3, 1, 0, 0, 1, 0, 0, 20, 0, 0, 25, 0, 0, 30, 0, 0, 20, 0, 0),
(12, 11, NULL, 12, 4, 8, 1, 10, 100, 0, 0, 0, 25, 20, 20, 30, 25, 25, 25, 15, 15, 20, 20, 20),
(13, 12, NULL, 3, 3, 3, 1, 0, 0, 0, 0, 0, 20, 0, 0, 25, 0, 0, 20, 0, 0, 20, 0, 0),
(14, 13, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 14, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 15, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 16, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 17, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 18, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 19, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 20, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 21, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 22, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 23, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 24, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 25, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 26, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_paket`
--

CREATE TABLE `tbl_detail_paket` (
  `id_detail_paket` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `jumlah_obat_pcs` int(11) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_detail_paket`
--

INSERT INTO `tbl_detail_paket` (`id_detail_paket`, `id_paket`, `id_obat`, `jumlah_obat_pcs`, `id_member`) VALUES
(4, 1, 3, 10, 8),
(5, 1, 2, 10, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_penjualan`
--

CREATE TABLE `tbl_detail_penjualan` (
  `id_detail_penjualan` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `jenis_harga` varchar(15) DEFAULT NULL,
  `nama_detail` varchar(100) DEFAULT NULL,
  `qty_pesan` int(11) DEFAULT NULL,
  `qty_jual` int(11) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `batch` varchar(100) DEFAULT NULL,
  `barcode` varchar(100) NOT NULL DEFAULT '',
  `exp_date` date DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `harga_disc` double DEFAULT NULL,
  `tuslah` double DEFAULT NULL,
  `embalanse` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `_type` enum('obat','jasa','paket','resep') NOT NULL DEFAULT 'obat',
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_detail_penjualan`
--

INSERT INTO `tbl_detail_penjualan` (`id_detail_penjualan`, `id_penjualan`, `jenis_harga`, `nama_detail`, `qty_pesan`, `qty_jual`, `satuan`, `harga`, `batch`, `barcode`, `exp_date`, `disc`, `harga_disc`, `tuslah`, `embalanse`, `total`, `_type`, `id_member`) VALUES
(43, 40, 'Non Resep', 'Hufagrip Hijau BP', 0, 10, 'Pcs', 12060, 'ASJNK', '123123', '2020-08-31', 0, 0, 0, 0, 120600, 'obat', 8),
(44, 41, 'Non Resep', 'Hufagrip Hijau BP', 0, 1, 'Botol', 39420, 'ASJNK', '123123', '2020-08-31', 0, 0, 0, 0, 39420, 'obat', 8),
(45, 42, 'Non Resep', 'Amoxan sirup', 0, 10, 'Botol', 11760, 'RYFTYASD', '113689', '2020-09-30', 0, 0, 0, 0, 117600, 'obat', 8),
(51, 48, 'Non Resep', 'Hufagrip Hijau BP', 0, 10, 'Pcs', 12060, 'ASJNK', '123123', '2020-08-31', 0, 0, 0, 0, 120600, 'obat', 8),
(52, 51, 'Non Resep', 'Hufagrip Hijau BP', 0, 10, 'Pcs', 12060, 'ASJNK', '123123', '2020-08-31', 0, 0, 0, 0, 120600, 'obat', 8),
(53, 51, 'Non Resep', 'Amoxan sirup', 0, 10, 'Botol', 11760, 'RYFTYASD', '113689', '2020-09-30', 0, 0, 0, 0, 117600, 'obat', 8),
(54, 52, 'Non Resep', 'Batuk Anak', 0, 1, 'paket', 110000, '-', '', '0000-00-00', 0, 0, 0, 0, 110000, 'paket', 8),
(55, 62, 'Non Resep', 'Hufagrip Hijau BP', 0, 1, 'Pcs', 12060, 'ASJNK', '123123', '2020-08-31', 0, 0, 0, 0, 12060, 'obat', 8),
(56, 62, 'Non Resep', 'Amoxan sirup', 0, 1, 'Botol', 11760, 'RYFTYASD', '113689', '2020-09-30', 0, 0, 0, 0, 11760, 'obat', 8),
(57, 62, 'Non Resep', 'Hufagrip Merah', 0, 1, 'Botol', 12000, 'JOIAJDOAS', 'e35556', '2020-10-01', 0, 0, 0, 0, 12000, 'obat', 8),
(58, 63, 'Non Resep', 'Hufagrip Hijau BP', 0, 2, 'Pcs', 12060, 'ASJNK', '123123', '2020-08-31', 0, 0, 0, 0, 24120, 'obat', 8),
(59, 63, 'Non Resep', 'Amoxan sirup', 0, 2, 'Botol', 11760, 'RYFTYASD', '113689', '2020-09-30', 0, 0, 0, 0, 23520, 'obat', 8),
(60, 63, 'Non Resep', 'Hufagrip Merah', 0, 2, 'Botol', 12000, 'JOIAJDOAS', 'e35556', '2020-10-01', 0, 0, 0, 0, 24000, 'obat', 8),
(62, 65, 'Non Resep', 'Hufagrip Hijau BP', 0, 5, 'Pcs', 12060, 'ASJNK', '123123', '2020-08-31', 0, 0, 0, 0, 60300, 'obat', 8),
(63, 66, 'Non Resep', 'Hufagrip Hijau BP', 0, 5, 'Pcs', 12060, 'ASJNK', '123123', '2020-08-31', 0, 0, 0, 0, 60300, 'obat', 8),
(64, 67, 'Non Resep', 'Amoxan sirup', 0, 1, 'Botol', 11760, 'RYFTYASD', '113689', '2020-09-30', 0, 0, 0, 0, 11760, 'obat', 8),
(65, 68, 'Non Resep', 'Hufagrip Hijau BP', 0, 1, 'Pcs', 12060, 'ASJNK', '123123', '2020-08-31', 0, 0, 0, 0, 12060, 'obat', 8),
(66, 69, 'Non Resep', 'Hufagrip Hijau BP', 0, 1, 'Pcs', 12060, 'ASJNK', '123123', '2020-08-31', 0, 0, 0, 0, 12060, 'obat', 8),
(67, 70, 'Non Resep', 'Amoxan sirup', 0, 1, 'Botol', 11760, 'RYFTYASD', '113689', '2020-09-30', 0, 0, 0, 0, 11760, 'obat', 8),
(68, 70, 'Non Resep', 'Hufagrip Merah', 0, 1, 'Botol', 12000, 'JOIAJDOAS', 'e35556', '2020-10-01', 0, 0, 0, 0, 12000, 'obat', 8),
(69, 71, 'Non Resep', 'Hufagrip Hijau BP', 0, 1, 'Botol', 39420, 'ASJNK', '123123', '2020-08-31', 5, 1971, 0, 0, 37449, 'obat', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_pesanan_mobile`
--

CREATE TABLE `tbl_detail_pesanan_mobile` (
  `id_detail_pesanan_mobile` int(11) NOT NULL,
  `id_pesanan_mobile` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_detail_pesanan_mobile`
--

INSERT INTO `tbl_detail_pesanan_mobile` (`id_detail_pesanan_mobile`, `id_pesanan_mobile`, `id_obat`, `jumlah`, `harga`, `catatan`, `total`, `id_member`) VALUES
(8, 5, 2, 3, 15000, 'Test Catatan', 45000, 8),
(9, 5, 3, 1, 13000, 'Test Catatan 2', 13000, 8),
(10, 6, 2, 3, 15000, 'Test Catatan', 45000, 8),
(11, 6, 3, 1, 13000, 'Test Catatan 2', 13000, 8),
(12, 7, 2, 2, 22000, '', 44000, 8),
(13, 7, 5, 1, 1000, '', 1000, 8),
(14, 7, 8, 1, 25000, '', 25000, 8),
(15, 8, 2, 2, 15000, '', 30000, 8),
(16, 8, 5, 1, 5000, '', 5000, 8),
(17, 9, 2, 3, 15000, 'Test Catatan', 45000, 8),
(18, 9, 3, 1, 13000, 'Test Catatan 2', 13000, 8),
(19, 10, 3, 1, 16000, '', 16000, 8),
(20, 11, 2, 2, 15000, '', 30000, 8),
(21, 11, 3, 1, 16000, '', 16000, 8),
(22, 12, 6, 1, 20000, '', 20000, 8),
(23, 13, 6, 2, 20000, '', 40000, 8),
(24, 14, 11, 1, 21000, '', 21000, 8),
(25, 15, 8, 1, 15000, '', 15000, 8),
(26, 15, 9, 1, 19000, '', 19000, 8),
(27, 16, 11, 10, 1500, '', 15000, 8),
(28, 17, 11, 1, 1500, '', 1500, 8),
(29, 18, 3, 1, 15000, '', 15000, 8),
(30, 18, 6, 1, 28500, '', 28500, 8),
(31, 19, 2, 1, 17000, '', 17000, 8),
(32, 20, 28, 1, 40000, '', 40000, 14),
(33, 21, 3, 1, 16000, '', 16000, 8),
(34, 22, 28, 2, 40000, '', 80000, 14),
(35, 23, 40, 2, 35000, '', 70000, 14),
(36, 23, 28, 2, 40000, '', 80000, 14),
(37, 24, 28, 1, 40000, '', 40000, 14),
(38, 24, 39, 1, 20000, '', 20000, 14),
(39, 24, 40, 1, 35000, '', 35000, 14),
(40, 25, 41, 1, 210000, '', 210000, 18),
(41, 26, 54, 2, 50000, '', 100000, 18),
(42, 27, 54, 1, 50000, '', 50000, 18),
(43, 28, 54, 1, 50000, '', 50000, 18),
(44, 29, 46, 1, 20000, '', 20000, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_retur`
--

CREATE TABLE `tbl_detail_retur` (
  `id_detail_retur` int(11) NOT NULL,
  `id_retur` int(11) NOT NULL,
  `barcode` varchar(100) NOT NULL,
  `batch` varchar(100) NOT NULL DEFAULT '',
  `jenis_harga` varchar(15) DEFAULT NULL,
  `nama_detail` varchar(100) DEFAULT NULL,
  `qty_retur` int(11) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `harga_disc` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_retur`
--

INSERT INTO `tbl_detail_retur` (`id_detail_retur`, `id_retur`, `barcode`, `batch`, `jenis_harga`, `nama_detail`, `qty_retur`, `satuan`, `harga`, `disc`, `harga_disc`, `total`, `id_member`) VALUES
(2, 2, '113689', 'RYFTYASD', 'Non Resep', 'Amoxan sirup', 1, 'Botol', 11760, 0, 0, 11760, 8),
(3, 3, '123123', 'ASJNK', 'Non Resep', 'Hufagrip Hijau BP', 1, 'Pcs', 12060, 0, 0, 12060, 8),
(4, 3, '113689', 'RYFTYASD', 'Non Resep', 'Amoxan sirup', 1, 'Botol', 11760, 0, 0, 11760, 8),
(5, 4, '123123', 'ASJNK', 'Non Resep', 'Hufagrip Hijau BP', 1, 'Pcs', 12060, 0, 0, 12060, 8),
(6, 4, '113689', 'RYFTYASD', 'Non Resep', 'Amoxan sirup', 1, 'Botol', 11760, 0, 0, 11760, 8),
(7, 4, 'e35556', 'JOIAJDOAS', 'Non Resep', 'Hufagrip Merah', 1, 'Botol', 12000, 0, 0, 12000, 8),
(8, 5, '123123', 'ASJNK', 'Non Resep', 'Hufagrip Hijau BP', 2, 'Pcs', 12060, 0, 0, 24120, 8),
(9, 5, '113689', 'RYFTYASD', 'Non Resep', 'Amoxan sirup', 2, 'Botol', 11760, 0, 0, 23520, 8),
(10, 5, 'e35556', 'JOIAJDOAS', 'Non Resep', 'Hufagrip Merah', 2, 'Botol', 12000, 0, 0, 24000, 8),
(11, 6, '123123', 'ASJNK', 'Non Resep', 'Hufagrip Hijau BP', 5, 'Pcs', 12060, 0, 0, 60300, 8),
(12, 7, '123123', 'ASJNK', 'Non Resep', 'Hufagrip Hijau BP', 5, 'Pcs', 12060, 0, 0, 60300, 8),
(13, 8, '113689', 'RYFTYASD', 'Non Resep', 'Amoxan sirup', 1, 'Botol', 11760, 0, 0, 11760, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_retur_beli`
--

CREATE TABLE `tbl_detail_retur_beli` (
  `id_detail_retur_beli` int(11) NOT NULL,
  `id_retur_beli` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `batch` varchar(100) DEFAULT NULL,
  `nama_detail` varchar(100) DEFAULT NULL,
  `qty_retur` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_retur_beli`
--

INSERT INTO `tbl_detail_retur_beli` (`id_detail_retur_beli`, `id_retur_beli`, `id_obat`, `batch`, `nama_detail`, `qty_retur`, `harga`, `total`, `id_member`) VALUES
(3, 17, 6, 'RYFTYASD', 'Amoxan sirup', 100, 9800, 980000, 8),
(4, 18, 6, 'RYFTYASD', 'Amoxan sirup', 50, 9800, 490000, 8),
(5, 21, 9, 'ASDASDASD', 'A-B Vask 5', 1, 10000, 10000, 8),
(6, 21, 10, 'VSSDDSAVSD', 'A-B Vask 10', 1, 10000, 10000, 8),
(7, 22, 4, 'UIHAISUD', 'Hufagrip BP', 1, 10000, 10000, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_sp`
--

CREATE TABLE `tbl_detail_sp` (
  `id_detail_sp` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `id_satuan` int(11) NOT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_detail_sp`
--

INSERT INTO `tbl_detail_sp` (`id_detail_sp`, `id_sp`, `id_obat`, `jumlah`, `id_satuan`, `keterangan`, `id_member`) VALUES
(1, 7, 24, 5, 7, '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_spj`
--

CREATE TABLE `tbl_detail_spj` (
  `id_detail_spj` int(11) NOT NULL,
  `id_spj` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `id_satuan` int(11) NOT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dokter`
--

CREATE TABLE `tbl_dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `no_sip` varchar(100) NOT NULL,
  `alamat_dokter` varchar(200) NOT NULL,
  `kontak_dokter` varchar(100) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_dokter`
--

INSERT INTO `tbl_dokter` (`id_dokter`, `nama_dokter`, `no_sip`, `alamat_dokter`, `kontak_dokter`, `id_member`) VALUES
(12, 'Dr.Dewa Ayu Sasiary Prawani', '028/170/SIP-TU/III/2003', 'sby', '1234', 8),
(14, 'Dr.I Gusti Ngurah Okadara', '028/171/SIP-TU/III/2003', 'sby', '1234', 8),
(18, 'Dr.Teti Tridarti Kudrat', '028/183/SIP-TU/V/2003', 'sby', '1234', 8),
(22, 'Dr.Susi Nurhayani', '028/186/SIP-TU/VIII/2003', 'sby', '1234', 8),
(24, 'Dr.Hermawan Adinugroho', '028/188/SIP-TU/VIII/2003', 'sby', '1234', 8),
(26, 'Dr.Dewi Caturriny', '028/189/SIP-TU/VIII/2003', 'sby', '1234', 8),
(28, 'Dr.M Fadjar Nur Ilhamsyah Gaffar', '028/190/SIP-TU/VIII/2003', 'sby', '1234', 8),
(32, 'Dr.Alia Shahnaz', '028/195/SIP-TU/IX/2003', 'sby', '1234', 8),
(34, 'Dr.Feriyandhi Meizirrsjah', '028/203/SIP-TU/XI/2003', 'sby', '1234', 8),
(36, 'Dr.Vindy Ruslianti', '028/206/SIP-TU/XI/2003', 'sby', '1234', 8),
(38, 'Dr.Hanry Susilo Ibrahim', '028/210/SIP-TU/I/2004', 'sby', '1234', 8),
(40, 'Dr.Isnindiary Sandra Dungga', '028/78/SIP-TU/V/2001', 'sby', '1234', 8),
(44, 'Dr.Fransisca Amelia Sugianto', '028/220/SIP-TU/III/2004', 'sby', '1234', 8),
(46, 'Dr.Stella Patricia Yapari', '028/224/SIP-TU/III/2004', 'sby', '1234', 8),
(48, 'Dr.Jouhartien Aquarini', '028/226/SIP-TU/IV/2004', 'sby', '1234', 8),
(50, 'Dr.Renaning Tyas', '028/230/SIP-TU/IV/2004', 'sby', '1234', 8),
(52, 'Dr.Herliawati', '028/231/SIP-TU/V/2004', 'sby', '1234', 8),
(54, 'Dr.Erica Handrita', '028/232/SIP-TU/V/2004', 'sby', '1234', 8),
(56, 'Dr.Ariesanty Irawaty M', '028/234/SIP-TU/V/2004', 'sby', '1234', 8),
(58, 'Dr.Trining Sujiani', '028/235/SIP-TU/V/2004', 'sby', '1234', 8),
(62, 'Dr.I Made Budawarman', '028/238/SIP-TU/VI/2004', 'sby', '1234', 8),
(64, 'Dr.Abdul Haris', '028/241/SIP-TU/VII/2004', 'sby', '1234', 8),
(66, 'Dr.Astrid Septrisia Paat', '028/244/SIP-TU/VII/2004', 'sby', '1234', 8),
(68, 'Dr.Uji Asiah', '028/245/SIP-TU/VII/2004', 'sby', '1234', 8),
(70, 'Dr.Ummi Sartika Almady', '028/246/SIP-TU/VIII/2004', 'sby', '1234', 8),
(72, 'Dr.Neni Sundari', '028/247/SIP-TU/VIII/2004', 'sby', '1234', 8),
(74, 'Dr.Joko Yustono Yus Kasran', '028/250/SIP-TU/VIII/2004', 'sby', '1234', 8),
(76, 'Dr.Mimin Saputri', '028/251/SIP-TU/VIII/2004', 'sby', '1234', 8),
(78, 'Dr.Martin Ayuningtyas Wulandari', '028/252/SIP-TU/VIII/2004', 'sby', '1234', 8),
(80, 'Dr.Agus Nirwan', '028/253/SIP-TU/VIII/2004', 'sby', '1234', 8),
(82, 'Dr.Justina Faresty', '028/255/SIP-TU/VIII/2004', 'sby', '1234', 8),
(84, 'Dr.Susanto', '028/257/SIP-TU/VIII/2004', 'sby', '1234', 8),
(86, 'Dr.Vidyanti Evabrina Simarmata', '028/260/SIP-TU/X/2004', 'sby', '1234', 8),
(88, 'Dr.Yina Linden', '028/261/SIP-TU/X/2004', 'sby', '1234', 8),
(90, 'Dr.Linda Ramayati', '028/262/SIP-TU/X/2004', 'sby', '1234', 8),
(92, 'Dr.Ernawati', '028/263/SIP-TU/X/2004', 'sby', '1234', 8),
(94, 'Dr.Yulisna Leman', '028/266/SIP-TU/XI/2004', 'sby', '1234', 8),
(96, 'Dr.Aris Santoso', '028/268/SIP-TU/XI/2004', 'sby', '1234', 8),
(98, 'Dr.Erika Nina Br Sembiring', '028/272/SIP-TU/XI/2004', 'sby', '1234', 8),
(100, 'Dr.Faisal Thamrin', '028/275/SIP-TU/XII/2004', 'sby', '1234', 8),
(102, 'Dr.Nasaruddin M.Sheldon', '028/276/SIP-TU/XII/2004', 'sby', '1234', 8),
(104, 'Dr.Muhammad Ahsan', '028/277/SIP-TU/XII/2004', 'sby', '1234', 8),
(106, 'Dr.Tien Fatimatuzahhra', '028/278/SIP-TU/XII/2004', 'sby', '1234', 8),
(108, 'Dr.Thrisia Wuryanti', '028/279/SIP-TU/XII/2004', 'sby', '1234', 8),
(110, 'Dr.Endang Dwi Esti Juliandary', '028/280/SIP-TU/I/2005', 'sby', '1234', 8),
(112, 'Dr.Sri Amrini', '028/281/SIP-TU/I/2005', 'sby', '1234', 8),
(114, 'Dr.Zainue Akbar', '028/282/SIP-TU/I/2005', 'sby', '1234', 8),
(116, 'Dr.Otto Rajasa', '028/284/SIP-TU/III/2005', 'sby', '1234', 8),
(118, 'Dr.Francisca Pratiwi', '028/285/SIP-TU/III/2005', 'sby', '1234', 8),
(120, 'Dr.Cahyadi Ilham', '028/286/SIP-TU/III/2005', 'sby', '1234', 8),
(122, 'Dr.Faisal', '028/287/SIP-TU/III/2005', 'sby', '1234', 8),
(124, 'Dr.Esther Vonny K', '028/293/SIP-TU/III/2005', 'sby', '1234', 8),
(126, 'Dr.Mahes Bayu Aji', '028/294/SIP-TU/III/2005', 'sby', '1234', 8),
(128, 'Dr.Yenny Setiawati', '028/296/SIP-TU/III/2005', 'sby', '1234', 8),
(130, 'Dr.Susi Cavinojani', '028/298/SIP-TU/III/2005', 'sby', '1234', 8),
(132, 'Dr.Oktavio Augusto De Jesus OS', '028/299/SIP-TU/IV/2005', 'sby', '1234', 8),
(134, 'Dr.Andrianus Rohadi', '028/300/SIP-TU/IV/2005', 'sby', '1234', 8),
(136, 'Dr.Eko Wahju Tjahjono', '028/301/SIP-TU/IV/2005', 'sby', '1234', 8),
(138, 'Dr.H.M Subandi', '028/302/SIP-TU/IV/2005', 'sby', '1234', 8),
(140, 'Dr.Taufik Kukuh Widodo', '028/303/SIP-TU/IV/2005', 'sby', '1234', 8),
(142, 'Dr.Yuli Eko Prasetyo', '028/305/SIP-TU/IV/2005', 'sby', '1234', 8),
(144, 'Dr.Subagya', '028/306/SIP-TU/V/2005', 'sby', '1234', 8),
(146, 'Dr. Erika S Panjaitan', '028/309/SIP-TU/V/2005', 'sby', '1234', 8),
(148, 'Dr.Oksen Pariangan', '028/314/SIP-TU/VI/2005', 'sby', '1234', 8),
(150, 'Dr.Luluk Kumala Kafbiyah', '028/315/SIP-TU/VI/2005', 'sby', '1234', 8),
(152, 'Dr.Suciohati Dewata', '028/316/SIP-TU/VI/2005', 'sby', '1234', 8),
(154, 'Dr.Fenny Zulkiflie', '028/317/SIP-TU/VI/2005', 'sby', '1234', 8),
(156, 'Dr.Efanna Yogiyanti', '028/318/SIP-TU/VI/2005', 'sby', '1234', 8),
(158, 'Dr.Erna Kartikawati', '028/319/SIP-TU/VII/2005', 'sby', '1234', 8),
(160, 'Dr.R FX Widyatmoko', '028/320/SIP-TU/VII/2005', 'sby', '1234', 8),
(162, 'Dr.Nur Afiah', '028/326/SIP-TU/VII/2005', 'sby', '1234', 8),
(164, 'Dr.Lilik Indrayati', '028/328/SIP-TU/VII/2005', 'sby', '1234', 8),
(166, 'Dr.Ita Dahlia', '028/330/SIP-TU/VII/2005', 'sby', '1234', 8),
(168, 'Dr.Simon Akhmad Norman', '028/331/SIP-TU/VII/2005', 'sby', '1234', 8),
(170, 'Dr.Kristina Dwi Wahyuni', '028/332/SIP-TU/VII/2005', 'sby', '1234', 8),
(172, 'Dr.Balerina J.P Pontolumiju', '028/338/SIP-TU/VII/2005', 'sby', '1234', 8),
(176, ' Dr. Mochammad Syafak', '028/340/SIP-TU/VIII/2005', 'sby', '1234', 8),
(178, 'Dr. Steven Fungsi', '028/345/SIP-TU/VIII/2005', 'sby', '1234', 8),
(180, 'Dr.Ingrid Jeanette Maria S', '028/349/SIP-TU/VIII/2005', 'sby', '1234', 8),
(182, 'Dr.Agustining Rahayu', '028/350/SIP-TU/VIII/2005', 'sby', '1234', 8),
(184, 'Dr.Freddy Suhadi', '028/352/SIP-TU/VIII/2005', 'sby', '1234', 8),
(186, 'Dr.Rudi Mokodompit', '028/354/SIP-TU/VIII/2005', 'sby', '1234', 8),
(188, 'Dr.Nicko Febriyanto', '028/356/SIP-TU/VIII/2005', 'sby', '1234', 8),
(190, 'Dr.Cristmos Bambang M', '028/357/SIP-TU/VIII/2005', 'sby', '1234', 8),
(192, 'Dr.Ririn Sriwijayanti', '028/359/SIP-TU/VIII/2005', 'sby', '1234', 8),
(194, 'Dr.Christie Sophie Tengkere', '028/360/SIP-TU/VIII/2005', 'sby', '1234', 8),
(196, 'Dr.Daniel Richard Humpry', '028/361/SIP-TU/VIII/2005', 'sby', '1234', 8),
(198, 'Dr.Petty Ariani', '028/362/SIP-TU/VIII/2005', 'sby', '1234', 8),
(200, 'Dr.Samuel Kong', '028/364/SIP-TU/VIII/2005', 'sby', '1234', 8),
(202, 'Dr.Nike Ariesta', '028/368/SIP-TU/VIII/2005', 'sby', '1234', 8),
(204, 'Dr.Wita Kartika Nurani', '028/369/SIP-TU/VIII/2005', 'sby', '1234', 8),
(208, 'Dr.Fahmi Zawawi', '028/372/SIP-TU/VIII/2005', 'sby', '1234', 8),
(210, 'Dr.Andi Sri Juliarty', '028/373/SIP-TU/VIII/2005', 'sby', '1234', 8),
(212, 'Dr.Wiwik Mulyana', '028/374/SIP-TU/IX/2005', 'sby', '1234', 8),
(214, 'Dr.Sri Irma Fitriani', '028/375/SIP-TU/IX/2005', 'sby', '1234', 8),
(216, 'Dr.Tzeto Itjong', '028/376/SIP-TU/IX/2005', 'sby', '1234', 8),
(218, 'Dr.Koster Panggabean', '028/377/SIP-TU/IX/2005', 'sby', '1234', 8),
(220, 'Dr.Fredrik P Demmassabu', '028/378/SIP-TU/IX/2005', 'sby', '1234', 8),
(222, 'Dr.Djuhani Prihnata Putri', '028/381/SIP-TU/IX/2005', 'sby', '1234', 8),
(224, 'Dr.La Ode Syahrizal', '028/382/SIP-TU/IX/2005', 'sby', '1234', 8),
(226, 'Dr.Indah Puspitasari', '028/383/SIP-TU/IX/2005', 'sby', '1234', 8),
(228, 'Dr.Dedy Waskita', '028/384/SIP-TU/IX/2005', 'sby', '1234', 8),
(230, 'Dr.Basuki Nugroho', '028/385/SIP-TU/IX/2005', 'sby', '1234', 8),
(232, 'Dr.Khairan Irmansyah', '028/386/SIP-TU/IX/2005', 'sby', '1234', 8),
(234, 'Dr.Alexander Henry MS', '028/387/SIP-TU/IX/2005', 'sby', '1234', 8),
(236, 'Dr.Novida Ariani', '028/390/SIP-TU/IX/2005', 'sby', '1234', 8),
(238, 'Dr.Iskandar', '028/392/SIP-TU/IX/2005', 'sby', '1234', 8),
(240, 'Dr.Syafaah H Ma\'sum', '028/395/SIP-TU/IX/2005', 'sby', '1234', 8),
(242, 'Dr.Danie Djonly Poluan', '028/398/SIP-TU/IX/2005', 'sby', '1234', 8),
(244, 'Dr.Miliater Simanjuntak', '028/401/SIP-TU/IX/2005', 'sby', '1234', 8),
(246, 'Dr.Debi Septiawati', '028/409/SIP-TU/X/2005', 'sby', '1234', 8),
(248, 'Dr.Andi Ashaq', '028/410/SIP-TU/X/2005', 'sby', '1234', 8),
(250, 'Dr.Ami Noviana Pangkong', '028/411/SIP-TU/X/2005', 'sby', '1234', 8),
(252, 'Dr.Anastasia Yuliani', '028/412/SIP-TU/X/2005', 'sby', '1234', 8),
(254, 'Dr.Retnowati', '028/413/SIP-TU/X/2005', 'sby', '1234', 8),
(262, 'Dr. fef', '545', 'fef', '545', 8),
(264, 'hhhh edit', '555', 'ttt', '55', 8),
(266, 'fdfsf', '33', 'dff', '33', 8),
(268, 'g', '4', 'fdf', '4', 8),
(270, 'f', '5', 'f', '5', 8),
(272, 'a', '1', 'a', '1', 8),
(274, 'b', '2', 'b', '2', 8),
(276, 'c', '3', 'c', '3', 8),
(278, 'd', '4', 'd', '4', 8),
(280, 'e', '5', 'e', '5', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_golongan`
--

CREATE TABLE `tbl_golongan` (
  `id_golongan` int(11) NOT NULL,
  `nama_golongan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_golongan`
--

INSERT INTO `tbl_golongan` (`id_golongan`, `nama_golongan`) VALUES
(1, 'Umum'),
(2, 'Psikotropika'),
(3, 'Prekusor'),
(4, 'Narkotika'),
(5, 'Obat Tertentu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gudang`
--

CREATE TABLE `tbl_gudang` (
  `id_gudang` int(11) NOT NULL,
  `nama_gudang` varchar(100) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gudang`
--

INSERT INTO `tbl_gudang` (`id_gudang`, `nama_gudang`, `id_member`) VALUES
(2, 'Gudang 01', 8),
(3, 'Gudang 02', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_history_stok`
--

CREATE TABLE `tbl_history_stok` (
  `id_history_stok` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `no_transaksi` varchar(50) DEFAULT NULL,
  `no_faktur` varchar(100) DEFAULT NULL,
  `keterangan_asal` varchar(255) DEFAULT NULL,
  `batch` varchar(255) DEFAULT NULL,
  `stok_masuk` int(11) DEFAULT NULL,
  `stok_keluar` int(11) DEFAULT NULL,
  `stok_akhir` int(11) DEFAULT NULL,
  `kadaluwarsa` varchar(100) DEFAULT NULL,
  `keterangan_transaksi` varchar(255) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_history_stok`
--

INSERT INTO `tbl_history_stok` (`id_history_stok`, `id_obat`, `id_rak`, `no_transaksi`, `no_faktur`, `keterangan_asal`, `batch`, `stok_masuk`, `stok_keluar`, `stok_akhir`, `kadaluwarsa`, `keterangan_transaksi`, `id_member`) VALUES
(95, 2, 3, '01/BL/08/2020', 'MKASMOA112', 'ANEKA SARANA HUSADA NUSANTARA, PT', 'ASJNK', 200, 0, 200, '31/08/2020', 'Pembelian', 8),
(96, 2, 3, '0001/JL/08/2020', NULL, 'Ike Yuningsih', 'ASJNK', 0, 10, 190, NULL, 'Penjualan', 8),
(97, 2, 3, '0001/JL/09/2020', NULL, 'UMUM', 'ASJNK', 0, 3, 187, NULL, 'Penjualan', 8),
(98, 6, 4, '02/BL/09/2020', 'YIOAUSD123', 'ANTAR MITRA SEMBADA, PT', 'RYFTYASD', 500, 0, 500, '30/09/2020', 'Pembelian', 8),
(99, 6, 4, '0001/RB/09/2020', '', '', 'RYFTYASD', 0, 100, 400, NULL, 'Retur Beli', 8),
(100, 6, 4, '0002/RB/09/2020', '', '', 'RYFTYASD', 0, 50, 350, NULL, 'Retur Beli', 8),
(101, 6, 4, '0003/JL/09/2020', '00000000002', 'PT. Makmur Jaya', 'RYFTYASD', 0, 10, 340, NULL, 'Penjualan', 8),
(107, 2, 3, '0004/JL/09/2020', NULL, 'Ike Yuningsih', 'ASJNK', 0, 10, 177, NULL, 'Penjualan', 8),
(108, 2, 3, '0004/JL/09/2020', NULL, 'Ike Yuningsih', 'ASJNK', 0, 10, 167, NULL, 'Penjualan', 8),
(109, 6, 4, '0004/JL/09/2020', NULL, 'Ike Yuningsih', 'RYFTYASD', 0, 10, 330, NULL, 'Penjualan', 8),
(110, 3, 4, '03/BL/09/2020', 'KMKSDAS123', 'BRAMADA PARMASARI, PT', 'JOIAJDOAS', 100, 0, 100, '01/10/2020', 'Pembelian', 8),
(111, 3, 4, '0005/JL/09/2020', NULL, 'Nama pelanggan tidak ada', 'JOIAJDOAS', 0, 10, 90, NULL, 'Penjualan', 8),
(112, 2, 3, '0005/JL/09/2020', NULL, 'Nama pelanggan tidak ada', 'ASJNK', 0, 10, 157, NULL, 'Penjualan', 8),
(113, 2, 3, '0005/JL/09/2020', NULL, 'Ike Yuningsih', 'ASJNK', 0, 1, 166, NULL, 'Penjualan', 8),
(114, 6, 4, '0005/JL/09/2020', NULL, 'Ike Yuningsih', 'RYFTYASD', 0, 1, 329, NULL, 'Penjualan', 8),
(115, 3, 4, '0005/JL/09/2020', NULL, 'Ike Yuningsih', 'JOIAJDOAS', 0, 1, 99, NULL, 'Penjualan', 8),
(116, 2, 3, '0006/JL/09/2020', NULL, 'PT. Makmur Jaya', 'ASJNK', 0, 2, 164, NULL, 'Penjualan', 8),
(117, 6, 4, '0006/JL/09/2020', NULL, 'PT. Makmur Jaya', 'RYFTYASD', 0, 2, 327, NULL, 'Penjualan', 8),
(118, 3, 4, '0006/JL/09/2020', NULL, 'PT. Makmur Jaya', 'JOIAJDOAS', 0, 2, 97, NULL, 'Penjualan', 8),
(119, 4, 3, '04/BL/09/2020', 'KOJODASO', 'ANUGERAH SUMBER BAHAGIA, PT', 'UIHAISUD', 1, 0, 1, '01/09/2020', 'Pembelian', 8),
(120, 9, 3, '05/BL/09/2020', 'OJAOSDAS', 'BRAMADA PARMASARI, PT', 'ASDASDASD', 1, 0, 1, '10/09/2020', 'Pembelian', 8),
(121, 10, 3, '05/BL/09/2020', 'OJAOSDAS', 'BRAMADA PARMASARI, PT', 'VSSDDSAVSD', 1, 0, 1, '01/09/2020', 'Pembelian', 8),
(122, 9, 3, '0005/RB/09/2020', '', '', 'ASDASDASD', 0, 1, 0, NULL, 'Retur Beli', 8),
(123, 10, 3, '0005/RB/09/2020', '', '', 'VSSDDSAVSD', 0, 1, 0, NULL, 'Retur Beli', 8),
(124, 4, 3, '0006/RB/09/2020', '', '', 'UIHAISUD', 0, 1, 0, NULL, 'Retur Beli', 8),
(125, 2, 3, '0005/JL/09/2020', NULL, 'Ike Yuningsih', 'ASJNK', 0, 5, 159, NULL, 'Penjualan', 8),
(126, 2, 3, '0006/JL/09/2020', NULL, 'PT. Makmur Jaya', 'ASJNK', 0, 5, 154, NULL, 'Penjualan', 8),
(127, 6, 4, '0007/JL/09/2020', NULL, 'UMUM', 'RYFTYASD', 0, 1, 326, NULL, 'Penjualan', 8),
(128, 2, 3, '0002/JL/09/2020', NULL, 'Ike Yuningsih', 'ASJNK', 0, 1, 153, NULL, 'Penjualan', 8),
(129, 2, 3, '0012/JL/09/2020', NULL, 'Ike Yuningsih', 'ASJNK', 0, 1, 152, NULL, 'Penjualan', 8),
(130, 6, 4, '0013/JL/09/2020', NULL, 'Ike Yuningsih', 'RYFTYASD', 0, 1, 325, NULL, 'Penjualan', 8),
(131, 3, 4, '0013/JL/09/2020', NULL, 'Ike Yuningsih', 'JOIAJDOAS', 0, 1, 96, NULL, 'Penjualan', 8),
(132, 2, 3, '0001/JL/10/2020', NULL, 'UMUM', 'ASJNK', 0, 3, 149, NULL, 'Penjualan', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hutang_awal`
--

CREATE TABLE `tbl_hutang_awal` (
  `id_hutang_awal` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `tgl_hutang` date NOT NULL,
  `no_ref` varchar(100) NOT NULL,
  `no_faktur` varchar(100) NOT NULL,
  `tgl_tempo` date NOT NULL,
  `jumlah_hutang` double NOT NULL,
  `jumlah_temp` double NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `id_member` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `edited_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_detail`
--

CREATE TABLE `tbl_item_detail` (
  `id_item_detail` int(11) NOT NULL,
  `id_detail_penjualan` int(11) NOT NULL,
  `jenis_harga` varchar(15) DEFAULT NULL,
  `id_obat` int(11) DEFAULT NULL,
  `id_jasa` int(11) DEFAULT NULL,
  `id_paket` int(11) DEFAULT NULL,
  `qty_pesan` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `batch` varchar(100) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `harga_disc` double DEFAULT NULL,
  `tuslah` double DEFAULT NULL,
  `embalanse` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_item_detail`
--

INSERT INTO `tbl_item_detail` (`id_item_detail`, `id_detail_penjualan`, `jenis_harga`, `id_obat`, `id_jasa`, `id_paket`, `qty_pesan`, `jumlah`, `satuan`, `harga`, `batch`, `exp_date`, `disc`, `harga_disc`, `tuslah`, `embalanse`, `total`, `id_member`) VALUES
(43, 43, 'Non Resep', 2, NULL, NULL, NULL, 1, 'Pcs', 12060, 'ASJNK', '2020-08-31', NULL, NULL, 0, 0, 120600, 8),
(44, 44, 'Non Resep', 2, NULL, NULL, NULL, 1, 'Botol', 39420, 'ASJNK', '2020-08-31', NULL, NULL, 0, 0, 39420, 8),
(45, 45, 'Non Resep', 6, NULL, NULL, NULL, 1, 'Botol', 11760, 'RYFTYASD', '2020-09-30', NULL, NULL, 0, 0, 117600, 8),
(51, 51, 'Non Resep', 2, NULL, NULL, NULL, 1, 'Pcs', 12060, 'ASJNK', '2020-08-31', NULL, NULL, 0, 0, 120600, 8),
(52, 52, 'Non Resep', 2, NULL, NULL, NULL, 1, 'Pcs', 12060, 'ASJNK', '2020-08-31', NULL, NULL, 0, 0, 120600, 8),
(53, 53, 'Non Resep', 6, NULL, NULL, NULL, 1, 'Botol', 11760, 'RYFTYASD', '2020-09-30', NULL, NULL, 0, 0, 117600, 8),
(54, 54, 'Non Resep', NULL, NULL, 1, NULL, 1, 'paket', 110000, '-', '0000-00-00', NULL, NULL, 0, 0, 110000, 8),
(55, 55, 'Non Resep', 2, NULL, NULL, NULL, 1, 'Pcs', 12060, 'ASJNK', '2020-08-31', NULL, NULL, 0, 0, 12060, 8),
(56, 56, 'Non Resep', 6, NULL, NULL, NULL, 1, 'Botol', 11760, 'RYFTYASD', '2020-09-30', NULL, NULL, 0, 0, 11760, 8),
(57, 57, 'Non Resep', 3, NULL, NULL, NULL, 1, 'Botol', 12000, 'JOIAJDOAS', '2020-10-01', NULL, NULL, 0, 0, 12000, 8),
(58, 58, 'Non Resep', 2, NULL, NULL, NULL, 1, 'Pcs', 12060, 'ASJNK', '2020-08-31', NULL, NULL, 0, 0, 24120, 8),
(59, 59, 'Non Resep', 6, NULL, NULL, NULL, 1, 'Botol', 11760, 'RYFTYASD', '2020-09-30', NULL, NULL, 0, 0, 23520, 8),
(60, 60, 'Non Resep', 3, NULL, NULL, NULL, 1, 'Botol', 12000, 'JOIAJDOAS', '2020-10-01', NULL, NULL, 0, 0, 24000, 8),
(62, 62, 'Non Resep', 2, NULL, NULL, NULL, 1, 'Pcs', 12060, 'ASJNK', '2020-08-31', NULL, NULL, 0, 0, 60300, 8),
(63, 63, 'Non Resep', 2, NULL, NULL, NULL, 1, 'Pcs', 12060, 'ASJNK', '2020-08-31', NULL, NULL, 0, 0, 60300, 8),
(64, 64, 'Non Resep', 6, NULL, NULL, NULL, 1, 'Botol', 11760, 'RYFTYASD', '2020-09-30', NULL, NULL, 0, 0, 11760, 8),
(65, 65, 'Non Resep', 2, NULL, NULL, NULL, 1, 'Pcs', 12060, 'ASJNK', '2020-08-31', NULL, NULL, 0, 0, 12060, 8),
(66, 66, 'Non Resep', 2, NULL, NULL, NULL, 1, 'Pcs', 12060, 'ASJNK', '2020-08-31', NULL, NULL, 0, 0, 12060, 8),
(67, 67, 'Non Resep', 6, NULL, NULL, NULL, 1, 'Botol', 11760, 'RYFTYASD', '2020-09-30', NULL, NULL, 0, 0, 11760, 8),
(68, 68, 'Non Resep', 3, NULL, NULL, NULL, 1, 'Botol', 12000, 'JOIAJDOAS', '2020-10-01', NULL, NULL, 0, 0, 12000, 8),
(69, 69, 'Non Resep', 2, NULL, NULL, NULL, 1, 'Botol', 39420, 'ASJNK', '2020-08-31', NULL, NULL, 0, 0, 37449, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jasa`
--

CREATE TABLE `tbl_jasa` (
  `id_jasa` int(11) NOT NULL,
  `nama_jasa` varchar(200) NOT NULL,
  `jenis_jasa` varchar(50) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `harga_netto` double NOT NULL,
  `harga_non_resep` double DEFAULT NULL,
  `harga_resep` double DEFAULT NULL,
  `harga_bpjs` double DEFAULT NULL,
  `harga_khusus` double DEFAULT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `edited_date` datetime DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_jasa`
--

INSERT INTO `tbl_jasa` (`id_jasa`, `nama_jasa`, `jenis_jasa`, `keterangan`, `harga_netto`, `harga_non_resep`, `harga_resep`, `harga_bpjs`, `harga_khusus`, `created_by`, `created_date`, `edited_by`, `edited_date`, `id_member`) VALUES
(6, 'Resep Rcikan 1', 'Racikan', 'Puyer/kapsul 1-10 pcs', 1000, 1000, 2000, 2000, 1500, 'coba@gmail.com', '2019-10-12 23:39:32', NULL, NULL, 8),
(7, 'Resep Racikan 2', 'Racikan', 'Puyer/ kapsul 11-20 pcs', 2000, 2500, 3000, 3000, 2500, 'coba@gmail.com', '2019-10-12 23:45:17', NULL, NULL, 8),
(8, 'Konsultasi apoteker', 'Lainnya', 'Konsultasi durasi 15 menit', 5000, 5000, 10000, 15000, 10000, 'coba@gmail.com', '2019-10-12 23:48:07', NULL, NULL, 8),
(10, 'ttt', 'Konsultasi', 'tttt', 77777, 7777, 7777, 777777, 777777, 'ADMIN', '2021-06-05 21:55:10', 'ADMIN', '2021-06-05 21:55:10', 8),
(11, 't', 'Racikan', 'ttt', 6000, 9000, 8000, 8600, 8600, 'ADMIN', '2021-06-05 21:55:52', 'ADMIN', '2021-06-05 21:55:52', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_akun_akuntansi`
--

CREATE TABLE `tbl_jenis_akun_akuntansi` (
  `id_jenis_akun_akuntansi` int(11) NOT NULL,
  `kode_jenis` varchar(10) DEFAULT NULL,
  `nama_jenis` varchar(50) DEFAULT NULL,
  `status_jenis` varchar(10) DEFAULT NULL,
  `no_jenis` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_jenis_akun_akuntansi`
--

INSERT INTO `tbl_jenis_akun_akuntansi` (`id_jenis_akun_akuntansi`, `kode_jenis`, `nama_jenis`, `status_jenis`, `no_jenis`) VALUES
(1, '1-0000', 'AKTIVA', 'Debit', 1),
(2, '2-0000', 'KEWAJIBAN', 'Kredit', 2),
(3, '3-0000', 'MODAL', 'Kredit', 3),
(4, '4-0000', 'PENDAPATAN', 'Kredit', 4),
(5, '5-0000', 'HPP', 'Debit', 5),
(6, '6-0000', 'BIAYA', 'Debit', 6),
(7, '7-0000', 'PENDAPATAN LAIN', 'Kredit', 7),
(8, '8-0000', 'BIAYA LAIN', 'Debit', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_obat`
--

CREATE TABLE `tbl_jenis_obat` (
  `id_jenis_obat` int(11) NOT NULL,
  `nama_jenis` varchar(100) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_jenis_obat`
--

INSERT INTO `tbl_jenis_obat` (`id_jenis_obat`, `nama_jenis`, `id_member`) VALUES
(9, 'Obat Bebas', 8),
(10, 'Obat Keras', 8),
(11, 'Obat Bebas Terbatas', 8),
(12, 'Obat Narkotika', 8),
(13, 'Jamu', 8),
(14, 'Herbal Terstandar', 8),
(15, 'Fitofarmaka', 8),
(16, 'Alat Kesehatan', 8),
(17, 'Alat Lab', 8),
(18, 'Kosmetik', 8),
(19, 'Kosmedik', 8),
(20, 'Umum', 8),
(40, 'Alat Kesehatan', 23),
(41, 'UMUM', 23),
(42, 'Bahan Habis Pakai Cair', 23),
(44, 'rredit', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_racik`
--

CREATE TABLE `tbl_jenis_racik` (
  `id_jenis_racik` int(10) UNSIGNED NOT NULL,
  `nama_jenis_racik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jenis_racik`
--

INSERT INTO `tbl_jenis_racik` (`id_jenis_racik`, `nama_jenis_racik`) VALUES
(1, 'Kapsul'),
(2, 'Puyer'),
(3, 'Krim'),
(4, 'Salep'),
(5, 'Sirup'),
(6, 'Larutan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurnal`
--

CREATE TABLE `tbl_jurnal` (
  `id_jurnal` int(11) NOT NULL,
  `id_akun_akuntansi` int(11) NOT NULL,
  `no_transaksi` varchar(50) DEFAULT NULL,
  `debet` double NOT NULL DEFAULT 0,
  `kredit` double NOT NULL DEFAULT 0,
  `tanggal` datetime DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL DEFAULT ' ',
  `flg_status` int(11) NOT NULL DEFAULT 1,
  `jurnal_type` int(11) NOT NULL DEFAULT 1,
  `saldo_sebelum` double NOT NULL DEFAULT 0,
  `saldo_sesudah` double NOT NULL DEFAULT 0,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_jurnal`
--

INSERT INTO `tbl_jurnal` (`id_jurnal`, `id_akun_akuntansi`, `no_transaksi`, `debet`, `kredit`, `tanggal`, `keterangan`, `flg_status`, `jurnal_type`, `saldo_sebelum`, `saldo_sesudah`, `id_member`) VALUES
(318, 9, '01/SL/08/2020', 10000000, 0, '2020-08-31 14:46:17', '', 1, 2, 0, 10000000, 8),
(319, 36, '02/SL/08/2020', 10000000, 0, '2020-08-31 14:46:17', '', 1, 2, 0, 10000000, 8),
(320, 17, '01/BL/08/2020', 2400000, 0, '2020-08-31 14:47:46', '', 1, 2, 0, 2400000, 8),
(321, 10, '01/BL/08/2020', 0, 2740000, '2020-08-31 14:47:46', '', 1, 2, 0, -2740000, 8),
(322, 19, '01/BL/08/2020', 240000, 0, '2020-08-31 14:47:46', '', 1, 2, 0, 240000, 8),
(323, 76, '01/BL/08/2020', 100000, 0, '2020-08-31 14:47:46', '', 1, 2, 0, 100000, 8),
(324, 33, '0001/JL/08/2020', 0, 10963.636363636, '2020-08-31 14:49:10', '', 1, 1, 0, 0, 8),
(325, 44, '0001/JL/08/2020', 0, 10000, '2020-08-31 14:49:10', '', 1, 1, 0, 0, 8),
(326, 11, '0001/JL/08/2020', 0, 120600, '2020-08-31 14:49:10', '', 1, 1, 0, 0, 8),
(327, 16, '0001/JL/08/2020', 0, 0, '2020-08-31 14:49:10', '', 1, 1, 0, 0, 8),
(328, 85, '0001/JL/08/2020', 0, 1000, '2020-08-31 14:49:10', '', 1, 1, 0, 0, 8),
(329, 48, '0001/JL/08/2020', 120000, 0, '2020-08-31 14:49:10', '', 1, 1, 0, 0, 8),
(330, 40, '0001/JL/08/2020', 0, 109636.36363636, '2020-08-31 14:49:10', '', 1, 1, 0, 0, 8),
(331, 17, '0001/JL/08/2020', 0, 120000, '2020-08-31 14:49:10', '', 1, 1, 0, 0, 8),
(332, 33, '0001/JL/09/2020', 0, 3583.6363636364, '2020-09-02 01:29:37', '', 1, 1, 0, 0, 8),
(333, 44, '0001/JL/09/2020', 0, 0, '2020-09-02 01:29:37', '', 1, 1, 0, 0, 8),
(334, 11, '0001/JL/09/2020', 0, 39420, '2020-09-02 01:29:37', '', 1, 1, 0, 0, 8),
(335, 16, '0001/JL/09/2020', 0, 0, '2020-09-02 01:29:37', '', 1, 1, 0, 0, 8),
(336, 85, '0001/JL/09/2020', 0, 0, '2020-09-02 01:29:37', '', 1, 1, 0, 0, 8),
(337, 48, '0001/JL/09/2020', 12000, 0, '2020-09-02 01:29:37', '', 1, 1, 0, 0, 8),
(338, 40, '0001/JL/09/2020', 0, 35836.363636364, '2020-09-02 01:29:37', '', 1, 1, 0, 0, 8),
(339, 17, '0001/JL/09/2020', 0, 12000, '2020-09-02 01:29:37', '', 1, 1, 0, 0, 8),
(340, 29, '02/BL/09/2020', 0, 3490000, '2020-09-02 14:40:44', '', 1, 2, 0, 3490000, 8),
(341, 17, '02/BL/09/2020', -4900000, 0, '2020-09-02 14:40:44', '', 1, 2, 2400000, -2500000, 8),
(342, 10, '02/BL/09/2020', 0, 2000000, '2020-09-02 14:40:44', '', 1, 2, -2740000, -4740000, 8),
(343, 19, '02/BL/09/2020', -490000, 0, '2020-09-02 14:40:44', '', 1, 2, 240000, -250000, 8),
(344, 76, '02/BL/09/2020', -100000, 0, '2020-09-02 14:40:44', '', 1, 2, 100000, 0, 8),
(345, 19, '0001/RB/09/2020', 0, 98000, '2020-09-03 11:01:01', '', 1, 1, 0, 0, 8),
(346, 17, '0001/RB/09/2020', 0, 980000, '2020-09-03 11:01:01', '', 1, 1, 0, 0, 8),
(347, 19, '0002/RB/09/2020', 0, 49000, '2020-09-03 12:35:33', '', 1, 1, 0, 0, 8),
(348, 17, '0002/RB/09/2020', 0, 490000, '2020-09-03 12:35:33', '', 1, 1, 0, 0, 8),
(349, 29, '01/BH/09/2020', 400000, 0, '2020-09-03 14:48:55', '', 1, 2, 3490000, 3090000, 8),
(350, 29, '02/BH/09/2020', 2000000, 0, '2020-09-03 14:58:31', '', 1, 2, 3090000, 1090000, 8),
(351, 33, '0003/JL/09/2020', 0, 10690.909090909, '2020-09-03 16:37:21', '', 1, 1, 0, 0, 8),
(352, 44, '0003/JL/09/2020', 0, 0, '2020-09-03 16:37:21', '', 1, 1, 0, 0, 8),
(353, 11, '0003/JL/09/2020', 0, 0, '2020-09-03 16:37:21', '', 1, 1, 0, 0, 8),
(354, 16, '0003/JL/09/2020', 117600, 0, '2020-09-03 16:37:21', '', 1, 1, 0, 0, 8),
(355, 85, '0003/JL/09/2020', 0, 0, '2020-09-03 16:37:21', '', 1, 1, 0, 0, 8),
(356, 48, '0003/JL/09/2020', 98000, 0, '2020-09-03 16:37:21', '', 1, 1, 0, 0, 8),
(357, 40, '0003/JL/09/2020', 0, 106909.09090909, '2020-09-03 16:37:21', '', 1, 1, 0, 0, 8),
(358, 17, '0003/JL/09/2020', 0, 98000, '2020-09-03 16:37:21', '', 1, 1, 0, 0, 8),
(359, 16, '02/BP/09/2020', 0, 117600, '2020-09-03 16:42:41', '', 1, 2, 117600, 0, 8),
(360, 11, '02/BP/09/2020', 117600, 0, '2020-09-03 16:42:41', '', 1, 2, 160020, 277620, 8),
(361, 33, '0004/JL/09/2020', 0, 10963.636363636, '2020-09-03 21:05:25', '', 1, 2, 36201.818181817405, 25238.181818181, 8),
(362, 44, '0004/JL/09/2020', 0, 10000, '2020-09-03 21:05:25', '', 1, 2, 20000, 10000, 8),
(363, 11, '0004/JL/09/2020', 0, 120600, '2020-09-03 21:05:25', '', 1, 2, 398220, 277620, 8),
(364, 16, '0004/JL/09/2020', 0, 0, '2020-09-03 21:05:25', '', 1, 2, 0, 0, 8),
(365, 85, '0004/JL/09/2020', 0, 1000, '2020-09-03 21:05:25', '', 1, 2, 2000, 1000, 8),
(366, 48, '0004/JL/09/2020', 120000, 0, '2020-09-03 21:05:25', '', 1, 2, 0, 120000, 8),
(367, 40, '0004/JL/09/2020', 0, 109636.36363636, '2020-09-03 21:05:25', '', 1, 2, 0, -109636.36363636, 8),
(368, 17, '0004/JL/09/2020', 0, 120000, '2020-09-03 21:05:25', '', 1, 2, -3970000, -4090000, 8),
(369, 33, '0001/RJ/09/2020', 0, 1176, '2020-09-04 09:02:42', '', 1, 1, 0, 0, 8),
(370, 40, '0001/RJ/09/2020', 0, 11760, '2020-09-04 09:02:42', '', 1, 1, 0, 0, 8),
(371, 33, '0004/JL/09/2020', 0, 21654.545454545, '2020-09-04 09:27:53', '', 1, 2, 56680.36363636241, 35025.818181817, 8),
(372, 44, '0004/JL/09/2020', 0, 10000, '2020-09-04 09:27:53', '', 1, 2, 30000, 20000, 8),
(373, 11, '0004/JL/09/2020', 0, 238200, '2020-09-04 09:27:53', '', 1, 2, 636420, 398220, 8),
(374, 16, '0004/JL/09/2020', 0, 0, '2020-09-04 09:27:53', '', 1, 2, 0, 0, 8),
(375, 85, '0004/JL/09/2020', 0, 500, '2020-09-04 09:27:53', '', 1, 2, 2500, 2000, 8),
(376, 48, '0004/JL/09/2020', 218000, 0, '2020-09-04 09:27:53', '', 1, 2, 0, 218000, 8),
(377, 40, '0004/JL/09/2020', 0, 216545.45454545, '2020-09-04 09:27:53', '', 1, 2, -11760, -228305.45454545, 8),
(378, 17, '0004/JL/09/2020', 0, 218000, '2020-09-04 09:27:53', '', 1, 2, -3970000, -4188000, 8),
(379, 17, '03/BL/09/2020', 1000000, 0, '2020-09-04 09:47:34', ' ', 1, 2, -3970000, -2970000, 8),
(380, 10, '03/BL/09/2020', 0, 1200000, '2020-09-04 09:47:34', ' ', 1, 2, -4740000, -5940000, 8),
(381, 19, '03/BL/09/2020', 100000, 0, '2020-09-04 09:47:34', ' ', 1, 2, -397000, -297000, 8),
(382, 76, '03/BL/09/2020', 100000, 0, '2020-09-04 09:47:34', ' ', 1, 2, 0, 100000, 8),
(383, 33, '0005/JL/09/2020', 0, 10000, '2020-09-04 09:48:26', '', 1, 2, 66680.36363636241, 56680.363636362, 8),
(384, 44, '0005/JL/09/2020', 0, 0, '2020-09-04 09:48:26', '', 1, 2, 30000, 30000, 8),
(385, 11, '0005/JL/09/2020', 0, 110000, '2020-09-04 09:48:26', '', 1, 2, 746420, 636420, 8),
(386, 16, '0005/JL/09/2020', 0, 0, '2020-09-04 09:48:26', '', 1, 2, 0, 0, 8),
(387, 85, '0005/JL/09/2020', 0, 1000, '2020-09-04 09:48:26', '', 1, 2, 3500, 2500, 8),
(388, 48, '0005/JL/09/2020', 0, 0, '2020-09-04 09:48:26', '', 1, 2, 0, 0, 8),
(389, 40, '0005/JL/09/2020', 0, 100000, '2020-09-04 09:48:26', '', 1, 2, -11760, -111760, 8),
(390, 17, '0005/JL/09/2020', 0, 0, '2020-09-04 09:48:26', '', 1, 2, -2970000, -2970000, 8),
(391, 33, '0002/RJ/09/2020', 0, 2382, '2020-09-04 10:57:42', '', 1, 1, 0, 0, 8),
(392, 40, '0002/RJ/09/2020', 0, 23820, '2020-09-04 10:57:42', '', 1, 1, 0, 0, 8),
(393, 33, '0005/JL/09/2020', 0, 3256.3636363636, '2020-09-04 11:36:08', '', 1, 2, 67554.72727272601, 64298.363636362, 8),
(394, 44, '0005/JL/09/2020', 0, 0, '2020-09-04 11:36:08', '', 1, 2, 30000, 30000, 8),
(395, 11, '0005/JL/09/2020', 0, 35820, '2020-09-04 11:36:08', '', 1, 2, 782240, 746420, 8),
(396, 16, '0005/JL/09/2020', 0, 0, '2020-09-04 11:36:08', '', 1, 2, 0, 0, 8),
(397, 85, '0005/JL/09/2020', 0, 0, '2020-09-04 11:36:08', '', 1, 2, 3500, 3500, 8),
(398, 48, '0005/JL/09/2020', 31800, 0, '2020-09-04 11:36:08', '', 1, 2, 0, 31800, 8),
(399, 40, '0005/JL/09/2020', 0, 32563.636363636, '2020-09-04 11:36:08', '', 1, 2, -35580, -68143.636363636, 8),
(400, 17, '0005/JL/09/2020', 0, 31800, '2020-09-04 11:36:08', '', 1, 2, -2970000, -3001800, 8),
(401, 33, '0003/RJ/09/2020', 0, 3582, '2020-09-04 11:37:25', '', 1, 1, 0, 0, 8),
(402, 40, '0003/RJ/09/2020', 0, 35820, '2020-09-04 11:37:25', '', 1, 1, 0, 0, 8),
(403, 33, '0006/JL/09/2020', 0, 6512.7272727273, '2020-09-04 11:48:45', '', 1, 2, 70485.4545454533, 63972.727272726, 8),
(404, 44, '0006/JL/09/2020', 0, 0, '2020-09-04 11:48:45', '', 1, 2, 30000, 30000, 8),
(405, 11, '0006/JL/09/2020', 0, 71640, '2020-09-04 11:48:45', '', 1, 2, 853880, 782240, 8),
(406, 16, '0006/JL/09/2020', 0, 0, '2020-09-04 11:48:45', '', 1, 2, 0, 0, 8),
(407, 85, '0006/JL/09/2020', 0, 0, '2020-09-04 11:48:45', '', 1, 2, 3500, 3500, 8),
(408, 48, '0006/JL/09/2020', 63600, 0, '2020-09-04 11:48:45', '', 1, 2, 0, 63600, 8),
(409, 40, '0006/JL/09/2020', 0, 65127.272727273, '2020-09-04 11:48:45', '', 1, 2, -71400, -136527.27272727, 8),
(410, 17, '0006/JL/09/2020', 0, 63600, '2020-09-04 11:48:45', '', 1, 2, -2970000, -3033600, 8),
(411, 33, '0004/RJ/09/2020', 0, 7164, '2020-09-04 11:49:29', '', 1, 1, 0, 0, 8),
(412, 40, '0004/RJ/09/2020', 0, 71640, '2020-09-04 11:49:29', '', 1, 1, 0, 0, 8),
(413, 17, '04/BL/09/2020', 10000, 0, '2020-09-04 15:33:25', ' ', 1, 2, -2970000, -2960000, 8),
(414, 10, '04/BL/09/2020', 0, 11000, '2020-09-04 15:33:25', ' ', 1, 2, -5940000, -5951000, 8),
(415, 19, '04/BL/09/2020', 1000, 0, '2020-09-04 15:33:25', ' ', 1, 2, -297000, -296000, 8),
(416, 17, '05/BL/09/2020', 20000, 0, '2020-09-04 15:52:46', ' ', 1, 2, -2960000, -2940000, 8),
(417, 10, '05/BL/09/2020', 0, 22000, '2020-09-04 15:52:46', ' ', 1, 2, -5951000, -5973000, 8),
(418, 19, '05/BL/09/2020', 2000, 0, '2020-09-04 15:52:46', ' ', 1, 2, -296000, -294000, 8),
(419, 19, '0005/RB/09/2020', 0, 2000, '2020-09-04 15:53:04', '', 1, 1, 0, 0, 8),
(420, 17, '0005/RB/09/2020', 0, 20000, '2020-09-04 15:53:04', '', 1, 1, 0, 0, 8),
(421, 29, '01/HA/09/2020', 24000000, 0, '2020-09-07 10:54:12', ' ', 1, 2, 1090000, 25090000, 8),
(422, 16, '01/PA/09/2020', 4800000, 0, '2020-09-07 10:55:33', ' ', 1, 2, 0, 4800000, 8),
(423, 19, '0006/RB/09/2020', 0, 1000, '2020-09-15 15:48:52', '', 1, 1, 0, 0, 8),
(424, 17, '0006/RB/09/2020', 0, 10000, '2020-09-15 15:48:52', '', 1, 1, 0, 0, 8),
(425, 33, '0005/JL/09/2020', 0, 5481.8181818182, '2020-09-28 14:02:14', '', 1, 2, 68803.27272727151, 63321.454545453, 8),
(426, 44, '0005/JL/09/2020', 0, 0, '2020-09-28 14:02:14', '', 1, 2, 30000, 30000, 8),
(427, 11, '0005/JL/09/2020', 0, 60300, '2020-09-28 14:02:14', '', 1, 2, 914180, 853880, 8),
(428, 16, '0005/JL/09/2020', 0, 0, '2020-09-28 14:02:14', '', 1, 2, 0, 0, 8),
(429, 85, '0005/JL/09/2020', 0, 0, '2020-09-28 14:02:14', '', 1, 2, 3500, 3500, 8),
(430, 48, '0005/JL/09/2020', 60000, 0, '2020-09-28 14:02:14', '', 1, 2, 0, 60000, 8),
(431, 40, '0005/JL/09/2020', 0, 54818.181818182, '2020-09-28 14:02:14', '', 1, 2, -143040, -197858.18181818, 8),
(432, 17, '0005/JL/09/2020', 0, 60000, '2020-09-28 14:02:14', '', 1, 2, -2970000, -3030000, 8),
(433, 33, '0005/RJ/09/2020', 0, 6030, '2020-09-28 14:03:39', '', 1, 1, 0, 0, 8),
(434, 40, '0005/RJ/09/2020', 0, 60300, '2020-09-28 14:03:39', '', 1, 1, 0, 0, 8),
(435, 33, '0006/JL/09/2020', 0, 5481.8181818182, '2020-09-28 14:08:26', '', 1, 2, 68255.09090908972, 62773.272727272, 8),
(436, 44, '0006/JL/09/2020', 0, 1000, '2020-09-28 14:08:26', '', 1, 2, 31000, 30000, 8),
(437, 11, '0006/JL/09/2020', 0, 60300, '2020-09-28 14:08:26', '', 1, 2, 974480, 914180, 8),
(438, 16, '0006/JL/09/2020', 0, 0, '2020-09-28 14:08:26', '', 1, 2, 0, 0, 8),
(439, 85, '0006/JL/09/2020', 0, 0, '2020-09-28 14:08:26', '', 1, 2, 3500, 3500, 8),
(440, 48, '0006/JL/09/2020', 60000, 0, '2020-09-28 14:08:26', '', 1, 2, 0, 60000, 8),
(441, 40, '0006/JL/09/2020', 0, 54818.181818182, '2020-09-28 14:08:26', '', 1, 2, -203340, -258158.18181818, 8),
(442, 17, '0006/JL/09/2020', 0, 60000, '2020-09-28 14:08:26', '', 1, 2, -2970000, -3030000, 8),
(443, 33, '0006/RJ/09/2020', 0, 6030, '2020-09-28 14:08:49', '', 1, 1, 0, 0, 8),
(444, 40, '0006/RJ/09/2020', 0, 60300, '2020-09-28 14:08:49', '', 1, 1, 0, 0, 8),
(445, 33, '0007/JL/09/2020', 0, 1069.0909090909, '2020-09-30 00:21:15', '', 1, 2, 63294.181818180616, 62225.09090909, 8),
(446, 44, '0007/JL/09/2020', 0, 0, '2020-09-30 00:21:15', '', 1, 2, 31000, 31000, 8),
(447, 11, '0007/JL/09/2020', 0, 11760, '2020-09-30 00:21:15', '', 1, 2, 986240, 974480, 8),
(448, 16, '0007/JL/09/2020', 0, 0, '2020-09-30 00:21:15', '', 1, 2, 0, 0, 8),
(449, 85, '0007/JL/09/2020', 0, 0, '2020-09-30 00:21:15', '', 1, 2, 3500, 3500, 8),
(450, 48, '0007/JL/09/2020', 9800, 0, '2020-09-30 00:21:15', '', 1, 2, 0, 9800, 8),
(451, 40, '0007/JL/09/2020', 0, 10690.909090909, '2020-09-30 00:21:15', '', 1, 2, -263640, -274330.90909091, 8),
(452, 17, '0007/JL/09/2020', 0, 9800, '2020-09-30 00:21:15', '', 1, 2, -2970000, -2979800, 8),
(453, 33, '0007/RJ/09/2020', 0, 1176, '2020-09-30 00:24:37', '', 1, 1, 0, 0, 8),
(454, 40, '0007/RJ/09/2020', 0, 11760, '2020-09-30 00:24:37', '', 1, 1, 0, 0, 8),
(455, 33, '0002/JL/09/2020', 0, 1096.3636363636, '2020-09-30 10:14:22', '', 1, 2, 63214.54545454422, 62118.181818181, 8),
(456, 44, '0002/JL/09/2020', 0, 0, '2020-09-30 10:14:22', '', 1, 2, 31000, 31000, 8),
(457, 11, '0002/JL/09/2020', 0, 12060, '2020-09-30 10:14:22', '', 1, 2, 998300, 986240, 8),
(458, 16, '0002/JL/09/2020', 0, 0, '2020-09-30 10:14:22', '', 1, 2, 0, 0, 8),
(459, 85, '0002/JL/09/2020', 0, 0, '2020-09-30 10:14:22', '', 1, 2, 3500, 3500, 8),
(460, 48, '0002/JL/09/2020', 12000, 0, '2020-09-30 10:14:22', '', 1, 2, 0, 12000, 8),
(461, 40, '0002/JL/09/2020', 0, 10963.636363636, '2020-09-30 10:14:22', '', 1, 2, -275400, -286363.63636364, 8),
(462, 17, '0002/JL/09/2020', 0, 12000, '2020-09-30 10:14:22', '', 1, 2, -2970000, -2982000, 8),
(463, 33, '0012/JL/09/2020', 0, 1096.3636363636, '2020-09-30 10:19:29', '', 1, 2, 64310.90909090782, 63214.545454544, 8),
(464, 44, '0012/JL/09/2020', 0, 0, '2020-09-30 10:19:29', '', 1, 2, 31000, 31000, 8),
(465, 11, '0012/JL/09/2020', 0, 12060, '2020-09-30 10:19:29', '', 1, 2, 1010360, 998300, 8),
(466, 16, '0012/JL/09/2020', 0, 0, '2020-09-30 10:19:29', '', 1, 2, 0, 0, 8),
(467, 85, '0012/JL/09/2020', 0, 0, '2020-09-30 10:19:29', '', 1, 2, 3500, 3500, 8),
(468, 48, '0012/JL/09/2020', 12000, 0, '2020-09-30 10:19:29', '', 1, 2, 0, 12000, 8),
(469, 40, '0012/JL/09/2020', 0, 10963.636363636, '2020-09-30 10:19:29', '', 1, 2, -275400, -286363.63636364, 8),
(470, 17, '0012/JL/09/2020', 0, 12000, '2020-09-30 10:19:29', '', 1, 2, -2970000, -2982000, 8),
(471, 33, '0013/JL/09/2020', 0, 2160, '2020-09-30 10:26:46', '', 1, 2, 66470.90909090782, 64310.909090908, 8),
(472, 44, '0013/JL/09/2020', 0, 0, '2020-09-30 10:26:46', '', 1, 2, 31000, 31000, 8),
(473, 11, '0013/JL/09/2020', 0, 23760, '2020-09-30 10:26:46', '', 1, 2, 1034120, 1010360, 8),
(474, 16, '0013/JL/09/2020', 0, 0, '2020-09-30 10:26:46', '', 1, 2, 0, 0, 8),
(475, 85, '0013/JL/09/2020', 0, 0, '2020-09-30 10:26:46', '', 1, 2, 3500, 3500, 8),
(476, 48, '0013/JL/09/2020', 19800, 0, '2020-09-30 10:26:46', '', 1, 2, 0, 19800, 8),
(477, 40, '0013/JL/09/2020', 0, 21600, '2020-09-30 10:26:46', '', 1, 2, -275400, -297000, 8),
(478, 17, '0013/JL/09/2020', 0, 19800, '2020-09-30 10:26:46', '', 1, 2, -2970000, -2989800, 8),
(479, 33, '0001/JL/10/2020', 0, 3404.4545454545, '2020-10-04 05:21:47', '', 1, 2, 69875.36363636232, 66470.909090908, 8),
(480, 44, '0001/JL/10/2020', 0, 0, '2020-10-04 05:21:47', '', 1, 2, 31000, 31000, 8),
(481, 11, '0001/JL/10/2020', 0, 37449, '2020-10-04 05:21:47', '', 1, 2, 1071569, 1034120, 8),
(482, 16, '0001/JL/10/2020', 0, 0, '2020-10-04 05:21:47', '', 1, 2, 0, 0, 8),
(483, 85, '0001/JL/10/2020', 0, 0, '2020-10-04 05:21:47', '', 1, 2, 3500, 3500, 8),
(484, 48, '0001/JL/10/2020', 12000, 0, '2020-10-04 05:21:47', '', 1, 2, 0, 12000, 8),
(485, 40, '0001/JL/10/2020', 0, 34044.545454545, '2020-10-04 05:21:47', '', 1, 2, -275400, -309444.54545455, 8),
(486, 17, '0001/JL/10/2020', 0, 12000, '2020-10-04 05:21:47', '', 1, 2, -2970000, -2982000, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_members`
--

CREATE TABLE `tbl_members` (
  `id_members` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `members_type` varchar(100) NOT NULL,
  `members_start_date` date DEFAULT NULL,
  `members_end_date` date DEFAULT NULL,
  `members_status` varchar(20) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` date NOT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `edited_date` date DEFAULT NULL,
  `flg_api` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_members`
--

INSERT INTO `tbl_members` (`id_members`, `id_user`, `full_name`, `email`, `phone_number`, `members_type`, `members_start_date`, `members_end_date`, `members_status`, `created_by`, `created_date`, `edited_by`, `edited_date`, `flg_api`) VALUES
(8, 12, 'Axel', 'coba@gmail.com', '081268920028', 'Website', '2019-05-05', '2021-08-31', 'Activated', 'axel', '2019-05-05', 'superadmin', '2020-07-24', 0),
(23, 38, 'hami', 'demo@gmail.com', '082119054545', 'Seller Free', '2020-10-13', '2021-01-13', 'Activated', 'superadmin', '2020-10-13', 'superadmin', '2020-10-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merk`
--

CREATE TABLE `tbl_merk` (
  `id_merk` int(11) NOT NULL,
  `nama_merk` varchar(200) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_merk`
--

INSERT INTO `tbl_merk` (`id_merk`, `nama_merk`, `id_member`) VALUES
(1, 'Kimia Farma Edit', 8),
(3, 'Unilever', 8),
(4, 'Hufa', 8),
(6, 'PT. Actavis Indonesia', 8),
(7, 'PT. Aditama', 8),
(8, 'PT. Afifarma', 8),
(9, 'PT. Amarox Pharma Global', 8),
(10, 'PT. Armoxindo Farma', 8),
(11, 'PT. Arto Pharma Indonesia', 8),
(12, 'PT. Astrazeneca Indonesia', 8),
(13, 'PT. Aventis Pharma', 8),
(14, 'PT B Braun Pharmaceutical Indonesia', 8),
(15, 'PT. Balatif ', 8),
(16, 'PT. Bayer Indonesia', 8),
(17, 'PT. Beiersdorf Indonesia', 8),
(18, 'PT. Berkat Sentral Abadi Farma ', 8),
(19, 'PT. Berlico Mulia Farma', 8),
(20, 'PT. Bernofarm', 8),
(21, 'PT. Beta Pharmacon', 8),
(22, 'PT. Lloyd Pharma Indonesia', 8),
(23, 'PT. Bintang Toedjoe (Tujuh) ', 8),
(24, 'PT. Bio Kusuma', 8),
(25, ' PT. Biofarma (Persero)', 8),
(26, 'PT. Biolife Medilab', 8),
(27, 'PT. Boehringer Ingelheim Indonesia', 8),
(28, 'PT. Bromo Pharmaceutical', 8),
(29, 'PT. Bufa Aneka', 8),
(30, 'PT. Candra Nusantara Jaya', 8),
(31, 'PT. Caprifarmindo Laboratories ', 8),
(32, 'PT. Catur Dakwah Crane Farmasi', 8),
(33, 'PT. Cendo', 8),
(34, 'PT. Ciubros Farma', 8),
(35, 'PT. Combiphar', 8),
(36, 'PT. Coronet Crown', 8),
(37, 'PT. Corsa Industries ', 8),
(38, 'PT. Daewoong Infion', 8),
(39, 'PT. Dankos Farma', 8),
(40, 'PT. Darya-Varia Laboratoria Tbk', 8),
(41, 'PT. Degepharm', 8),
(42, 'PT. Dexa Medica', 8),
(43, 'PT. Dion Farma Abadi', 8),
(44, 'PT. Dipa Pharmalab Intersains ', 8),
(45, 'PT. Djojonegoro C-1000', 8),
(46, 'PT. Durafarma Jaya', 8),
(47, 'PT. Duta Kaisar Pharmacy', 8),
(48, 'PT. Eisai Indonesia', 8),
(49, 'PT. Emjebe Pharma', 8),
(50, 'PT. Erlangga Edi Laboratories (Erela)', 8),
(51, 'PT. Erlimpex', 8),
(52, 'PT. Errita Pharma', 8),
(53, 'PT. Etercon Pharma', 8),
(54, 'PT. Ethica Industri Farmasi (Ethica)', 8),
(55, 'PT. Fanita Estetika', 8),
(56, 'PT. Ferron Par Pharmaceuticals', 8),
(57, 'PT. Finusolprima Farma Internasional', 8),
(58, 'PT. First Medipharma', 8),
(59, 'PT. Fonko International Pharmaceuticals', 8),
(60, 'PT. Fresenius Kabi Combiphar', 8),
(61, 'PT. Futamed Pharmaceuticals', 8),
(62, 'PT. Galenium Pharmasia Laboratories', 8),
(63, 'PT. Genero Pharmaceuticals ', 8),
(64, 'PT. Glaxo Wellcome Indonesia', 8),
(65, 'PT. Global Multi Pharmalab', 8),
(66, 'PT. Gracia Pharmindo', 8),
(67, 'PT. Graha Farma', 8),
(68, 'PT. Gratia Husada Farma', 8),
(69, 'PT. Guardian Pharmatama', 8),
(70, 'PT. Harbat Farma', 8),
(71, 'PT. Harsen Laboratories', 8),
(72, 'PT. Henson Farma', 8),
(73, 'PT. Hexpharm Jaya Laboratories ', 8),
(74, 'PT. Hisamitsu Pharma Indonesia', 8),
(75, 'PT. Holi Pharma', 8),
(76, 'PT. Ifars Pharmaceutical Laboratories J', 8),
(77, 'PT. Ikapharmindo Putramas', 8),
(78, 'PT. Imedco Djaja', 8),
(79, 'PT. Imfarmind Farmasi Industri ', 8),
(80, 'PT. Immortal Pharmaceutical ', 8),
(81, 'PT. Indo Abadi Sari Makmur', 8),
(82, 'PT. Indofarma (Persero) Tbk', 8),
(83, 'PT. Infion', 8),
(84, 'PT. Inna Pharmaceutical Industry', 8),
(85, 'PT. Integrated Healthcare Indonesia ', 8),
(86, 'PT. Interbat', 8),
(87, 'PT. Intijaya Meta Ratna Pharmindo', 8),
(88, 'PT. Ipha Laboratories', 8),
(89, 'PT. Irawan Djaja Agung', 8),
(90, 'PT. Kalbe Farma Tbk.', 8),
(91, 'PT Kalbio Global Medika', 8),
(92, 'PT. Kimia Farma', 8),
(93, 'PT. Kino Indonesia', 8),
(94, 'PT. Konimex', 8),
(95, 'PT. Lapi Laboratories', 8),
(96, 'PT. L\'Essential', 8),
(97, 'PT. Lucas Djaja', 8),
(98, 'PT. Mahakam Beta Farma', 8),
(99, 'PT. Marin Liza Farmasi', 8),
(100, 'PT. Meccaya', 8),
(101, 'PT. Medicinal Cosmetic Industries Indonesia (Mecosin Indonesia)', 8),
(102, 'PT. Medifarma Laboratories', 8),
(103, 'PT. Medikon Prima Laboratories', 8),
(104, 'PT. Mega Esa Farma', 8),
(105, 'PT. Meiji Indonesia', 8),
(106, 'PT. Meprofarm', 8),
(107, 'PT. Merck Tbk.', 8),
(108, 'PT. Merck Sharp Dohme Pharma Tbk', 8),
(109, 'PT. Mersifarma Tirmaku Mercusana', 8),
(110, 'PT. Metiska Farma', 8),
(111, 'PT. Midix Graha Farma', 8),
(112, 'PT. Molex Ayus', 8),
(113, 'PT. Mudita Karuna', 8),
(114, 'PT. Menarini Indira Laboratories', 8),
(115, 'PT. Mulia Farma Suci', 8),
(116, 'PT. Mutiara Mukti Farma ', 8),
(117, 'PT. Natura Laboratoria Prima', 8),
(118, 'PT. Nellco Indopharma', 8),
(119, 'PT. Nicholas Laboratories Indonesia ', 8),
(120, 'PT. Nova Chemie Utama ', 8),
(121, 'PT. Novapharin', 8),
(122, 'PT. Novartis Indonesia', 8),
(123, 'PT. Novell Pharmaceutical Laboratories', 8),
(124, 'PT. Nufarindo', 8),
(125, 'PT. Nulab Pharmaceutical', 8),
(126, 'PT. Nusantara Beta Farma', 8),
(127, 'PT. Oryza Pharma Indonesia ', 8),
(128, 'PT. Otsuka Indonesia', 8),
(129, 'PT. Otto Pharmaceutical Industries', 8),
(130, 'PT. Pertiwi Agung', 8),
(131, 'PT. Perusahaan Dagang dan Industrie Itrasal (Itrasal)', 8),
(132, 'PT. Pfizer Indonesia', 8),
(133, 'PT. Phapros Tbk', 8),
(134, 'PT. Pharma Health Care ', 8),
(135, 'PT. Pharma Laboratories', 8),
(136, 'PT. Pharos Indonesia', 8),
(137, 'PT. Phyto Kemo Agung Farma', 8),
(138, 'PT. Pim Pharmaceuticals', 8),
(139, 'PT. Pratapa Nirmala', 8),
(140, 'PT. Presto Medical House', 8),
(141, 'PT. Prima Medika Laboratories', 8),
(142, 'PT. Promedrahardjo Farmasi Indonesia', 8),
(143, 'PT. Puspa Pharma', 8),
(144, 'PT. Pyridam Farma Tbk', 8),
(145, 'PT. Rama Emerald Multi Sukses ', 8),
(146, 'PT. Rohto Laboratories Indonesia', 8),
(147, 'PT. Roi Surya Prima Farma', 8),
(148, 'PT. Saka Farma Laboratories ', 8),
(149, 'PT. Samator Pharmaceutical', 8),
(150, 'PT. Samco Farma', 8),
(151, 'PT. Samie Sahari', 8),
(152, 'PT. Sampharindo Perdana', 8),
(153, 'PT. Sanbe Farma', 8),
(154, 'PT. Sandai Farma', 8),
(155, 'PT. Sandoz Indonesia', 8),
(156, 'PT. Sano Gratia Farma', 8),
(157, 'PT. Sari Enesis ', 8),
(158, 'PT. Sejahtera Lestari Farma', 8),
(159, 'PT. Simex Pharmaceutical Indonesia', 8),
(160, 'PT. Smithkline Beecham Pharmaceutical', 8),
(161, 'PT. Soho Industri Pharmasi', 8),
(162, 'PT. Solas Langgeng Sejahtera', 8),
(163, 'PT. Sterling Products Indonesia', 8),
(164, 'PT. Sukses Abadi Farmindo', 8),
(165, 'PT. Sunthi Sepuri ', 8),
(166, 'PT. Supra Ferbindo Farma', 8),
(167, 'PT. Surya Dermato Medica Laboratories', 8),
(168, 'PT. Sydna Farma ', 8),
(169, 'PT. Taisho Pharnaceutical Indonesia ', 8),
(170, 'PT. Takeda Indonesia', 8),
(171, 'PT. Tanabe Indonesia', 8),
(172, 'PT. Tempo Scan Pacific Tbk', 8),
(173, 'PT. Trifa Raya Laboratories ', 8),
(174, 'PT. Triman', 8),
(175, 'PT. Triman', 8),
(176, 'PT. Tropica Mas Pharmaceutical', 8),
(177, 'PT. Tunggal Idaman Abdi', 8),
(178, 'PT. Ultra Sakti', 8),
(179, ' PT. United Farmatic Indonesia', 8),
(180, 'PT. Universal Pharmaceutical Industries', 8),
(181, 'PT. Varia Sekata Pharmaceutical Laboratories', 8),
(182, 'PT. Varia Sekata Pharmaceutical Laboratories', 8),
(183, 'PT. Vitabiotics Healthcare', 8),
(184, 'PT. Widatra Bhakti', 8),
(185, 'PT. Yahi Utama', 8),
(186, 'PT. Yarindo', 8),
(187, 'PT. Yekatria Farma', 8),
(188, 'PT. YSP Industries Indonesia', 8),
(189, 'PT. Zenith Pharmaceutical', 8),
(190, 'PT. Abbot Indonesia', 8),
(191, 'PT. HOE Pharma', 8),
(203, 'PT. LKPI', 23);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mobile_user`
--

CREATE TABLE `tbl_mobile_user` (
  `id_mobile` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `no_telp` varchar(200) DEFAULT NULL,
  `no_ktp` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `gol_darah` varchar(3) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `api_key` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mobile_user`
--

INSERT INTO `tbl_mobile_user` (`id_mobile`, `nama`, `no_telp`, `no_ktp`, `email`, `alamat`, `umur`, `gol_darah`, `tgl_lahir`, `jenis_kelamin`, `username`, `password`, `api_key`) VALUES
(1, 'Axel Manuella', '081268920028', '1241515251351311351', 'axel.kefas@gmail.com', 'Jalan Kaliurang Yogyakarta', 24, 'O', '1995-03-20', 'Pria', 'axelmanuella', '1ec893debac163c5621320dff673f5bb', 'd41ec1dc6bc4fbe9881c819ad0405eea'),
(3, 'Budi Susanto', '0857123124122', '8750931039010918092', 'budi@gmail.com', 'Jalan Ringroad Utara Yogyakarta', 25, 'O', '1994-11-21', 'Pria', 'budisusanto', 'a6dc9a0b9642bc161b0459c536eeaf54', 'dd096e0a79d24d8237beb730e9eaadee'),
(4, 'Budi Susanto', '0857123124122', '8750931039010918092', 'budi1@gmail.com', 'Jalan Ringroad Utara Yogyakarta', 25, 'AB', '1994-11-21', 'Pria', 'budisusanto1', 'a6dc9a0b9642bc161b0459c536eeaf54', '6b4908609eaea5ed045af3ab53c1f70a'),
(5, 'jarot subroto', '085216437997', '1234567890987654', 'jarot@gmail.com', 'jalan simalakanma', 23, 'O', '2002-04-09', 'Pria', 'jarot', '7c6a180b36896a0a8c02787eeafb0e4c', '262d2fcbd00950ca4cac794be15b747b'),
(6, 'Kefas', '0765264875', '098946372546498', 'kefas@gmail.com', 'sleman', 22, 'O', '0000-00-00', 'Pria', 'kefas', '268a2ed6a82c355c30a0884e81d38199', 'f3095584b2fbb5633c1b46dd36c5d048'),
(7, 'hami gusman', '082251248773', '123545698889', 'mycelesta@gmail.com', 'Jl. veteran no 17 rt.01/rw.02 Banjarnegara\n', 38, 'O', '0000-00-00', 'Pria', 'apotek 21', '0ceced7ac1538f35b97592bfc167782d', 'a0919ea2c2f2318798dff605e17b1841'),
(8, 'vonny dwi irawan', '081392020030', '123456789789', 'vonnydwiirawan@gmail.com', 'jl sengkan gang sadewa nomor 20 G', 20, 'B', '0000-00-00', 'Wanita', 'vonnydwi', '926dd707e36aa89e79a505c3035419a1', 'a9f24628a2e6b582b05f2d1c3ff9dda5'),
(9, 'vonny', '081392020030', '3317252316457814', 'vonnydwi@gmail.com', 'jl sengkan gang sadewa nomor 20G', 24, 'O', '1996-02-27', 'Wanita', 'vonnydwi27', 'bdb4f8bf504521bc79e8c262d8d80f14', '29e73b7774ee3a82e653d442f831517f'),
(10, 'ailsa vinindya gupita', '082251248773', '0088552233', 'ailsagupita@gmail.com', 'Jl. veteran no 17 rt.01/Rw.05 krandegan banjarnegara jateng', 11, 'O', '1997-04-07', 'Wanita', 'Gupita', '99cff27620aa81376d2d56e65cd49b2e', ''),
(11, 'dafisioso', '082251248773', '0000885263', 'mycelesta@mail.com', 'semarang ', 25, 'O', '2002-04-10', 'Pria', 'dafisioso', 'bd4013a9e50407578ac4ba5a711b4b1b', 'd8ab0567f72e8ef26bb20a88b4c21464'),
(12, 'hamka', '08114666829', '7324032911880003', 'achmad_hamka@yahoo.com', 'luwu timur', 32, 'B', '1988-11-29', 'Pria', 'hamkafarma', '3caed9136dc171a47650b58ea564a42b', '841e2a2ce5b18e8c140a160b4ead99bb');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mutasi_saldo`
--

CREATE TABLE `tbl_mutasi_saldo` (
  `id_mutasi_saldo` int(11) NOT NULL,
  `no_transaksi` varchar(50) NOT NULL,
  `id_pengirim` int(11) NOT NULL,
  `jumlah_mutasi` double NOT NULL,
  `id_penerima` int(11) NOT NULL,
  `tanggal_mutasi` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_neraca`
--

CREATE TABLE `tbl_neraca` (
  `id_neraca` int(11) NOT NULL,
  `id_akun_akuntansi` int(11) NOT NULL,
  `saldo` double NOT NULL,
  `tanggal` date NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_neraca`
--

INSERT INTO `tbl_neraca` (`id_neraca`, `id_akun_akuntansi`, `saldo`, `tanggal`, `id_member`) VALUES
(2661, 9, 10000000, '2020-08-31', 8),
(2662, 10, -2740000, '2020-08-31', 8),
(2663, 11, 120600, '2020-08-31', 8),
(2664, 12, 0, '2020-08-31', 8),
(2665, 13, 0, '2020-08-31', 8),
(2666, 14, 0, '2020-08-31', 8),
(2667, 15, 0, '2020-08-31', 8),
(2668, 16, 0, '2020-08-31', 8),
(2669, 17, 2400000, '2020-08-31', 8),
(2670, 18, 0, '2020-08-31', 8),
(2671, 19, 240000, '2020-08-31', 8),
(2672, 20, 0, '2020-08-31', 8),
(2673, 21, 0, '2020-08-31', 8),
(2674, 22, 0, '2020-08-31', 8),
(2675, 23, 0, '2020-08-31', 8),
(2676, 24, 0, '2020-08-31', 8),
(2677, 25, 0, '2020-08-31', 8),
(2678, 26, 0, '2020-08-31', 8),
(2679, 27, 0, '2020-08-31', 8),
(2680, 28, 0, '2020-08-31', 8),
(2681, 29, 0, '2020-08-31', 8),
(2682, 30, 0, '2020-08-31', 8),
(2683, 31, 0, '2020-08-31', 8),
(2684, 32, 0, '2020-08-31', 8),
(2685, 33, 10963.636363636, '2020-08-31', 8),
(2686, 34, 0, '2020-08-31', 8),
(2687, 35, 0, '2020-08-31', 8),
(2688, 36, 10000000, '2020-08-31', 8),
(2689, 37, 0, '2020-08-31', 8),
(2690, 38, 0, '2020-08-31', 8),
(2691, 39, 0, '2020-08-31', 8),
(2692, 40, 0, '2020-08-31', 8),
(2693, 41, 0, '2020-08-31', 8),
(2694, 43, 0, '2020-08-31', 8),
(2695, 44, 10000, '2020-08-31', 8),
(2696, 45, 0, '2020-08-31', 8),
(2697, 46, 0, '2020-08-31', 8),
(2698, 47, 0, '2020-08-31', 8),
(2699, 48, 0, '2020-08-31', 8),
(2700, 49, 0, '2020-08-31', 8),
(2701, 50, 0, '2020-08-31', 8),
(2702, 51, 0, '2020-08-31', 8),
(2703, 52, 0, '2020-08-31', 8),
(2704, 53, 0, '2020-08-31', 8),
(2705, 54, 0, '2020-08-31', 8),
(2706, 55, 0, '2020-08-31', 8),
(2707, 56, 0, '2020-08-31', 8),
(2708, 57, 0, '2020-08-31', 8),
(2709, 58, 0, '2020-08-31', 8),
(2710, 59, 0, '2020-08-31', 8),
(2711, 60, 0, '2020-08-31', 8),
(2712, 61, 0, '2020-08-31', 8),
(2713, 62, 0, '2020-08-31', 8),
(2714, 63, 0, '2020-08-31', 8),
(2715, 64, 0, '2020-08-31', 8),
(2716, 65, 0, '2020-08-31', 8),
(2717, 66, 0, '2020-08-31', 8),
(2718, 67, 0, '2020-08-31', 8),
(2719, 68, 0, '2020-08-31', 8),
(2720, 69, 0, '2020-08-31', 8),
(2721, 70, 0, '2020-08-31', 8),
(2722, 71, 0, '2020-08-31', 8),
(2723, 72, 0, '2020-08-31', 8),
(2724, 73, 0, '2020-08-31', 8),
(2725, 74, 0, '2020-08-31', 8),
(2726, 75, 0, '2020-08-31', 8),
(2727, 76, 100000, '2020-08-31', 8),
(2728, 77, 0, '2020-08-31', 8),
(2729, 78, 0, '2020-08-31', 8),
(2730, 79, 0, '2020-08-31', 8),
(2731, 81, 0, '2020-08-31', 8),
(2732, 82, 0, '2020-08-31', 8),
(2733, 83, 0, '2020-08-31', 8),
(2734, 84, 0, '2020-08-31', 8),
(2735, 85, 1000, '2020-08-31', 8),
(2736, 86, 0, '2020-08-31', 8),
(2737, 9, 10000000, '2020-09-01', 8),
(2738, 10, -2740000, '2020-09-01', 8),
(2739, 11, 120600, '2020-09-01', 8),
(2740, 12, 0, '2020-09-01', 8),
(2741, 13, 0, '2020-09-01', 8),
(2742, 14, 0, '2020-09-01', 8),
(2743, 15, 0, '2020-09-01', 8),
(2744, 16, 0, '2020-09-01', 8),
(2745, 17, 2400000, '2020-09-01', 8),
(2746, 18, 0, '2020-09-01', 8),
(2747, 19, 240000, '2020-09-01', 8),
(2748, 20, 0, '2020-09-01', 8),
(2749, 21, 0, '2020-09-01', 8),
(2750, 22, 0, '2020-09-01', 8),
(2751, 23, 0, '2020-09-01', 8),
(2752, 24, 0, '2020-09-01', 8),
(2753, 25, 0, '2020-09-01', 8),
(2754, 26, 0, '2020-09-01', 8),
(2755, 27, 0, '2020-09-01', 8),
(2756, 28, 0, '2020-09-01', 8),
(2757, 29, 0, '2020-09-01', 8),
(2758, 30, 0, '2020-09-01', 8),
(2759, 31, 0, '2020-09-01', 8),
(2760, 32, 0, '2020-09-01', 8),
(2761, 33, 10963.636363636, '2020-09-01', 8),
(2762, 34, 0, '2020-09-01', 8),
(2763, 35, 0, '2020-09-01', 8),
(2764, 36, 10000000, '2020-09-01', 8),
(2765, 37, 0, '2020-09-01', 8),
(2766, 38, 0, '2020-09-01', 8),
(2767, 39, 0, '2020-09-01', 8),
(2768, 40, 0, '2020-09-01', 8),
(2769, 41, 0, '2020-09-01', 8),
(2770, 43, 0, '2020-09-01', 8),
(2771, 44, 10000, '2020-09-01', 8),
(2772, 45, 0, '2020-09-01', 8),
(2773, 46, 0, '2020-09-01', 8),
(2774, 47, 0, '2020-09-01', 8),
(2775, 48, 0, '2020-09-01', 8),
(2776, 49, 0, '2020-09-01', 8),
(2777, 50, 0, '2020-09-01', 8),
(2778, 51, 0, '2020-09-01', 8),
(2779, 52, 0, '2020-09-01', 8),
(2780, 53, 0, '2020-09-01', 8),
(2781, 54, 0, '2020-09-01', 8),
(2782, 55, 0, '2020-09-01', 8),
(2783, 56, 0, '2020-09-01', 8),
(2784, 57, 0, '2020-09-01', 8),
(2785, 58, 0, '2020-09-01', 8),
(2786, 59, 0, '2020-09-01', 8),
(2787, 60, 0, '2020-09-01', 8),
(2788, 61, 0, '2020-09-01', 8),
(2789, 62, 0, '2020-09-01', 8),
(2790, 63, 0, '2020-09-01', 8),
(2791, 64, 0, '2020-09-01', 8),
(2792, 65, 0, '2020-09-01', 8),
(2793, 66, 0, '2020-09-01', 8),
(2794, 67, 0, '2020-09-01', 8),
(2795, 68, 0, '2020-09-01', 8),
(2796, 69, 0, '2020-09-01', 8),
(2797, 70, 0, '2020-09-01', 8),
(2798, 71, 0, '2020-09-01', 8),
(2799, 72, 0, '2020-09-01', 8),
(2800, 73, 0, '2020-09-01', 8),
(2801, 74, 0, '2020-09-01', 8),
(2802, 75, 0, '2020-09-01', 8),
(2803, 76, 100000, '2020-09-01', 8),
(2804, 77, 0, '2020-09-01', 8),
(2805, 78, 0, '2020-09-01', 8),
(2806, 79, 0, '2020-09-01', 8),
(2807, 81, 0, '2020-09-01', 8),
(2808, 82, 0, '2020-09-01', 8),
(2809, 83, 0, '2020-09-01', 8),
(2810, 84, 0, '2020-09-01', 8),
(2811, 85, 1000, '2020-09-01', 8),
(2812, 86, 0, '2020-09-01', 8),
(2813, 9, 10000000, '2020-09-02', 8),
(2814, 10, -4740000, '2020-09-02', 8),
(2815, 11, 160020, '2020-09-02', 8),
(2816, 12, 0, '2020-09-02', 8),
(2817, 13, 0, '2020-09-02', 8),
(2818, 14, 0, '2020-09-02', 8),
(2819, 15, 0, '2020-09-02', 8),
(2820, 16, 0, '2020-09-02', 8),
(2821, 17, -2500000, '2020-09-02', 8),
(2822, 18, 0, '2020-09-02', 8),
(2823, 19, -250000, '2020-09-02', 8),
(2824, 20, 0, '2020-09-02', 8),
(2825, 21, 0, '2020-09-02', 8),
(2826, 22, 0, '2020-09-02', 8),
(2827, 23, 0, '2020-09-02', 8),
(2828, 24, 0, '2020-09-02', 8),
(2829, 25, 0, '2020-09-02', 8),
(2830, 26, 0, '2020-09-02', 8),
(2831, 27, 0, '2020-09-02', 8),
(2832, 28, 0, '2020-09-02', 8),
(2833, 29, 3490000, '2020-09-02', 8),
(2834, 30, 0, '2020-09-02', 8),
(2835, 31, 0, '2020-09-02', 8),
(2836, 32, 0, '2020-09-02', 8),
(2837, 33, 14547.2727272724, '2020-09-02', 8),
(2838, 34, 0, '2020-09-02', 8),
(2839, 35, 0, '2020-09-02', 8),
(2840, 36, 10000000, '2020-09-02', 8),
(2841, 37, 0, '2020-09-02', 8),
(2842, 38, 0, '2020-09-02', 8),
(2843, 39, 0, '2020-09-02', 8),
(2844, 40, 0, '2020-09-02', 8),
(2845, 41, 0, '2020-09-02', 8),
(2846, 43, 0, '2020-09-02', 8),
(2847, 44, 10000, '2020-09-02', 8),
(2848, 45, 0, '2020-09-02', 8),
(2849, 46, 0, '2020-09-02', 8),
(2850, 47, 0, '2020-09-02', 8),
(2851, 48, 0, '2020-09-02', 8),
(2852, 49, 0, '2020-09-02', 8),
(2853, 50, 0, '2020-09-02', 8),
(2854, 51, 0, '2020-09-02', 8),
(2855, 52, 0, '2020-09-02', 8),
(2856, 53, 0, '2020-09-02', 8),
(2857, 54, 0, '2020-09-02', 8),
(2858, 55, 0, '2020-09-02', 8),
(2859, 56, 0, '2020-09-02', 8),
(2860, 57, 0, '2020-09-02', 8),
(2861, 58, 0, '2020-09-02', 8),
(2862, 59, 0, '2020-09-02', 8),
(2863, 60, 0, '2020-09-02', 8),
(2864, 61, 0, '2020-09-02', 8),
(2865, 62, 0, '2020-09-02', 8),
(2866, 63, 0, '2020-09-02', 8),
(2867, 64, 0, '2020-09-02', 8),
(2868, 65, 0, '2020-09-02', 8),
(2869, 66, 0, '2020-09-02', 8),
(2870, 67, 0, '2020-09-02', 8),
(2871, 68, 0, '2020-09-02', 8),
(2872, 69, 0, '2020-09-02', 8),
(2873, 70, 0, '2020-09-02', 8),
(2874, 71, 0, '2020-09-02', 8),
(2875, 72, 0, '2020-09-02', 8),
(2876, 73, 0, '2020-09-02', 8),
(2877, 74, 0, '2020-09-02', 8),
(2878, 75, 0, '2020-09-02', 8),
(2879, 76, 0, '2020-09-02', 8),
(2880, 77, 0, '2020-09-02', 8),
(2881, 78, 0, '2020-09-02', 8),
(2882, 79, 0, '2020-09-02', 8),
(2883, 81, 0, '2020-09-02', 8),
(2884, 82, 0, '2020-09-02', 8),
(2885, 83, 0, '2020-09-02', 8),
(2886, 84, 0, '2020-09-02', 8),
(2887, 85, 1000, '2020-09-02', 8),
(2888, 86, 0, '2020-09-02', 8),
(2889, 9, 10000000, '2020-09-03', 8),
(2890, 10, -4740000, '2020-09-03', 8),
(2891, 11, 398220, '2020-09-03', 8),
(2892, 12, 0, '2020-09-03', 8),
(2893, 13, 0, '2020-09-03', 8),
(2894, 14, 0, '2020-09-03', 8),
(2895, 15, 0, '2020-09-03', 8),
(2896, 16, 0, '2020-09-03', 8),
(2897, 17, -3970000, '2020-09-03', 8),
(2898, 18, 0, '2020-09-03', 8),
(2899, 19, -397000, '2020-09-03', 8),
(2900, 20, 0, '2020-09-03', 8),
(2901, 21, 0, '2020-09-03', 8),
(2902, 22, 0, '2020-09-03', 8),
(2903, 23, 0, '2020-09-03', 8),
(2904, 24, 0, '2020-09-03', 8),
(2905, 25, 0, '2020-09-03', 8),
(2906, 26, 0, '2020-09-03', 8),
(2907, 27, 0, '2020-09-03', 8),
(2908, 28, 0, '2020-09-03', 8),
(2909, 29, 1090000, '2020-09-03', 8),
(2910, 30, 0, '2020-09-03', 8),
(2911, 31, 0, '2020-09-03', 8),
(2912, 32, 0, '2020-09-03', 8),
(2913, 33, 36201.818181817405, '2020-09-03', 8),
(2914, 34, 0, '2020-09-03', 8),
(2915, 35, 0, '2020-09-03', 8),
(2916, 36, 10000000, '2020-09-03', 8),
(2917, 37, 0, '2020-09-03', 8),
(2918, 38, 0, '2020-09-03', 8),
(2919, 39, 0, '2020-09-03', 8),
(2920, 40, 0, '2020-09-03', 8),
(2921, 41, 0, '2020-09-03', 8),
(2922, 43, 0, '2020-09-03', 8),
(2923, 44, 20000, '2020-09-03', 8),
(2924, 45, 0, '2020-09-03', 8),
(2925, 46, 0, '2020-09-03', 8),
(2926, 47, 0, '2020-09-03', 8),
(2927, 48, 0, '2020-09-03', 8),
(2928, 49, 0, '2020-09-03', 8),
(2929, 50, 0, '2020-09-03', 8),
(2930, 51, 0, '2020-09-03', 8),
(2931, 52, 0, '2020-09-03', 8),
(2932, 53, 0, '2020-09-03', 8),
(2933, 54, 0, '2020-09-03', 8),
(2934, 55, 0, '2020-09-03', 8),
(2935, 56, 0, '2020-09-03', 8),
(2936, 57, 0, '2020-09-03', 8),
(2937, 58, 0, '2020-09-03', 8),
(2938, 59, 0, '2020-09-03', 8),
(2939, 60, 0, '2020-09-03', 8),
(2940, 61, 0, '2020-09-03', 8),
(2941, 62, 0, '2020-09-03', 8),
(2942, 63, 0, '2020-09-03', 8),
(2943, 64, 0, '2020-09-03', 8),
(2944, 65, 0, '2020-09-03', 8),
(2945, 66, 0, '2020-09-03', 8),
(2946, 67, 0, '2020-09-03', 8),
(2947, 68, 0, '2020-09-03', 8),
(2948, 69, 0, '2020-09-03', 8),
(2949, 70, 0, '2020-09-03', 8),
(2950, 71, 0, '2020-09-03', 8),
(2951, 72, 0, '2020-09-03', 8),
(2952, 73, 0, '2020-09-03', 8),
(2953, 74, 0, '2020-09-03', 8),
(2954, 75, 0, '2020-09-03', 8),
(2955, 76, 0, '2020-09-03', 8),
(2956, 77, 0, '2020-09-03', 8),
(2957, 78, 0, '2020-09-03', 8),
(2958, 79, 0, '2020-09-03', 8),
(2959, 81, 0, '2020-09-03', 8),
(2960, 82, 0, '2020-09-03', 8),
(2961, 83, 0, '2020-09-03', 8),
(2962, 84, 0, '2020-09-03', 8),
(2963, 85, 2000, '2020-09-03', 8),
(2964, 86, 0, '2020-09-03', 8),
(2965, 9, 10000000, '2020-09-04', 8),
(2966, 10, -5973000, '2020-09-04', 8),
(2967, 11, 853880, '2020-09-04', 8),
(2968, 12, 0, '2020-09-04', 8),
(2969, 13, 0, '2020-09-04', 8),
(2970, 14, 0, '2020-09-04', 8),
(2971, 15, 0, '2020-09-04', 8),
(2972, 16, 0, '2020-09-04', 8),
(2973, 17, -2960000, '2020-09-04', 8),
(2974, 18, 0, '2020-09-04', 8),
(2975, 19, -296000, '2020-09-04', 8),
(2976, 20, 0, '2020-09-04', 8),
(2977, 21, 0, '2020-09-04', 8),
(2978, 22, 0, '2020-09-04', 8),
(2979, 23, 0, '2020-09-04', 8),
(2980, 24, 0, '2020-09-04', 8),
(2981, 25, 0, '2020-09-04', 8),
(2982, 26, 0, '2020-09-04', 8),
(2983, 27, 0, '2020-09-04', 8),
(2984, 28, 0, '2020-09-04', 8),
(2985, 29, 1090000, '2020-09-04', 8),
(2986, 30, 0, '2020-09-04', 8),
(2987, 31, 0, '2020-09-04', 8),
(2988, 32, 0, '2020-09-04', 8),
(2989, 33, 63321.45454545331, '2020-09-04', 8),
(2990, 34, 0, '2020-09-04', 8),
(2991, 35, 0, '2020-09-04', 8),
(2992, 36, 10000000, '2020-09-04', 8),
(2993, 37, 0, '2020-09-04', 8),
(2994, 38, 0, '2020-09-04', 8),
(2995, 39, 0, '2020-09-04', 8),
(2996, 40, -143040, '2020-09-04', 8),
(2997, 41, 0, '2020-09-04', 8),
(2998, 43, 0, '2020-09-04', 8),
(2999, 44, 30000, '2020-09-04', 8),
(3000, 45, 0, '2020-09-04', 8),
(3001, 46, 0, '2020-09-04', 8),
(3002, 47, 0, '2020-09-04', 8),
(3003, 48, 0, '2020-09-04', 8),
(3004, 49, 0, '2020-09-04', 8),
(3005, 50, 0, '2020-09-04', 8),
(3006, 51, 0, '2020-09-04', 8),
(3007, 52, 0, '2020-09-04', 8),
(3008, 53, 0, '2020-09-04', 8),
(3009, 54, 0, '2020-09-04', 8),
(3010, 55, 0, '2020-09-04', 8),
(3011, 56, 0, '2020-09-04', 8),
(3012, 57, 0, '2020-09-04', 8),
(3013, 58, 0, '2020-09-04', 8),
(3014, 59, 0, '2020-09-04', 8),
(3015, 60, 0, '2020-09-04', 8),
(3016, 61, 0, '2020-09-04', 8),
(3017, 62, 0, '2020-09-04', 8),
(3018, 63, 0, '2020-09-04', 8),
(3019, 64, 0, '2020-09-04', 8),
(3020, 65, 0, '2020-09-04', 8),
(3021, 66, 0, '2020-09-04', 8),
(3022, 67, 0, '2020-09-04', 8),
(3023, 68, 0, '2020-09-04', 8),
(3024, 69, 0, '2020-09-04', 8),
(3025, 70, 0, '2020-09-04', 8),
(3026, 71, 0, '2020-09-04', 8),
(3027, 72, 0, '2020-09-04', 8),
(3028, 73, 0, '2020-09-04', 8),
(3029, 74, 0, '2020-09-04', 8),
(3030, 75, 0, '2020-09-04', 8),
(3031, 76, 100000, '2020-09-04', 8),
(3032, 77, 0, '2020-09-04', 8),
(3033, 78, 0, '2020-09-04', 8),
(3034, 79, 0, '2020-09-04', 8),
(3035, 81, 0, '2020-09-04', 8),
(3036, 82, 0, '2020-09-04', 8),
(3037, 83, 0, '2020-09-04', 8),
(3038, 84, 0, '2020-09-04', 8),
(3039, 85, 3500, '2020-09-04', 8),
(3040, 86, 0, '2020-09-04', 8),
(3041, 9, 10000000, '2020-09-05', 8),
(3042, 10, -5973000, '2020-09-05', 8),
(3043, 11, 853880, '2020-09-05', 8),
(3044, 12, 0, '2020-09-05', 8),
(3045, 13, 0, '2020-09-05', 8),
(3046, 14, 0, '2020-09-05', 8),
(3047, 15, 0, '2020-09-05', 8),
(3048, 16, 0, '2020-09-05', 8),
(3049, 17, -2960000, '2020-09-05', 8),
(3050, 18, 0, '2020-09-05', 8),
(3051, 19, -296000, '2020-09-05', 8),
(3052, 20, 0, '2020-09-05', 8),
(3053, 21, 0, '2020-09-05', 8),
(3054, 22, 0, '2020-09-05', 8),
(3055, 23, 0, '2020-09-05', 8),
(3056, 24, 0, '2020-09-05', 8),
(3057, 25, 0, '2020-09-05', 8),
(3058, 26, 0, '2020-09-05', 8),
(3059, 27, 0, '2020-09-05', 8),
(3060, 28, 0, '2020-09-05', 8),
(3061, 29, 1090000, '2020-09-05', 8),
(3062, 30, 0, '2020-09-05', 8),
(3063, 31, 0, '2020-09-05', 8),
(3064, 32, 0, '2020-09-05', 8),
(3065, 33, 63321.45454545331, '2020-09-05', 8),
(3066, 34, 0, '2020-09-05', 8),
(3067, 35, 0, '2020-09-05', 8),
(3068, 36, 10000000, '2020-09-05', 8),
(3069, 37, 0, '2020-09-05', 8),
(3070, 38, 0, '2020-09-05', 8),
(3071, 39, 0, '2020-09-05', 8),
(3072, 40, -143040, '2020-09-05', 8),
(3073, 41, 0, '2020-09-05', 8),
(3074, 43, 0, '2020-09-05', 8),
(3075, 44, 30000, '2020-09-05', 8),
(3076, 45, 0, '2020-09-05', 8),
(3077, 46, 0, '2020-09-05', 8),
(3078, 47, 0, '2020-09-05', 8),
(3079, 48, 0, '2020-09-05', 8),
(3080, 49, 0, '2020-09-05', 8),
(3081, 50, 0, '2020-09-05', 8),
(3082, 51, 0, '2020-09-05', 8),
(3083, 52, 0, '2020-09-05', 8),
(3084, 53, 0, '2020-09-05', 8),
(3085, 54, 0, '2020-09-05', 8),
(3086, 55, 0, '2020-09-05', 8),
(3087, 56, 0, '2020-09-05', 8),
(3088, 57, 0, '2020-09-05', 8),
(3089, 58, 0, '2020-09-05', 8),
(3090, 59, 0, '2020-09-05', 8),
(3091, 60, 0, '2020-09-05', 8),
(3092, 61, 0, '2020-09-05', 8),
(3093, 62, 0, '2020-09-05', 8),
(3094, 63, 0, '2020-09-05', 8),
(3095, 64, 0, '2020-09-05', 8),
(3096, 65, 0, '2020-09-05', 8),
(3097, 66, 0, '2020-09-05', 8),
(3098, 67, 0, '2020-09-05', 8),
(3099, 68, 0, '2020-09-05', 8),
(3100, 69, 0, '2020-09-05', 8),
(3101, 70, 0, '2020-09-05', 8),
(3102, 71, 0, '2020-09-05', 8),
(3103, 72, 0, '2020-09-05', 8),
(3104, 73, 0, '2020-09-05', 8),
(3105, 74, 0, '2020-09-05', 8),
(3106, 75, 0, '2020-09-05', 8),
(3107, 76, 100000, '2020-09-05', 8),
(3108, 77, 0, '2020-09-05', 8),
(3109, 78, 0, '2020-09-05', 8),
(3110, 79, 0, '2020-09-05', 8),
(3111, 81, 0, '2020-09-05', 8),
(3112, 82, 0, '2020-09-05', 8),
(3113, 83, 0, '2020-09-05', 8),
(3114, 84, 0, '2020-09-05', 8),
(3115, 85, 3500, '2020-09-05', 8),
(3116, 86, 0, '2020-09-05', 8),
(3117, 9, 10000000, '2020-09-06', 8),
(3118, 10, -5973000, '2020-09-06', 8),
(3119, 11, 853880, '2020-09-06', 8),
(3120, 12, 0, '2020-09-06', 8),
(3121, 13, 0, '2020-09-06', 8),
(3122, 14, 0, '2020-09-06', 8),
(3123, 15, 0, '2020-09-06', 8),
(3124, 16, 0, '2020-09-06', 8),
(3125, 17, -2960000, '2020-09-06', 8),
(3126, 18, 0, '2020-09-06', 8),
(3127, 19, -296000, '2020-09-06', 8),
(3128, 20, 0, '2020-09-06', 8),
(3129, 21, 0, '2020-09-06', 8),
(3130, 22, 0, '2020-09-06', 8),
(3131, 23, 0, '2020-09-06', 8),
(3132, 24, 0, '2020-09-06', 8),
(3133, 25, 0, '2020-09-06', 8),
(3134, 26, 0, '2020-09-06', 8),
(3135, 27, 0, '2020-09-06', 8),
(3136, 28, 0, '2020-09-06', 8),
(3137, 29, 1090000, '2020-09-06', 8),
(3138, 30, 0, '2020-09-06', 8),
(3139, 31, 0, '2020-09-06', 8),
(3140, 32, 0, '2020-09-06', 8),
(3141, 33, 63321.45454545331, '2020-09-06', 8),
(3142, 34, 0, '2020-09-06', 8),
(3143, 35, 0, '2020-09-06', 8),
(3144, 36, 10000000, '2020-09-06', 8),
(3145, 37, 0, '2020-09-06', 8),
(3146, 38, 0, '2020-09-06', 8),
(3147, 39, 0, '2020-09-06', 8),
(3148, 40, -143040, '2020-09-06', 8),
(3149, 41, 0, '2020-09-06', 8),
(3150, 43, 0, '2020-09-06', 8),
(3151, 44, 30000, '2020-09-06', 8),
(3152, 45, 0, '2020-09-06', 8),
(3153, 46, 0, '2020-09-06', 8),
(3154, 47, 0, '2020-09-06', 8),
(3155, 48, 0, '2020-09-06', 8),
(3156, 49, 0, '2020-09-06', 8),
(3157, 50, 0, '2020-09-06', 8),
(3158, 51, 0, '2020-09-06', 8),
(3159, 52, 0, '2020-09-06', 8),
(3160, 53, 0, '2020-09-06', 8),
(3161, 54, 0, '2020-09-06', 8),
(3162, 55, 0, '2020-09-06', 8),
(3163, 56, 0, '2020-09-06', 8),
(3164, 57, 0, '2020-09-06', 8),
(3165, 58, 0, '2020-09-06', 8),
(3166, 59, 0, '2020-09-06', 8),
(3167, 60, 0, '2020-09-06', 8),
(3168, 61, 0, '2020-09-06', 8),
(3169, 62, 0, '2020-09-06', 8),
(3170, 63, 0, '2020-09-06', 8),
(3171, 64, 0, '2020-09-06', 8),
(3172, 65, 0, '2020-09-06', 8),
(3173, 66, 0, '2020-09-06', 8),
(3174, 67, 0, '2020-09-06', 8),
(3175, 68, 0, '2020-09-06', 8),
(3176, 69, 0, '2020-09-06', 8),
(3177, 70, 0, '2020-09-06', 8),
(3178, 71, 0, '2020-09-06', 8),
(3179, 72, 0, '2020-09-06', 8),
(3180, 73, 0, '2020-09-06', 8),
(3181, 74, 0, '2020-09-06', 8),
(3182, 75, 0, '2020-09-06', 8),
(3183, 76, 100000, '2020-09-06', 8),
(3184, 77, 0, '2020-09-06', 8),
(3185, 78, 0, '2020-09-06', 8),
(3186, 79, 0, '2020-09-06', 8),
(3187, 81, 0, '2020-09-06', 8),
(3188, 82, 0, '2020-09-06', 8),
(3189, 83, 0, '2020-09-06', 8),
(3190, 84, 0, '2020-09-06', 8),
(3191, 85, 3500, '2020-09-06', 8),
(3192, 86, 0, '2020-09-06', 8),
(3193, 9, 10000000, '2020-09-07', 8),
(3194, 10, -5973000, '2020-09-07', 8),
(3195, 11, 853880, '2020-09-07', 8),
(3196, 12, 0, '2020-09-07', 8),
(3197, 13, 0, '2020-09-07', 8),
(3198, 14, 0, '2020-09-07', 8),
(3199, 15, 0, '2020-09-07', 8),
(3200, 16, 0, '2020-09-07', 8),
(3201, 17, -2960000, '2020-09-07', 8),
(3202, 18, 0, '2020-09-07', 8),
(3203, 19, -296000, '2020-09-07', 8),
(3204, 20, 0, '2020-09-07', 8),
(3205, 21, 0, '2020-09-07', 8),
(3206, 22, 0, '2020-09-07', 8),
(3207, 23, 0, '2020-09-07', 8),
(3208, 24, 0, '2020-09-07', 8),
(3209, 25, 0, '2020-09-07', 8),
(3210, 26, 0, '2020-09-07', 8),
(3211, 27, 0, '2020-09-07', 8),
(3212, 28, 0, '2020-09-07', 8),
(3213, 29, 1090000, '2020-09-07', 8),
(3214, 30, 0, '2020-09-07', 8),
(3215, 31, 0, '2020-09-07', 8),
(3216, 32, 0, '2020-09-07', 8),
(3217, 33, 63321.45454545331, '2020-09-07', 8),
(3218, 34, 0, '2020-09-07', 8),
(3219, 35, 0, '2020-09-07', 8),
(3220, 36, 10000000, '2020-09-07', 8),
(3221, 37, 0, '2020-09-07', 8),
(3222, 38, 0, '2020-09-07', 8),
(3223, 39, 0, '2020-09-07', 8),
(3224, 40, -143040, '2020-09-07', 8),
(3225, 41, 0, '2020-09-07', 8),
(3226, 43, 0, '2020-09-07', 8),
(3227, 44, 30000, '2020-09-07', 8),
(3228, 45, 0, '2020-09-07', 8),
(3229, 46, 0, '2020-09-07', 8),
(3230, 47, 0, '2020-09-07', 8),
(3231, 48, 0, '2020-09-07', 8),
(3232, 49, 0, '2020-09-07', 8),
(3233, 50, 0, '2020-09-07', 8),
(3234, 51, 0, '2020-09-07', 8),
(3235, 52, 0, '2020-09-07', 8),
(3236, 53, 0, '2020-09-07', 8),
(3237, 54, 0, '2020-09-07', 8),
(3238, 55, 0, '2020-09-07', 8),
(3239, 56, 0, '2020-09-07', 8),
(3240, 57, 0, '2020-09-07', 8),
(3241, 58, 0, '2020-09-07', 8),
(3242, 59, 0, '2020-09-07', 8),
(3243, 60, 0, '2020-09-07', 8),
(3244, 61, 0, '2020-09-07', 8),
(3245, 62, 0, '2020-09-07', 8),
(3246, 63, 0, '2020-09-07', 8),
(3247, 64, 0, '2020-09-07', 8),
(3248, 65, 0, '2020-09-07', 8),
(3249, 66, 0, '2020-09-07', 8),
(3250, 67, 0, '2020-09-07', 8),
(3251, 68, 0, '2020-09-07', 8),
(3252, 69, 0, '2020-09-07', 8),
(3253, 70, 0, '2020-09-07', 8),
(3254, 71, 0, '2020-09-07', 8),
(3255, 72, 0, '2020-09-07', 8),
(3256, 73, 0, '2020-09-07', 8),
(3257, 74, 0, '2020-09-07', 8),
(3258, 75, 0, '2020-09-07', 8),
(3259, 76, 100000, '2020-09-07', 8),
(3260, 77, 0, '2020-09-07', 8),
(3261, 78, 0, '2020-09-07', 8),
(3262, 79, 0, '2020-09-07', 8),
(3263, 81, 0, '2020-09-07', 8),
(3264, 82, 0, '2020-09-07', 8),
(3265, 83, 0, '2020-09-07', 8),
(3266, 84, 0, '2020-09-07', 8),
(3267, 85, 3500, '2020-09-07', 8),
(3268, 86, 0, '2020-09-07', 8),
(3269, 9, 10000000, '2020-09-08', 8),
(3270, 10, -5973000, '2020-09-08', 8),
(3271, 11, 853880, '2020-09-08', 8),
(3272, 12, 0, '2020-09-08', 8),
(3273, 13, 0, '2020-09-08', 8),
(3274, 14, 0, '2020-09-08', 8),
(3275, 15, 0, '2020-09-08', 8),
(3276, 16, 0, '2020-09-08', 8),
(3277, 17, -2960000, '2020-09-08', 8),
(3278, 18, 0, '2020-09-08', 8),
(3279, 19, -296000, '2020-09-08', 8),
(3280, 20, 0, '2020-09-08', 8),
(3281, 21, 0, '2020-09-08', 8),
(3282, 22, 0, '2020-09-08', 8),
(3283, 23, 0, '2020-09-08', 8),
(3284, 24, 0, '2020-09-08', 8),
(3285, 25, 0, '2020-09-08', 8),
(3286, 26, 0, '2020-09-08', 8),
(3287, 27, 0, '2020-09-08', 8),
(3288, 28, 0, '2020-09-08', 8),
(3289, 29, 1090000, '2020-09-08', 8),
(3290, 30, 0, '2020-09-08', 8),
(3291, 31, 0, '2020-09-08', 8),
(3292, 32, 0, '2020-09-08', 8),
(3293, 33, 63321.45454545331, '2020-09-08', 8),
(3294, 34, 0, '2020-09-08', 8),
(3295, 35, 0, '2020-09-08', 8),
(3296, 36, 10000000, '2020-09-08', 8),
(3297, 37, 0, '2020-09-08', 8),
(3298, 38, 0, '2020-09-08', 8),
(3299, 39, 0, '2020-09-08', 8),
(3300, 40, -143040, '2020-09-08', 8),
(3301, 41, 0, '2020-09-08', 8),
(3302, 43, 0, '2020-09-08', 8),
(3303, 44, 30000, '2020-09-08', 8),
(3304, 45, 0, '2020-09-08', 8),
(3305, 46, 0, '2020-09-08', 8),
(3306, 47, 0, '2020-09-08', 8),
(3307, 48, 0, '2020-09-08', 8),
(3308, 49, 0, '2020-09-08', 8),
(3309, 50, 0, '2020-09-08', 8),
(3310, 51, 0, '2020-09-08', 8),
(3311, 52, 0, '2020-09-08', 8),
(3312, 53, 0, '2020-09-08', 8),
(3313, 54, 0, '2020-09-08', 8),
(3314, 55, 0, '2020-09-08', 8),
(3315, 56, 0, '2020-09-08', 8),
(3316, 57, 0, '2020-09-08', 8),
(3317, 58, 0, '2020-09-08', 8),
(3318, 59, 0, '2020-09-08', 8),
(3319, 60, 0, '2020-09-08', 8),
(3320, 61, 0, '2020-09-08', 8),
(3321, 62, 0, '2020-09-08', 8),
(3322, 63, 0, '2020-09-08', 8),
(3323, 64, 0, '2020-09-08', 8),
(3324, 65, 0, '2020-09-08', 8),
(3325, 66, 0, '2020-09-08', 8),
(3326, 67, 0, '2020-09-08', 8),
(3327, 68, 0, '2020-09-08', 8),
(3328, 69, 0, '2020-09-08', 8),
(3329, 70, 0, '2020-09-08', 8),
(3330, 71, 0, '2020-09-08', 8),
(3331, 72, 0, '2020-09-08', 8),
(3332, 73, 0, '2020-09-08', 8),
(3333, 74, 0, '2020-09-08', 8),
(3334, 75, 0, '2020-09-08', 8),
(3335, 76, 100000, '2020-09-08', 8),
(3336, 77, 0, '2020-09-08', 8),
(3337, 78, 0, '2020-09-08', 8),
(3338, 79, 0, '2020-09-08', 8),
(3339, 81, 0, '2020-09-08', 8),
(3340, 82, 0, '2020-09-08', 8),
(3341, 83, 0, '2020-09-08', 8),
(3342, 84, 0, '2020-09-08', 8),
(3343, 85, 3500, '2020-09-08', 8),
(3344, 86, 0, '2020-09-08', 8),
(3345, 9, 10000000, '2020-09-09', 8),
(3346, 10, -5973000, '2020-09-09', 8),
(3347, 11, 853880, '2020-09-09', 8),
(3348, 12, 0, '2020-09-09', 8),
(3349, 13, 0, '2020-09-09', 8),
(3350, 14, 0, '2020-09-09', 8),
(3351, 15, 0, '2020-09-09', 8),
(3352, 16, 0, '2020-09-09', 8),
(3353, 17, -2960000, '2020-09-09', 8),
(3354, 18, 0, '2020-09-09', 8),
(3355, 19, -296000, '2020-09-09', 8),
(3356, 20, 0, '2020-09-09', 8),
(3357, 21, 0, '2020-09-09', 8),
(3358, 22, 0, '2020-09-09', 8),
(3359, 23, 0, '2020-09-09', 8),
(3360, 24, 0, '2020-09-09', 8),
(3361, 25, 0, '2020-09-09', 8),
(3362, 26, 0, '2020-09-09', 8),
(3363, 27, 0, '2020-09-09', 8),
(3364, 28, 0, '2020-09-09', 8),
(3365, 29, 1090000, '2020-09-09', 8),
(3366, 30, 0, '2020-09-09', 8),
(3367, 31, 0, '2020-09-09', 8),
(3368, 32, 0, '2020-09-09', 8),
(3369, 33, 63321.45454545331, '2020-09-09', 8),
(3370, 34, 0, '2020-09-09', 8),
(3371, 35, 0, '2020-09-09', 8),
(3372, 36, 10000000, '2020-09-09', 8),
(3373, 37, 0, '2020-09-09', 8),
(3374, 38, 0, '2020-09-09', 8),
(3375, 39, 0, '2020-09-09', 8),
(3376, 40, -143040, '2020-09-09', 8),
(3377, 41, 0, '2020-09-09', 8),
(3378, 43, 0, '2020-09-09', 8),
(3379, 44, 30000, '2020-09-09', 8),
(3380, 45, 0, '2020-09-09', 8),
(3381, 46, 0, '2020-09-09', 8),
(3382, 47, 0, '2020-09-09', 8),
(3383, 48, 0, '2020-09-09', 8),
(3384, 49, 0, '2020-09-09', 8),
(3385, 50, 0, '2020-09-09', 8),
(3386, 51, 0, '2020-09-09', 8),
(3387, 52, 0, '2020-09-09', 8),
(3388, 53, 0, '2020-09-09', 8),
(3389, 54, 0, '2020-09-09', 8),
(3390, 55, 0, '2020-09-09', 8),
(3391, 56, 0, '2020-09-09', 8),
(3392, 57, 0, '2020-09-09', 8),
(3393, 58, 0, '2020-09-09', 8),
(3394, 59, 0, '2020-09-09', 8),
(3395, 60, 0, '2020-09-09', 8),
(3396, 61, 0, '2020-09-09', 8),
(3397, 62, 0, '2020-09-09', 8),
(3398, 63, 0, '2020-09-09', 8),
(3399, 64, 0, '2020-09-09', 8),
(3400, 65, 0, '2020-09-09', 8),
(3401, 66, 0, '2020-09-09', 8),
(3402, 67, 0, '2020-09-09', 8),
(3403, 68, 0, '2020-09-09', 8),
(3404, 69, 0, '2020-09-09', 8),
(3405, 70, 0, '2020-09-09', 8),
(3406, 71, 0, '2020-09-09', 8),
(3407, 72, 0, '2020-09-09', 8),
(3408, 73, 0, '2020-09-09', 8),
(3409, 74, 0, '2020-09-09', 8),
(3410, 75, 0, '2020-09-09', 8),
(3411, 76, 100000, '2020-09-09', 8),
(3412, 77, 0, '2020-09-09', 8),
(3413, 78, 0, '2020-09-09', 8),
(3414, 79, 0, '2020-09-09', 8),
(3415, 81, 0, '2020-09-09', 8),
(3416, 82, 0, '2020-09-09', 8),
(3417, 83, 0, '2020-09-09', 8),
(3418, 84, 0, '2020-09-09', 8),
(3419, 85, 3500, '2020-09-09', 8),
(3420, 86, 0, '2020-09-09', 8),
(3421, 9, 10000000, '2020-09-10', 8),
(3422, 10, -5973000, '2020-09-10', 8),
(3423, 11, 853880, '2020-09-10', 8),
(3424, 12, 0, '2020-09-10', 8),
(3425, 13, 0, '2020-09-10', 8),
(3426, 14, 0, '2020-09-10', 8),
(3427, 15, 0, '2020-09-10', 8),
(3428, 16, 0, '2020-09-10', 8),
(3429, 17, -2960000, '2020-09-10', 8),
(3430, 18, 0, '2020-09-10', 8),
(3431, 19, -296000, '2020-09-10', 8),
(3432, 20, 0, '2020-09-10', 8),
(3433, 21, 0, '2020-09-10', 8),
(3434, 22, 0, '2020-09-10', 8),
(3435, 23, 0, '2020-09-10', 8),
(3436, 24, 0, '2020-09-10', 8),
(3437, 25, 0, '2020-09-10', 8),
(3438, 26, 0, '2020-09-10', 8),
(3439, 27, 0, '2020-09-10', 8),
(3440, 28, 0, '2020-09-10', 8),
(3441, 29, 1090000, '2020-09-10', 8),
(3442, 30, 0, '2020-09-10', 8),
(3443, 31, 0, '2020-09-10', 8),
(3444, 32, 0, '2020-09-10', 8),
(3445, 33, 63321.45454545331, '2020-09-10', 8),
(3446, 34, 0, '2020-09-10', 8),
(3447, 35, 0, '2020-09-10', 8),
(3448, 36, 10000000, '2020-09-10', 8),
(3449, 37, 0, '2020-09-10', 8),
(3450, 38, 0, '2020-09-10', 8),
(3451, 39, 0, '2020-09-10', 8),
(3452, 40, -143040, '2020-09-10', 8),
(3453, 41, 0, '2020-09-10', 8),
(3454, 43, 0, '2020-09-10', 8),
(3455, 44, 30000, '2020-09-10', 8),
(3456, 45, 0, '2020-09-10', 8),
(3457, 46, 0, '2020-09-10', 8),
(3458, 47, 0, '2020-09-10', 8),
(3459, 48, 0, '2020-09-10', 8),
(3460, 49, 0, '2020-09-10', 8),
(3461, 50, 0, '2020-09-10', 8),
(3462, 51, 0, '2020-09-10', 8),
(3463, 52, 0, '2020-09-10', 8),
(3464, 53, 0, '2020-09-10', 8),
(3465, 54, 0, '2020-09-10', 8),
(3466, 55, 0, '2020-09-10', 8),
(3467, 56, 0, '2020-09-10', 8),
(3468, 57, 0, '2020-09-10', 8),
(3469, 58, 0, '2020-09-10', 8),
(3470, 59, 0, '2020-09-10', 8),
(3471, 60, 0, '2020-09-10', 8),
(3472, 61, 0, '2020-09-10', 8),
(3473, 62, 0, '2020-09-10', 8),
(3474, 63, 0, '2020-09-10', 8),
(3475, 64, 0, '2020-09-10', 8),
(3476, 65, 0, '2020-09-10', 8),
(3477, 66, 0, '2020-09-10', 8),
(3478, 67, 0, '2020-09-10', 8),
(3479, 68, 0, '2020-09-10', 8),
(3480, 69, 0, '2020-09-10', 8),
(3481, 70, 0, '2020-09-10', 8),
(3482, 71, 0, '2020-09-10', 8),
(3483, 72, 0, '2020-09-10', 8),
(3484, 73, 0, '2020-09-10', 8),
(3485, 74, 0, '2020-09-10', 8),
(3486, 75, 0, '2020-09-10', 8),
(3487, 76, 100000, '2020-09-10', 8),
(3488, 77, 0, '2020-09-10', 8),
(3489, 78, 0, '2020-09-10', 8),
(3490, 79, 0, '2020-09-10', 8),
(3491, 81, 0, '2020-09-10', 8),
(3492, 82, 0, '2020-09-10', 8),
(3493, 83, 0, '2020-09-10', 8),
(3494, 84, 0, '2020-09-10', 8),
(3495, 85, 3500, '2020-09-10', 8),
(3496, 86, 0, '2020-09-10', 8),
(3497, 9, 10000000, '2020-09-11', 8),
(3498, 10, -5973000, '2020-09-11', 8),
(3499, 11, 853880, '2020-09-11', 8),
(3500, 12, 0, '2020-09-11', 8),
(3501, 13, 0, '2020-09-11', 8),
(3502, 14, 0, '2020-09-11', 8),
(3503, 15, 0, '2020-09-11', 8),
(3504, 16, 0, '2020-09-11', 8),
(3505, 17, -2960000, '2020-09-11', 8),
(3506, 18, 0, '2020-09-11', 8),
(3507, 19, -296000, '2020-09-11', 8),
(3508, 20, 0, '2020-09-11', 8),
(3509, 21, 0, '2020-09-11', 8),
(3510, 22, 0, '2020-09-11', 8),
(3511, 23, 0, '2020-09-11', 8),
(3512, 24, 0, '2020-09-11', 8),
(3513, 25, 0, '2020-09-11', 8),
(3514, 26, 0, '2020-09-11', 8),
(3515, 27, 0, '2020-09-11', 8),
(3516, 28, 0, '2020-09-11', 8),
(3517, 29, 1090000, '2020-09-11', 8),
(3518, 30, 0, '2020-09-11', 8),
(3519, 31, 0, '2020-09-11', 8),
(3520, 32, 0, '2020-09-11', 8),
(3521, 33, 63321.45454545331, '2020-09-11', 8),
(3522, 34, 0, '2020-09-11', 8),
(3523, 35, 0, '2020-09-11', 8),
(3524, 36, 10000000, '2020-09-11', 8),
(3525, 37, 0, '2020-09-11', 8),
(3526, 38, 0, '2020-09-11', 8),
(3527, 39, 0, '2020-09-11', 8),
(3528, 40, -143040, '2020-09-11', 8),
(3529, 41, 0, '2020-09-11', 8),
(3530, 43, 0, '2020-09-11', 8),
(3531, 44, 30000, '2020-09-11', 8),
(3532, 45, 0, '2020-09-11', 8),
(3533, 46, 0, '2020-09-11', 8),
(3534, 47, 0, '2020-09-11', 8),
(3535, 48, 0, '2020-09-11', 8),
(3536, 49, 0, '2020-09-11', 8),
(3537, 50, 0, '2020-09-11', 8),
(3538, 51, 0, '2020-09-11', 8),
(3539, 52, 0, '2020-09-11', 8),
(3540, 53, 0, '2020-09-11', 8),
(3541, 54, 0, '2020-09-11', 8),
(3542, 55, 0, '2020-09-11', 8),
(3543, 56, 0, '2020-09-11', 8),
(3544, 57, 0, '2020-09-11', 8),
(3545, 58, 0, '2020-09-11', 8),
(3546, 59, 0, '2020-09-11', 8),
(3547, 60, 0, '2020-09-11', 8),
(3548, 61, 0, '2020-09-11', 8),
(3549, 62, 0, '2020-09-11', 8),
(3550, 63, 0, '2020-09-11', 8),
(3551, 64, 0, '2020-09-11', 8),
(3552, 65, 0, '2020-09-11', 8),
(3553, 66, 0, '2020-09-11', 8),
(3554, 67, 0, '2020-09-11', 8),
(3555, 68, 0, '2020-09-11', 8),
(3556, 69, 0, '2020-09-11', 8),
(3557, 70, 0, '2020-09-11', 8),
(3558, 71, 0, '2020-09-11', 8),
(3559, 72, 0, '2020-09-11', 8),
(3560, 73, 0, '2020-09-11', 8),
(3561, 74, 0, '2020-09-11', 8),
(3562, 75, 0, '2020-09-11', 8),
(3563, 76, 100000, '2020-09-11', 8),
(3564, 77, 0, '2020-09-11', 8),
(3565, 78, 0, '2020-09-11', 8),
(3566, 79, 0, '2020-09-11', 8),
(3567, 81, 0, '2020-09-11', 8),
(3568, 82, 0, '2020-09-11', 8),
(3569, 83, 0, '2020-09-11', 8),
(3570, 84, 0, '2020-09-11', 8),
(3571, 85, 3500, '2020-09-11', 8),
(3572, 86, 0, '2020-09-11', 8),
(3573, 9, 10000000, '2020-09-12', 8),
(3574, 10, -5973000, '2020-09-12', 8),
(3575, 11, 853880, '2020-09-12', 8),
(3576, 12, 0, '2020-09-12', 8),
(3577, 13, 0, '2020-09-12', 8),
(3578, 14, 0, '2020-09-12', 8),
(3579, 15, 0, '2020-09-12', 8),
(3580, 16, 0, '2020-09-12', 8),
(3581, 17, -2960000, '2020-09-12', 8),
(3582, 18, 0, '2020-09-12', 8),
(3583, 19, -296000, '2020-09-12', 8),
(3584, 20, 0, '2020-09-12', 8),
(3585, 21, 0, '2020-09-12', 8),
(3586, 22, 0, '2020-09-12', 8),
(3587, 23, 0, '2020-09-12', 8),
(3588, 24, 0, '2020-09-12', 8),
(3589, 25, 0, '2020-09-12', 8),
(3590, 26, 0, '2020-09-12', 8),
(3591, 27, 0, '2020-09-12', 8),
(3592, 28, 0, '2020-09-12', 8),
(3593, 29, 1090000, '2020-09-12', 8),
(3594, 30, 0, '2020-09-12', 8),
(3595, 31, 0, '2020-09-12', 8),
(3596, 32, 0, '2020-09-12', 8),
(3597, 33, 63321.45454545331, '2020-09-12', 8),
(3598, 34, 0, '2020-09-12', 8),
(3599, 35, 0, '2020-09-12', 8),
(3600, 36, 10000000, '2020-09-12', 8),
(3601, 37, 0, '2020-09-12', 8),
(3602, 38, 0, '2020-09-12', 8),
(3603, 39, 0, '2020-09-12', 8),
(3604, 40, -143040, '2020-09-12', 8),
(3605, 41, 0, '2020-09-12', 8),
(3606, 43, 0, '2020-09-12', 8),
(3607, 44, 30000, '2020-09-12', 8),
(3608, 45, 0, '2020-09-12', 8),
(3609, 46, 0, '2020-09-12', 8),
(3610, 47, 0, '2020-09-12', 8),
(3611, 48, 0, '2020-09-12', 8),
(3612, 49, 0, '2020-09-12', 8),
(3613, 50, 0, '2020-09-12', 8),
(3614, 51, 0, '2020-09-12', 8),
(3615, 52, 0, '2020-09-12', 8),
(3616, 53, 0, '2020-09-12', 8),
(3617, 54, 0, '2020-09-12', 8),
(3618, 55, 0, '2020-09-12', 8),
(3619, 56, 0, '2020-09-12', 8),
(3620, 57, 0, '2020-09-12', 8),
(3621, 58, 0, '2020-09-12', 8),
(3622, 59, 0, '2020-09-12', 8),
(3623, 60, 0, '2020-09-12', 8),
(3624, 61, 0, '2020-09-12', 8),
(3625, 62, 0, '2020-09-12', 8),
(3626, 63, 0, '2020-09-12', 8),
(3627, 64, 0, '2020-09-12', 8),
(3628, 65, 0, '2020-09-12', 8),
(3629, 66, 0, '2020-09-12', 8),
(3630, 67, 0, '2020-09-12', 8),
(3631, 68, 0, '2020-09-12', 8),
(3632, 69, 0, '2020-09-12', 8),
(3633, 70, 0, '2020-09-12', 8),
(3634, 71, 0, '2020-09-12', 8),
(3635, 72, 0, '2020-09-12', 8),
(3636, 73, 0, '2020-09-12', 8),
(3637, 74, 0, '2020-09-12', 8),
(3638, 75, 0, '2020-09-12', 8),
(3639, 76, 100000, '2020-09-12', 8),
(3640, 77, 0, '2020-09-12', 8),
(3641, 78, 0, '2020-09-12', 8),
(3642, 79, 0, '2020-09-12', 8),
(3643, 81, 0, '2020-09-12', 8),
(3644, 82, 0, '2020-09-12', 8),
(3645, 83, 0, '2020-09-12', 8),
(3646, 84, 0, '2020-09-12', 8),
(3647, 85, 3500, '2020-09-12', 8),
(3648, 86, 0, '2020-09-12', 8),
(3649, 9, 10000000, '2020-09-13', 8),
(3650, 10, -5973000, '2020-09-13', 8),
(3651, 11, 853880, '2020-09-13', 8),
(3652, 12, 0, '2020-09-13', 8),
(3653, 13, 0, '2020-09-13', 8),
(3654, 14, 0, '2020-09-13', 8),
(3655, 15, 0, '2020-09-13', 8),
(3656, 16, 0, '2020-09-13', 8),
(3657, 17, -2960000, '2020-09-13', 8),
(3658, 18, 0, '2020-09-13', 8),
(3659, 19, -296000, '2020-09-13', 8),
(3660, 20, 0, '2020-09-13', 8),
(3661, 21, 0, '2020-09-13', 8),
(3662, 22, 0, '2020-09-13', 8),
(3663, 23, 0, '2020-09-13', 8),
(3664, 24, 0, '2020-09-13', 8),
(3665, 25, 0, '2020-09-13', 8),
(3666, 26, 0, '2020-09-13', 8),
(3667, 27, 0, '2020-09-13', 8),
(3668, 28, 0, '2020-09-13', 8),
(3669, 29, 1090000, '2020-09-13', 8),
(3670, 30, 0, '2020-09-13', 8),
(3671, 31, 0, '2020-09-13', 8),
(3672, 32, 0, '2020-09-13', 8),
(3673, 33, 63321.45454545331, '2020-09-13', 8),
(3674, 34, 0, '2020-09-13', 8),
(3675, 35, 0, '2020-09-13', 8),
(3676, 36, 10000000, '2020-09-13', 8),
(3677, 37, 0, '2020-09-13', 8),
(3678, 38, 0, '2020-09-13', 8),
(3679, 39, 0, '2020-09-13', 8),
(3680, 40, -143040, '2020-09-13', 8),
(3681, 41, 0, '2020-09-13', 8),
(3682, 43, 0, '2020-09-13', 8),
(3683, 44, 30000, '2020-09-13', 8),
(3684, 45, 0, '2020-09-13', 8),
(3685, 46, 0, '2020-09-13', 8),
(3686, 47, 0, '2020-09-13', 8),
(3687, 48, 0, '2020-09-13', 8),
(3688, 49, 0, '2020-09-13', 8),
(3689, 50, 0, '2020-09-13', 8),
(3690, 51, 0, '2020-09-13', 8),
(3691, 52, 0, '2020-09-13', 8),
(3692, 53, 0, '2020-09-13', 8),
(3693, 54, 0, '2020-09-13', 8),
(3694, 55, 0, '2020-09-13', 8),
(3695, 56, 0, '2020-09-13', 8),
(3696, 57, 0, '2020-09-13', 8),
(3697, 58, 0, '2020-09-13', 8),
(3698, 59, 0, '2020-09-13', 8),
(3699, 60, 0, '2020-09-13', 8),
(3700, 61, 0, '2020-09-13', 8),
(3701, 62, 0, '2020-09-13', 8),
(3702, 63, 0, '2020-09-13', 8),
(3703, 64, 0, '2020-09-13', 8),
(3704, 65, 0, '2020-09-13', 8),
(3705, 66, 0, '2020-09-13', 8),
(3706, 67, 0, '2020-09-13', 8),
(3707, 68, 0, '2020-09-13', 8),
(3708, 69, 0, '2020-09-13', 8),
(3709, 70, 0, '2020-09-13', 8),
(3710, 71, 0, '2020-09-13', 8),
(3711, 72, 0, '2020-09-13', 8),
(3712, 73, 0, '2020-09-13', 8),
(3713, 74, 0, '2020-09-13', 8),
(3714, 75, 0, '2020-09-13', 8),
(3715, 76, 100000, '2020-09-13', 8),
(3716, 77, 0, '2020-09-13', 8),
(3717, 78, 0, '2020-09-13', 8),
(3718, 79, 0, '2020-09-13', 8),
(3719, 81, 0, '2020-09-13', 8),
(3720, 82, 0, '2020-09-13', 8),
(3721, 83, 0, '2020-09-13', 8),
(3722, 84, 0, '2020-09-13', 8),
(3723, 85, 3500, '2020-09-13', 8),
(3724, 86, 0, '2020-09-13', 8),
(3725, 9, 10000000, '2020-09-14', 8),
(3726, 10, -5973000, '2020-09-14', 8),
(3727, 11, 853880, '2020-09-14', 8),
(3728, 12, 0, '2020-09-14', 8),
(3729, 13, 0, '2020-09-14', 8),
(3730, 14, 0, '2020-09-14', 8),
(3731, 15, 0, '2020-09-14', 8),
(3732, 16, 0, '2020-09-14', 8),
(3733, 17, -2960000, '2020-09-14', 8),
(3734, 18, 0, '2020-09-14', 8),
(3735, 19, -296000, '2020-09-14', 8),
(3736, 20, 0, '2020-09-14', 8),
(3737, 21, 0, '2020-09-14', 8),
(3738, 22, 0, '2020-09-14', 8),
(3739, 23, 0, '2020-09-14', 8),
(3740, 24, 0, '2020-09-14', 8),
(3741, 25, 0, '2020-09-14', 8),
(3742, 26, 0, '2020-09-14', 8),
(3743, 27, 0, '2020-09-14', 8),
(3744, 28, 0, '2020-09-14', 8),
(3745, 29, 1090000, '2020-09-14', 8),
(3746, 30, 0, '2020-09-14', 8),
(3747, 31, 0, '2020-09-14', 8),
(3748, 32, 0, '2020-09-14', 8),
(3749, 33, 63321.45454545331, '2020-09-14', 8),
(3750, 34, 0, '2020-09-14', 8),
(3751, 35, 0, '2020-09-14', 8),
(3752, 36, 10000000, '2020-09-14', 8),
(3753, 37, 0, '2020-09-14', 8),
(3754, 38, 0, '2020-09-14', 8),
(3755, 39, 0, '2020-09-14', 8),
(3756, 40, -143040, '2020-09-14', 8),
(3757, 41, 0, '2020-09-14', 8),
(3758, 43, 0, '2020-09-14', 8),
(3759, 44, 30000, '2020-09-14', 8),
(3760, 45, 0, '2020-09-14', 8),
(3761, 46, 0, '2020-09-14', 8),
(3762, 47, 0, '2020-09-14', 8),
(3763, 48, 0, '2020-09-14', 8),
(3764, 49, 0, '2020-09-14', 8),
(3765, 50, 0, '2020-09-14', 8),
(3766, 51, 0, '2020-09-14', 8),
(3767, 52, 0, '2020-09-14', 8),
(3768, 53, 0, '2020-09-14', 8),
(3769, 54, 0, '2020-09-14', 8),
(3770, 55, 0, '2020-09-14', 8),
(3771, 56, 0, '2020-09-14', 8),
(3772, 57, 0, '2020-09-14', 8),
(3773, 58, 0, '2020-09-14', 8),
(3774, 59, 0, '2020-09-14', 8),
(3775, 60, 0, '2020-09-14', 8),
(3776, 61, 0, '2020-09-14', 8),
(3777, 62, 0, '2020-09-14', 8),
(3778, 63, 0, '2020-09-14', 8),
(3779, 64, 0, '2020-09-14', 8),
(3780, 65, 0, '2020-09-14', 8),
(3781, 66, 0, '2020-09-14', 8),
(3782, 67, 0, '2020-09-14', 8),
(3783, 68, 0, '2020-09-14', 8),
(3784, 69, 0, '2020-09-14', 8),
(3785, 70, 0, '2020-09-14', 8),
(3786, 71, 0, '2020-09-14', 8),
(3787, 72, 0, '2020-09-14', 8),
(3788, 73, 0, '2020-09-14', 8),
(3789, 74, 0, '2020-09-14', 8),
(3790, 75, 0, '2020-09-14', 8),
(3791, 76, 100000, '2020-09-14', 8),
(3792, 77, 0, '2020-09-14', 8),
(3793, 78, 0, '2020-09-14', 8),
(3794, 79, 0, '2020-09-14', 8),
(3795, 81, 0, '2020-09-14', 8),
(3796, 82, 0, '2020-09-14', 8),
(3797, 83, 0, '2020-09-14', 8),
(3798, 84, 0, '2020-09-14', 8),
(3799, 85, 3500, '2020-09-14', 8),
(3800, 86, 0, '2020-09-14', 8),
(3801, 9, 10000000, '2020-09-15', 8),
(3802, 10, -5973000, '2020-09-15', 8),
(3803, 11, 853880, '2020-09-15', 8),
(3804, 12, 0, '2020-09-15', 8),
(3805, 13, 0, '2020-09-15', 8),
(3806, 14, 0, '2020-09-15', 8),
(3807, 15, 0, '2020-09-15', 8),
(3808, 16, 0, '2020-09-15', 8),
(3809, 17, -2970000, '2020-09-15', 8),
(3810, 18, 0, '2020-09-15', 8),
(3811, 19, -297000, '2020-09-15', 8),
(3812, 20, 0, '2020-09-15', 8),
(3813, 21, 0, '2020-09-15', 8),
(3814, 22, 0, '2020-09-15', 8),
(3815, 23, 0, '2020-09-15', 8),
(3816, 24, 0, '2020-09-15', 8),
(3817, 25, 0, '2020-09-15', 8),
(3818, 26, 0, '2020-09-15', 8),
(3819, 27, 0, '2020-09-15', 8),
(3820, 28, 0, '2020-09-15', 8),
(3821, 29, 1090000, '2020-09-15', 8),
(3822, 30, 0, '2020-09-15', 8),
(3823, 31, 0, '2020-09-15', 8),
(3824, 32, 0, '2020-09-15', 8),
(3825, 33, 63321.45454545331, '2020-09-15', 8),
(3826, 34, 0, '2020-09-15', 8),
(3827, 35, 0, '2020-09-15', 8),
(3828, 36, 10000000, '2020-09-15', 8),
(3829, 37, 0, '2020-09-15', 8),
(3830, 38, 0, '2020-09-15', 8),
(3831, 39, 0, '2020-09-15', 8),
(3832, 40, -143040, '2020-09-15', 8),
(3833, 41, 0, '2020-09-15', 8),
(3834, 43, 0, '2020-09-15', 8),
(3835, 44, 30000, '2020-09-15', 8),
(3836, 45, 0, '2020-09-15', 8),
(3837, 46, 0, '2020-09-15', 8),
(3838, 47, 0, '2020-09-15', 8),
(3839, 48, 0, '2020-09-15', 8),
(3840, 49, 0, '2020-09-15', 8),
(3841, 50, 0, '2020-09-15', 8),
(3842, 51, 0, '2020-09-15', 8),
(3843, 52, 0, '2020-09-15', 8),
(3844, 53, 0, '2020-09-15', 8),
(3845, 54, 0, '2020-09-15', 8),
(3846, 55, 0, '2020-09-15', 8),
(3847, 56, 0, '2020-09-15', 8),
(3848, 57, 0, '2020-09-15', 8),
(3849, 58, 0, '2020-09-15', 8),
(3850, 59, 0, '2020-09-15', 8),
(3851, 60, 0, '2020-09-15', 8),
(3852, 61, 0, '2020-09-15', 8),
(3853, 62, 0, '2020-09-15', 8),
(3854, 63, 0, '2020-09-15', 8),
(3855, 64, 0, '2020-09-15', 8),
(3856, 65, 0, '2020-09-15', 8),
(3857, 66, 0, '2020-09-15', 8),
(3858, 67, 0, '2020-09-15', 8),
(3859, 68, 0, '2020-09-15', 8),
(3860, 69, 0, '2020-09-15', 8),
(3861, 70, 0, '2020-09-15', 8),
(3862, 71, 0, '2020-09-15', 8),
(3863, 72, 0, '2020-09-15', 8),
(3864, 73, 0, '2020-09-15', 8),
(3865, 74, 0, '2020-09-15', 8),
(3866, 75, 0, '2020-09-15', 8),
(3867, 76, 100000, '2020-09-15', 8),
(3868, 77, 0, '2020-09-15', 8),
(3869, 78, 0, '2020-09-15', 8),
(3870, 79, 0, '2020-09-15', 8),
(3871, 81, 0, '2020-09-15', 8),
(3872, 82, 0, '2020-09-15', 8),
(3873, 83, 0, '2020-09-15', 8),
(3874, 84, 0, '2020-09-15', 8),
(3875, 85, 3500, '2020-09-15', 8),
(3876, 86, 0, '2020-09-15', 8),
(3877, 9, 10000000, '2020-09-16', 8),
(3878, 10, -5973000, '2020-09-16', 8),
(3879, 11, 853880, '2020-09-16', 8),
(3880, 12, 0, '2020-09-16', 8),
(3881, 13, 0, '2020-09-16', 8),
(3882, 14, 0, '2020-09-16', 8),
(3883, 15, 0, '2020-09-16', 8),
(3884, 16, 0, '2020-09-16', 8),
(3885, 17, -2970000, '2020-09-16', 8),
(3886, 18, 0, '2020-09-16', 8),
(3887, 19, -297000, '2020-09-16', 8),
(3888, 20, 0, '2020-09-16', 8),
(3889, 21, 0, '2020-09-16', 8),
(3890, 22, 0, '2020-09-16', 8),
(3891, 23, 0, '2020-09-16', 8),
(3892, 24, 0, '2020-09-16', 8),
(3893, 25, 0, '2020-09-16', 8),
(3894, 26, 0, '2020-09-16', 8),
(3895, 27, 0, '2020-09-16', 8),
(3896, 28, 0, '2020-09-16', 8),
(3897, 29, 1090000, '2020-09-16', 8),
(3898, 30, 0, '2020-09-16', 8),
(3899, 31, 0, '2020-09-16', 8),
(3900, 32, 0, '2020-09-16', 8),
(3901, 33, 63321.45454545331, '2020-09-16', 8),
(3902, 34, 0, '2020-09-16', 8),
(3903, 35, 0, '2020-09-16', 8),
(3904, 36, 10000000, '2020-09-16', 8),
(3905, 37, 0, '2020-09-16', 8),
(3906, 38, 0, '2020-09-16', 8),
(3907, 39, 0, '2020-09-16', 8),
(3908, 40, -143040, '2020-09-16', 8),
(3909, 41, 0, '2020-09-16', 8),
(3910, 43, 0, '2020-09-16', 8),
(3911, 44, 30000, '2020-09-16', 8),
(3912, 45, 0, '2020-09-16', 8),
(3913, 46, 0, '2020-09-16', 8),
(3914, 47, 0, '2020-09-16', 8),
(3915, 48, 0, '2020-09-16', 8),
(3916, 49, 0, '2020-09-16', 8),
(3917, 50, 0, '2020-09-16', 8),
(3918, 51, 0, '2020-09-16', 8),
(3919, 52, 0, '2020-09-16', 8),
(3920, 53, 0, '2020-09-16', 8),
(3921, 54, 0, '2020-09-16', 8),
(3922, 55, 0, '2020-09-16', 8),
(3923, 56, 0, '2020-09-16', 8),
(3924, 57, 0, '2020-09-16', 8),
(3925, 58, 0, '2020-09-16', 8),
(3926, 59, 0, '2020-09-16', 8),
(3927, 60, 0, '2020-09-16', 8),
(3928, 61, 0, '2020-09-16', 8),
(3929, 62, 0, '2020-09-16', 8),
(3930, 63, 0, '2020-09-16', 8),
(3931, 64, 0, '2020-09-16', 8),
(3932, 65, 0, '2020-09-16', 8),
(3933, 66, 0, '2020-09-16', 8),
(3934, 67, 0, '2020-09-16', 8),
(3935, 68, 0, '2020-09-16', 8),
(3936, 69, 0, '2020-09-16', 8),
(3937, 70, 0, '2020-09-16', 8),
(3938, 71, 0, '2020-09-16', 8),
(3939, 72, 0, '2020-09-16', 8),
(3940, 73, 0, '2020-09-16', 8),
(3941, 74, 0, '2020-09-16', 8),
(3942, 75, 0, '2020-09-16', 8),
(3943, 76, 100000, '2020-09-16', 8),
(3944, 77, 0, '2020-09-16', 8),
(3945, 78, 0, '2020-09-16', 8),
(3946, 79, 0, '2020-09-16', 8),
(3947, 81, 0, '2020-09-16', 8),
(3948, 82, 0, '2020-09-16', 8),
(3949, 83, 0, '2020-09-16', 8),
(3950, 84, 0, '2020-09-16', 8),
(3951, 85, 3500, '2020-09-16', 8),
(3952, 86, 0, '2020-09-16', 8),
(3953, 9, 10000000, '2020-09-17', 8),
(3954, 10, -5973000, '2020-09-17', 8),
(3955, 11, 853880, '2020-09-17', 8),
(3956, 12, 0, '2020-09-17', 8),
(3957, 13, 0, '2020-09-17', 8),
(3958, 14, 0, '2020-09-17', 8),
(3959, 15, 0, '2020-09-17', 8),
(3960, 16, 0, '2020-09-17', 8),
(3961, 17, -2970000, '2020-09-17', 8),
(3962, 18, 0, '2020-09-17', 8),
(3963, 19, -297000, '2020-09-17', 8),
(3964, 20, 0, '2020-09-17', 8),
(3965, 21, 0, '2020-09-17', 8),
(3966, 22, 0, '2020-09-17', 8),
(3967, 23, 0, '2020-09-17', 8),
(3968, 24, 0, '2020-09-17', 8),
(3969, 25, 0, '2020-09-17', 8),
(3970, 26, 0, '2020-09-17', 8),
(3971, 27, 0, '2020-09-17', 8),
(3972, 28, 0, '2020-09-17', 8),
(3973, 29, 1090000, '2020-09-17', 8),
(3974, 30, 0, '2020-09-17', 8),
(3975, 31, 0, '2020-09-17', 8),
(3976, 32, 0, '2020-09-17', 8),
(3977, 33, 63321.45454545331, '2020-09-17', 8),
(3978, 34, 0, '2020-09-17', 8),
(3979, 35, 0, '2020-09-17', 8),
(3980, 36, 10000000, '2020-09-17', 8),
(3981, 37, 0, '2020-09-17', 8),
(3982, 38, 0, '2020-09-17', 8),
(3983, 39, 0, '2020-09-17', 8),
(3984, 40, -143040, '2020-09-17', 8),
(3985, 41, 0, '2020-09-17', 8),
(3986, 43, 0, '2020-09-17', 8),
(3987, 44, 30000, '2020-09-17', 8),
(3988, 45, 0, '2020-09-17', 8),
(3989, 46, 0, '2020-09-17', 8),
(3990, 47, 0, '2020-09-17', 8),
(3991, 48, 0, '2020-09-17', 8),
(3992, 49, 0, '2020-09-17', 8),
(3993, 50, 0, '2020-09-17', 8),
(3994, 51, 0, '2020-09-17', 8),
(3995, 52, 0, '2020-09-17', 8),
(3996, 53, 0, '2020-09-17', 8),
(3997, 54, 0, '2020-09-17', 8),
(3998, 55, 0, '2020-09-17', 8),
(3999, 56, 0, '2020-09-17', 8),
(4000, 57, 0, '2020-09-17', 8),
(4001, 58, 0, '2020-09-17', 8),
(4002, 59, 0, '2020-09-17', 8),
(4003, 60, 0, '2020-09-17', 8),
(4004, 61, 0, '2020-09-17', 8),
(4005, 62, 0, '2020-09-17', 8),
(4006, 63, 0, '2020-09-17', 8),
(4007, 64, 0, '2020-09-17', 8),
(4008, 65, 0, '2020-09-17', 8),
(4009, 66, 0, '2020-09-17', 8),
(4010, 67, 0, '2020-09-17', 8),
(4011, 68, 0, '2020-09-17', 8),
(4012, 69, 0, '2020-09-17', 8),
(4013, 70, 0, '2020-09-17', 8),
(4014, 71, 0, '2020-09-17', 8),
(4015, 72, 0, '2020-09-17', 8),
(4016, 73, 0, '2020-09-17', 8),
(4017, 74, 0, '2020-09-17', 8),
(4018, 75, 0, '2020-09-17', 8),
(4019, 76, 100000, '2020-09-17', 8),
(4020, 77, 0, '2020-09-17', 8),
(4021, 78, 0, '2020-09-17', 8),
(4022, 79, 0, '2020-09-17', 8),
(4023, 81, 0, '2020-09-17', 8),
(4024, 82, 0, '2020-09-17', 8),
(4025, 83, 0, '2020-09-17', 8),
(4026, 84, 0, '2020-09-17', 8),
(4027, 85, 3500, '2020-09-17', 8),
(4028, 86, 0, '2020-09-17', 8),
(4029, 9, 10000000, '2020-09-18', 8),
(4030, 10, -5973000, '2020-09-18', 8),
(4031, 11, 853880, '2020-09-18', 8),
(4032, 12, 0, '2020-09-18', 8),
(4033, 13, 0, '2020-09-18', 8),
(4034, 14, 0, '2020-09-18', 8),
(4035, 15, 0, '2020-09-18', 8),
(4036, 16, 0, '2020-09-18', 8),
(4037, 17, -2970000, '2020-09-18', 8),
(4038, 18, 0, '2020-09-18', 8),
(4039, 19, -297000, '2020-09-18', 8),
(4040, 20, 0, '2020-09-18', 8),
(4041, 21, 0, '2020-09-18', 8),
(4042, 22, 0, '2020-09-18', 8),
(4043, 23, 0, '2020-09-18', 8),
(4044, 24, 0, '2020-09-18', 8),
(4045, 25, 0, '2020-09-18', 8),
(4046, 26, 0, '2020-09-18', 8),
(4047, 27, 0, '2020-09-18', 8),
(4048, 28, 0, '2020-09-18', 8),
(4049, 29, 1090000, '2020-09-18', 8),
(4050, 30, 0, '2020-09-18', 8),
(4051, 31, 0, '2020-09-18', 8),
(4052, 32, 0, '2020-09-18', 8),
(4053, 33, 63321.45454545331, '2020-09-18', 8),
(4054, 34, 0, '2020-09-18', 8),
(4055, 35, 0, '2020-09-18', 8),
(4056, 36, 10000000, '2020-09-18', 8),
(4057, 37, 0, '2020-09-18', 8),
(4058, 38, 0, '2020-09-18', 8),
(4059, 39, 0, '2020-09-18', 8),
(4060, 40, -143040, '2020-09-18', 8),
(4061, 41, 0, '2020-09-18', 8),
(4062, 43, 0, '2020-09-18', 8),
(4063, 44, 30000, '2020-09-18', 8),
(4064, 45, 0, '2020-09-18', 8),
(4065, 46, 0, '2020-09-18', 8),
(4066, 47, 0, '2020-09-18', 8),
(4067, 48, 0, '2020-09-18', 8),
(4068, 49, 0, '2020-09-18', 8),
(4069, 50, 0, '2020-09-18', 8),
(4070, 51, 0, '2020-09-18', 8),
(4071, 52, 0, '2020-09-18', 8),
(4072, 53, 0, '2020-09-18', 8),
(4073, 54, 0, '2020-09-18', 8),
(4074, 55, 0, '2020-09-18', 8),
(4075, 56, 0, '2020-09-18', 8),
(4076, 57, 0, '2020-09-18', 8),
(4077, 58, 0, '2020-09-18', 8),
(4078, 59, 0, '2020-09-18', 8),
(4079, 60, 0, '2020-09-18', 8),
(4080, 61, 0, '2020-09-18', 8),
(4081, 62, 0, '2020-09-18', 8),
(4082, 63, 0, '2020-09-18', 8),
(4083, 64, 0, '2020-09-18', 8),
(4084, 65, 0, '2020-09-18', 8),
(4085, 66, 0, '2020-09-18', 8),
(4086, 67, 0, '2020-09-18', 8),
(4087, 68, 0, '2020-09-18', 8),
(4088, 69, 0, '2020-09-18', 8),
(4089, 70, 0, '2020-09-18', 8),
(4090, 71, 0, '2020-09-18', 8),
(4091, 72, 0, '2020-09-18', 8),
(4092, 73, 0, '2020-09-18', 8),
(4093, 74, 0, '2020-09-18', 8),
(4094, 75, 0, '2020-09-18', 8),
(4095, 76, 100000, '2020-09-18', 8),
(4096, 77, 0, '2020-09-18', 8),
(4097, 78, 0, '2020-09-18', 8),
(4098, 79, 0, '2020-09-18', 8),
(4099, 81, 0, '2020-09-18', 8),
(4100, 82, 0, '2020-09-18', 8),
(4101, 83, 0, '2020-09-18', 8),
(4102, 84, 0, '2020-09-18', 8),
(4103, 85, 3500, '2020-09-18', 8),
(4104, 86, 0, '2020-09-18', 8),
(4105, 9, 10000000, '2020-09-19', 8),
(4106, 10, -5973000, '2020-09-19', 8),
(4107, 11, 853880, '2020-09-19', 8),
(4108, 12, 0, '2020-09-19', 8),
(4109, 13, 0, '2020-09-19', 8),
(4110, 14, 0, '2020-09-19', 8),
(4111, 15, 0, '2020-09-19', 8),
(4112, 16, 0, '2020-09-19', 8),
(4113, 17, -2970000, '2020-09-19', 8),
(4114, 18, 0, '2020-09-19', 8),
(4115, 19, -297000, '2020-09-19', 8),
(4116, 20, 0, '2020-09-19', 8),
(4117, 21, 0, '2020-09-19', 8),
(4118, 22, 0, '2020-09-19', 8),
(4119, 23, 0, '2020-09-19', 8),
(4120, 24, 0, '2020-09-19', 8),
(4121, 25, 0, '2020-09-19', 8),
(4122, 26, 0, '2020-09-19', 8),
(4123, 27, 0, '2020-09-19', 8),
(4124, 28, 0, '2020-09-19', 8),
(4125, 29, 1090000, '2020-09-19', 8),
(4126, 30, 0, '2020-09-19', 8),
(4127, 31, 0, '2020-09-19', 8),
(4128, 32, 0, '2020-09-19', 8),
(4129, 33, 63321.45454545331, '2020-09-19', 8),
(4130, 34, 0, '2020-09-19', 8),
(4131, 35, 0, '2020-09-19', 8),
(4132, 36, 10000000, '2020-09-19', 8),
(4133, 37, 0, '2020-09-19', 8),
(4134, 38, 0, '2020-09-19', 8),
(4135, 39, 0, '2020-09-19', 8),
(4136, 40, -143040, '2020-09-19', 8),
(4137, 41, 0, '2020-09-19', 8),
(4138, 43, 0, '2020-09-19', 8),
(4139, 44, 30000, '2020-09-19', 8),
(4140, 45, 0, '2020-09-19', 8),
(4141, 46, 0, '2020-09-19', 8),
(4142, 47, 0, '2020-09-19', 8),
(4143, 48, 0, '2020-09-19', 8),
(4144, 49, 0, '2020-09-19', 8),
(4145, 50, 0, '2020-09-19', 8),
(4146, 51, 0, '2020-09-19', 8),
(4147, 52, 0, '2020-09-19', 8),
(4148, 53, 0, '2020-09-19', 8),
(4149, 54, 0, '2020-09-19', 8),
(4150, 55, 0, '2020-09-19', 8),
(4151, 56, 0, '2020-09-19', 8),
(4152, 57, 0, '2020-09-19', 8),
(4153, 58, 0, '2020-09-19', 8),
(4154, 59, 0, '2020-09-19', 8),
(4155, 60, 0, '2020-09-19', 8),
(4156, 61, 0, '2020-09-19', 8),
(4157, 62, 0, '2020-09-19', 8),
(4158, 63, 0, '2020-09-19', 8),
(4159, 64, 0, '2020-09-19', 8),
(4160, 65, 0, '2020-09-19', 8),
(4161, 66, 0, '2020-09-19', 8),
(4162, 67, 0, '2020-09-19', 8),
(4163, 68, 0, '2020-09-19', 8),
(4164, 69, 0, '2020-09-19', 8),
(4165, 70, 0, '2020-09-19', 8),
(4166, 71, 0, '2020-09-19', 8),
(4167, 72, 0, '2020-09-19', 8),
(4168, 73, 0, '2020-09-19', 8),
(4169, 74, 0, '2020-09-19', 8),
(4170, 75, 0, '2020-09-19', 8),
(4171, 76, 100000, '2020-09-19', 8),
(4172, 77, 0, '2020-09-19', 8),
(4173, 78, 0, '2020-09-19', 8),
(4174, 79, 0, '2020-09-19', 8),
(4175, 81, 0, '2020-09-19', 8),
(4176, 82, 0, '2020-09-19', 8),
(4177, 83, 0, '2020-09-19', 8),
(4178, 84, 0, '2020-09-19', 8),
(4179, 85, 3500, '2020-09-19', 8),
(4180, 86, 0, '2020-09-19', 8),
(4181, 9, 10000000, '2020-09-20', 8),
(4182, 10, -5973000, '2020-09-20', 8),
(4183, 11, 853880, '2020-09-20', 8),
(4184, 12, 0, '2020-09-20', 8),
(4185, 13, 0, '2020-09-20', 8),
(4186, 14, 0, '2020-09-20', 8),
(4187, 15, 0, '2020-09-20', 8),
(4188, 16, 0, '2020-09-20', 8),
(4189, 17, -2970000, '2020-09-20', 8),
(4190, 18, 0, '2020-09-20', 8),
(4191, 19, -297000, '2020-09-20', 8),
(4192, 20, 0, '2020-09-20', 8),
(4193, 21, 0, '2020-09-20', 8),
(4194, 22, 0, '2020-09-20', 8),
(4195, 23, 0, '2020-09-20', 8),
(4196, 24, 0, '2020-09-20', 8),
(4197, 25, 0, '2020-09-20', 8),
(4198, 26, 0, '2020-09-20', 8),
(4199, 27, 0, '2020-09-20', 8),
(4200, 28, 0, '2020-09-20', 8),
(4201, 29, 1090000, '2020-09-20', 8),
(4202, 30, 0, '2020-09-20', 8),
(4203, 31, 0, '2020-09-20', 8),
(4204, 32, 0, '2020-09-20', 8),
(4205, 33, 63321.45454545331, '2020-09-20', 8),
(4206, 34, 0, '2020-09-20', 8),
(4207, 35, 0, '2020-09-20', 8),
(4208, 36, 10000000, '2020-09-20', 8),
(4209, 37, 0, '2020-09-20', 8),
(4210, 38, 0, '2020-09-20', 8),
(4211, 39, 0, '2020-09-20', 8),
(4212, 40, -143040, '2020-09-20', 8),
(4213, 41, 0, '2020-09-20', 8),
(4214, 43, 0, '2020-09-20', 8),
(4215, 44, 30000, '2020-09-20', 8),
(4216, 45, 0, '2020-09-20', 8),
(4217, 46, 0, '2020-09-20', 8),
(4218, 47, 0, '2020-09-20', 8),
(4219, 48, 0, '2020-09-20', 8),
(4220, 49, 0, '2020-09-20', 8),
(4221, 50, 0, '2020-09-20', 8),
(4222, 51, 0, '2020-09-20', 8),
(4223, 52, 0, '2020-09-20', 8),
(4224, 53, 0, '2020-09-20', 8),
(4225, 54, 0, '2020-09-20', 8),
(4226, 55, 0, '2020-09-20', 8),
(4227, 56, 0, '2020-09-20', 8),
(4228, 57, 0, '2020-09-20', 8),
(4229, 58, 0, '2020-09-20', 8),
(4230, 59, 0, '2020-09-20', 8),
(4231, 60, 0, '2020-09-20', 8),
(4232, 61, 0, '2020-09-20', 8),
(4233, 62, 0, '2020-09-20', 8),
(4234, 63, 0, '2020-09-20', 8),
(4235, 64, 0, '2020-09-20', 8),
(4236, 65, 0, '2020-09-20', 8),
(4237, 66, 0, '2020-09-20', 8),
(4238, 67, 0, '2020-09-20', 8),
(4239, 68, 0, '2020-09-20', 8),
(4240, 69, 0, '2020-09-20', 8),
(4241, 70, 0, '2020-09-20', 8),
(4242, 71, 0, '2020-09-20', 8),
(4243, 72, 0, '2020-09-20', 8),
(4244, 73, 0, '2020-09-20', 8),
(4245, 74, 0, '2020-09-20', 8),
(4246, 75, 0, '2020-09-20', 8),
(4247, 76, 100000, '2020-09-20', 8),
(4248, 77, 0, '2020-09-20', 8),
(4249, 78, 0, '2020-09-20', 8),
(4250, 79, 0, '2020-09-20', 8),
(4251, 81, 0, '2020-09-20', 8),
(4252, 82, 0, '2020-09-20', 8),
(4253, 83, 0, '2020-09-20', 8),
(4254, 84, 0, '2020-09-20', 8),
(4255, 85, 3500, '2020-09-20', 8),
(4256, 86, 0, '2020-09-20', 8),
(4257, 9, 10000000, '2020-09-21', 8),
(4258, 10, -5973000, '2020-09-21', 8),
(4259, 11, 853880, '2020-09-21', 8),
(4260, 12, 0, '2020-09-21', 8),
(4261, 13, 0, '2020-09-21', 8),
(4262, 14, 0, '2020-09-21', 8),
(4263, 15, 0, '2020-09-21', 8),
(4264, 16, 0, '2020-09-21', 8),
(4265, 17, -2970000, '2020-09-21', 8),
(4266, 18, 0, '2020-09-21', 8),
(4267, 19, -297000, '2020-09-21', 8),
(4268, 20, 0, '2020-09-21', 8),
(4269, 21, 0, '2020-09-21', 8);
INSERT INTO `tbl_neraca` (`id_neraca`, `id_akun_akuntansi`, `saldo`, `tanggal`, `id_member`) VALUES
(4270, 22, 0, '2020-09-21', 8),
(4271, 23, 0, '2020-09-21', 8),
(4272, 24, 0, '2020-09-21', 8),
(4273, 25, 0, '2020-09-21', 8),
(4274, 26, 0, '2020-09-21', 8),
(4275, 27, 0, '2020-09-21', 8),
(4276, 28, 0, '2020-09-21', 8),
(4277, 29, 1090000, '2020-09-21', 8),
(4278, 30, 0, '2020-09-21', 8),
(4279, 31, 0, '2020-09-21', 8),
(4280, 32, 0, '2020-09-21', 8),
(4281, 33, 63321.45454545331, '2020-09-21', 8),
(4282, 34, 0, '2020-09-21', 8),
(4283, 35, 0, '2020-09-21', 8),
(4284, 36, 10000000, '2020-09-21', 8),
(4285, 37, 0, '2020-09-21', 8),
(4286, 38, 0, '2020-09-21', 8),
(4287, 39, 0, '2020-09-21', 8),
(4288, 40, -143040, '2020-09-21', 8),
(4289, 41, 0, '2020-09-21', 8),
(4290, 43, 0, '2020-09-21', 8),
(4291, 44, 30000, '2020-09-21', 8),
(4292, 45, 0, '2020-09-21', 8),
(4293, 46, 0, '2020-09-21', 8),
(4294, 47, 0, '2020-09-21', 8),
(4295, 48, 0, '2020-09-21', 8),
(4296, 49, 0, '2020-09-21', 8),
(4297, 50, 0, '2020-09-21', 8),
(4298, 51, 0, '2020-09-21', 8),
(4299, 52, 0, '2020-09-21', 8),
(4300, 53, 0, '2020-09-21', 8),
(4301, 54, 0, '2020-09-21', 8),
(4302, 55, 0, '2020-09-21', 8),
(4303, 56, 0, '2020-09-21', 8),
(4304, 57, 0, '2020-09-21', 8),
(4305, 58, 0, '2020-09-21', 8),
(4306, 59, 0, '2020-09-21', 8),
(4307, 60, 0, '2020-09-21', 8),
(4308, 61, 0, '2020-09-21', 8),
(4309, 62, 0, '2020-09-21', 8),
(4310, 63, 0, '2020-09-21', 8),
(4311, 64, 0, '2020-09-21', 8),
(4312, 65, 0, '2020-09-21', 8),
(4313, 66, 0, '2020-09-21', 8),
(4314, 67, 0, '2020-09-21', 8),
(4315, 68, 0, '2020-09-21', 8),
(4316, 69, 0, '2020-09-21', 8),
(4317, 70, 0, '2020-09-21', 8),
(4318, 71, 0, '2020-09-21', 8),
(4319, 72, 0, '2020-09-21', 8),
(4320, 73, 0, '2020-09-21', 8),
(4321, 74, 0, '2020-09-21', 8),
(4322, 75, 0, '2020-09-21', 8),
(4323, 76, 100000, '2020-09-21', 8),
(4324, 77, 0, '2020-09-21', 8),
(4325, 78, 0, '2020-09-21', 8),
(4326, 79, 0, '2020-09-21', 8),
(4327, 81, 0, '2020-09-21', 8),
(4328, 82, 0, '2020-09-21', 8),
(4329, 83, 0, '2020-09-21', 8),
(4330, 84, 0, '2020-09-21', 8),
(4331, 85, 3500, '2020-09-21', 8),
(4332, 86, 0, '2020-09-21', 8),
(4333, 9, 10000000, '2020-09-22', 8),
(4334, 10, -5973000, '2020-09-22', 8),
(4335, 11, 853880, '2020-09-22', 8),
(4336, 12, 0, '2020-09-22', 8),
(4337, 13, 0, '2020-09-22', 8),
(4338, 14, 0, '2020-09-22', 8),
(4339, 15, 0, '2020-09-22', 8),
(4340, 16, 0, '2020-09-22', 8),
(4341, 17, -2970000, '2020-09-22', 8),
(4342, 18, 0, '2020-09-22', 8),
(4343, 19, -297000, '2020-09-22', 8),
(4344, 20, 0, '2020-09-22', 8),
(4345, 21, 0, '2020-09-22', 8),
(4346, 22, 0, '2020-09-22', 8),
(4347, 23, 0, '2020-09-22', 8),
(4348, 24, 0, '2020-09-22', 8),
(4349, 25, 0, '2020-09-22', 8),
(4350, 26, 0, '2020-09-22', 8),
(4351, 27, 0, '2020-09-22', 8),
(4352, 28, 0, '2020-09-22', 8),
(4353, 29, 1090000, '2020-09-22', 8),
(4354, 30, 0, '2020-09-22', 8),
(4355, 31, 0, '2020-09-22', 8),
(4356, 32, 0, '2020-09-22', 8),
(4357, 33, 63321.45454545331, '2020-09-22', 8),
(4358, 34, 0, '2020-09-22', 8),
(4359, 35, 0, '2020-09-22', 8),
(4360, 36, 10000000, '2020-09-22', 8),
(4361, 37, 0, '2020-09-22', 8),
(4362, 38, 0, '2020-09-22', 8),
(4363, 39, 0, '2020-09-22', 8),
(4364, 40, -143040, '2020-09-22', 8),
(4365, 41, 0, '2020-09-22', 8),
(4366, 43, 0, '2020-09-22', 8),
(4367, 44, 30000, '2020-09-22', 8),
(4368, 45, 0, '2020-09-22', 8),
(4369, 46, 0, '2020-09-22', 8),
(4370, 47, 0, '2020-09-22', 8),
(4371, 48, 0, '2020-09-22', 8),
(4372, 49, 0, '2020-09-22', 8),
(4373, 50, 0, '2020-09-22', 8),
(4374, 51, 0, '2020-09-22', 8),
(4375, 52, 0, '2020-09-22', 8),
(4376, 53, 0, '2020-09-22', 8),
(4377, 54, 0, '2020-09-22', 8),
(4378, 55, 0, '2020-09-22', 8),
(4379, 56, 0, '2020-09-22', 8),
(4380, 57, 0, '2020-09-22', 8),
(4381, 58, 0, '2020-09-22', 8),
(4382, 59, 0, '2020-09-22', 8),
(4383, 60, 0, '2020-09-22', 8),
(4384, 61, 0, '2020-09-22', 8),
(4385, 62, 0, '2020-09-22', 8),
(4386, 63, 0, '2020-09-22', 8),
(4387, 64, 0, '2020-09-22', 8),
(4388, 65, 0, '2020-09-22', 8),
(4389, 66, 0, '2020-09-22', 8),
(4390, 67, 0, '2020-09-22', 8),
(4391, 68, 0, '2020-09-22', 8),
(4392, 69, 0, '2020-09-22', 8),
(4393, 70, 0, '2020-09-22', 8),
(4394, 71, 0, '2020-09-22', 8),
(4395, 72, 0, '2020-09-22', 8),
(4396, 73, 0, '2020-09-22', 8),
(4397, 74, 0, '2020-09-22', 8),
(4398, 75, 0, '2020-09-22', 8),
(4399, 76, 100000, '2020-09-22', 8),
(4400, 77, 0, '2020-09-22', 8),
(4401, 78, 0, '2020-09-22', 8),
(4402, 79, 0, '2020-09-22', 8),
(4403, 81, 0, '2020-09-22', 8),
(4404, 82, 0, '2020-09-22', 8),
(4405, 83, 0, '2020-09-22', 8),
(4406, 84, 0, '2020-09-22', 8),
(4407, 85, 3500, '2020-09-22', 8),
(4408, 86, 0, '2020-09-22', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_obat`
--

CREATE TABLE `tbl_obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(200) NOT NULL,
  `kode_obat` varchar(200) DEFAULT NULL,
  `barcode_obat` varchar(200) DEFAULT NULL,
  `id_jenis_obat` int(11) DEFAULT NULL,
  `id_golongan` int(11) DEFAULT NULL,
  `id_sub_golongan` int(11) DEFAULT NULL,
  `id_merk` int(11) DEFAULT NULL,
  `tipe` varchar(20) DEFAULT NULL,
  `indikasi` varchar(200) DEFAULT NULL,
  `post_image` varchar(200) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `komposisi` varchar(255) DEFAULT NULL,
  `dosis` varchar(200) DEFAULT NULL,
  `stok_total` int(11) DEFAULT NULL,
  `stok_min` int(11) DEFAULT NULL,
  `stok_max` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `edited_date` datetime DEFAULT NULL,
  `platform` varchar(100) DEFAULT NULL,
  `gambar` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_obat`
--

INSERT INTO `tbl_obat` (`id_obat`, `nama_obat`, `kode_obat`, `barcode_obat`, `id_jenis_obat`, `id_golongan`, `id_sub_golongan`, `id_merk`, `tipe`, `indikasi`, `post_image`, `deskripsi`, `komposisi`, `dosis`, `stok_total`, `stok_min`, `stok_max`, `id_member`, `created_by`, `created_date`, `edited_by`, `edited_date`, `platform`, `gambar`) VALUES
(2, 'Hufagrip Hijau BP', '123123', '', 11, 3, 5, 68, 'Apotek', 'Meringankan pilek dan batuk tidak berdahak.', 'upload/obat/14847023775ce3cf97379fe.jpg', 'HUFAGRIP BP SIRUP mengandung Chlorpeniramin Maleat, Pseudoefedrin dan Dextromethorphan HBr, digunakan untuk mengatasi gejala pilek seperti hidung tersumbat, bersin-bersin dan batuk kering/tidak berdahak.', 'Dextromethorphan HBr 7.5 mg, Pseudoephedrine HCl 15 mg, Chlorpheniramine Maleate 0.5 mg', 'Dewasa dan anak > 12 tahun : 3 x per hari, 2 sendok takar (@ 10 ml). anak (6-12 tahun) : 3 x per hari, 1 sendok takar (@ 5 ml). anak (2-6 tahun) : 3 x per hari, 0.5 sendok takar(@ 2.5 ml)', 139, 3, 24, 8, 'axel.kefas@gmail.com', '2019-05-21 17:14:47', 'Coba@gmail.com', '2020-04-29 00:58:19', NULL, ''),
(3, 'Hufagrip Merah', 'e35556', '', 9, 1, 2, 68, 'Apotek', 'menurunkan panas(demam), meringankan nyeri ringan sampai sedang ataralain sakit gigi dan sakit kepala', 'upload/obat/6225111395ce824b8defb4.jpg', 'HUFAGRIP TMP SIRUP mengandung zat aktif Ibuprofen. Kandungan obat ini termasuk Nonsteroidal anti Inflamatory Drug (NSAID). Obat ini digunakan untuk meredakan demam, sakit kepala, sakit gigi, sakit pada telinga, dan nyeri ringan lainnya.', 'Ibuprofen', 'Dewasa : 2 sendok takar (10 ml) 3-4 x sehari; Anak usia 1-2 tahun : 1/2 sendok takar (2,5 ml) 3-4 x sehari; Anak usia 3-7 tahun : 1 sendok takar (5 ml) 3-4 x sehari; Anak usia &12 tahun : 2 sendok tak', 86, 5, 50, 8, 'axel.kefas@gmail.com', '2019-05-25 00:07:04', 'Coba@gmail.com', '2020-05-01 15:06:48', NULL, ''),
(4, 'Hufagrip BP', '', '', 11, 3, 5, 4, 'Apotek', 'meringankan pilek dan batuk tidak berdahak', 'upload/obat/16242062865d3930ee438da.jpg', 'Batuk Pilek', 'dextromethorphan hbr 7,5 mg, pseudoephedrine hcl 15 mg, ctm 0,5 mg', '> 12 th: sehari 3 x 2 sendok teh, anak 6-12 th: sehari 3 x 1 sendok teh, anak 2-6 th: sehari 3 x 1/2 sendok teh, anak di bawah 2 th: menurut petunjuk dokter', 1, 10, 24, 8, 'coba@gmail.com', '2019-07-24 20:43:47', 'Coba@gmail.com', '2020-04-28 23:27:06', NULL, ''),
(5, 'Clopedin 50 Mg/Ml 2 Ml Inj', '', '', 12, 4, 2, 1, 'Apotek', 'Analgetik Kuat', 'upload/obat/8990625785d387fc781b2e.jpg', 'Pereda Nyeri Berat', 'Pethidin Hcl', 'Lihat di brosur', 0, 100, 0, 8, 'coba@gmail.com', '2019-07-24 22:56:55', 'Coba@gmail.com', '2020-05-03 15:37:25', NULL, ''),
(6, 'Amoxan sirup', '113689', '', 10, 1, 3, 153, 'Apotek', 'Mengobati infeksi saluran pernapasan seperti tonsilitis, sinusitis, laringitis, faringitis, otitis media, bronkitis, bronkiektasis, pneumonia. Infeksi saluran kemih dan ginjal seperti pielonefritis, s', 'upload/obat/20479681225ea865dc860e3.jpg', ' Efek samping obat yang paling umum terjadi kulit kemerahan, biduran, ruam kulit, gangguan saluran pencernaan seperti mual, muntah, dan diare.', 'Tiap 5 ml mengandung amoksisilin trihidrat 125 mg/250 mg', 'Anak-anak (Berat badan >20 kg): 250-500 mg tiga kali sehari atau setiap 8 jam. Anak-anak (Berat badan <20 kg): 20-40 mg/kg BB sehari dalam dosis terbagi tiga kali sehari atau setiap 8 jam.', 475, 2, 10, 8, 'coba@gmail.com', '2019-10-07 22:37:44', 'Coba@gmail.com', '2020-04-29 00:20:28', NULL, ''),
(7, 'Pot Krim', '', '', 20, 1, 10, 3, 'Apotek', 'kemasan', 'upload/obat/11323180165e8da9c912ff2.jpg', '-', '-', '-', 0, 100, 0, 8, 'coba@gmail.com', '2019-11-27 20:05:25', 'Coba@gmail.com', '2020-04-08 17:39:05', NULL, ''),
(8, 'A Scabs 30 Ml', '', '', 10, 1, 11, 191, 'Apotek', 'Topical Antifungals & Antiparasites', 'upload/obat/13260150355e8da92aa98ea.jpg', 'Jangan menggunakan obat ini untuk pasien yang memiliki riwayat hipersensitif pada Permethrin, pyrethroid atau pyrethrin.', 'Permethrin', 'Malam hari sebelum tidur, didiamkan 8-12 jam kemudian dibasuh hingga bersih.', 0, 2, 5, 8, 'Coba@gmail.com', '2020-04-03 19:40:18', 'Coba@gmail.com', '2020-04-28 23:39:44', NULL, ''),
(9, 'A-B Vask 5', '', '', 10, 1, 13, 95, 'Apotek', 'Hipertensi, angina pektoris', 'upload/obat/12565535415e8da8a438076.jpg', 'Kontra indikasi:  Hipersensitif thd dihidropiridin, Perhatian Khusus: Hamil & laktasi. kategori kehamilan Kategori C', 'Amlodipine besylate', 'Hipertensi & angina Awal 5 mg 1 x/hr, dpt ditingkatkan hingga maks: 10 mg 1 x/hr.', 1, 300, 0, 8, 'Coba@gmail.com', '2020-04-08 17:31:34', 'Coba@gmail.com', '2020-04-19 23:21:46', NULL, ''),
(10, 'A-B Vask 10', '', '', 10, 1, 13, 95, 'Apotek', 'Hipertensi, angina pektoris', 'upload/obat/20422654195e8dabff55e4f.jpg', 'Kontra indikasi:  Hipersensitif thd dihidropiridin, Perhatian Khusus: Hamil & laktasi. kategori kehamilan Kategori C', 'Amlodipine besylate', 'Hipertensi & angina Awal 5 mg 1 x/hr, dpt ditingkatkan hingga maks: 10 mg 1 x/hr.', 1, 0, 0, 8, 'Coba@gmail.com', '2020-04-08 17:48:31', NULL, NULL, NULL, ''),
(11, 'Abajos', '', '', 9, 1, 2, 124, 'Apotek', 'Anti Nyeri', 'upload/obat/9081752935e8dadd13fcd4.jpg', 'ABAJOS KAPSUL merupakan obat yang mengandung Paracetamol, Vitamin B1, Vitamin B6, dan Vitamin B12. Obat ini digunakan sebagai analgesik antipiretik yang digunakan untuk penurun panas, mengobati neuritis dan neuralgia', 'Paracetamol 500 mg, Thiamine HCl 50 mg, Pyridoxine HCl 100 mg, Cyanocobalamin 100 mcg ', '3 x sehari 1 kapsul', 0, 100, 500, 8, 'Coba@gmail.com', '2020-04-08 17:56:17', 'Coba@gmail.com', '2020-04-28 23:43:12', NULL, ''),
(12, 'Amoxan F Dry sir 60Ml', '', '', 10, 1, 3, 153, 'Apotek', ' Infeksi saluran nafas bawah, tifoid dan para tifoid, tifoid carrier, Infeksi saluran kemih tanpa komplikasi, meningitis, sifilis, abses gigi, otitis media', 'upload/obat/2156545915ea861d665aa6.jpg', ' Amoxicillin yang merupakan antiobiotik spektrum sedang yang aktif terhadap bakteri gram negatif. maupun gram positif. sering digunakan untuk pengobatan saluran pernafasan', 'Amoxicillin', ' Dewasa : 250-500 mg tiap 8 jam., Anak : 20 mg/kg BB/hari terbagi tiap 8 jam. ,Infeksi berat : dosis ganda.,GO akut : 2-3 dosis tunggal', 0, 2, 24, 8, 'Coba@gmail.com', '2020-04-29 00:03:18', 'Coba@gmail.com', '2020-04-29 00:15:27', NULL, ''),
(13, 'Abbotic  Tab 500 mg', '', '', 10, 1, 3, 190, 'Apotek', 'Infeksi saluran nafas, otitis media (radang telinga tengah) akut, infeksi kulit dan struktur kulit ', 'upload/obat/3231585855eae8ba207e42.jpg', 'digunakan untuk mengobati infeksi saluran pernafasan bagian atas dan bawah, infeksi kulit dan jaringan lunak, dan eradikasi Helicobacter pylori. Abbotic mengandung zat aktif Clarithromycin, suatu antibiotik golongan macrolide yang mempunyai spektrum luas,', 'Clarythromycin / Klaritromisin 500 mg', '2 x1', 0, 0, 0, 8, 'Coba@gmail.com', '2020-05-03 16:15:14', 'Coba@gmail.com', '2020-05-03 16:17:34', NULL, ''),
(14, 'Abbotic tab XL 500mg', '', '', 10, 1, 3, 190, 'Apotek', 'Infeksi saluran nafas, otitis media (radang telinga tengah) akut, infeksi kulit dan struktur kulit', 'upload/obat/12605134025eae8d0b082d4.jpg', 'digunakan untuk mengobati infeksi saluran pernafasan bagian atas dan bawah, infeksi kulit dan jaringan lunak, dan eradikasi Helicobacter pylori. Abbotic mengandung zat aktif Clarithromycin, suatu antibiotik golongan macrolide yang mempunyai spektrum luas,', 'Clarythromycin / Klaritromisin 500 mg  ', ' 500-1000 mg/24 jam selama 7-14 hari,Sesudah makan', 0, 0, 0, 8, 'Coba@gmail.com', '2020-05-03 16:21:15', 'Coba@gmail.com', '2020-05-03 16:23:14', NULL, ''),
(15, 'Abilify discmelt 10 mg', '', '', 10, 1, 14, 128, 'Apotek', 'Meredakan gejala skizofrenia. Mengatasi gejala episode mania pada gangguan bipolar', 'upload/obat/10918709035eaee138e752d.jpg', 'Abilify Discmelt adalah obat skizofrenia, gangguan bipolar, depresi, dan iritabilitas yang berhubungan dengan autisme. Abilify Discmelt mengandung Aripiprazole, obat yang termasuk antipsikotik atipikal derivat quinolinone', 'Aripiprazole', 'Dewasa:Dosis awal yang diberikan sebanyak 10-15 mg per hari. Dosis akan diatur paling lama tiap dua minggu sekali. Dosis maksimal adalah 30 mg per hari.Remaja usia di atas 15 tahun:2 mg untuk dua hari', 0, 0, 0, 8, 'Coba@gmail.com', '2020-05-03 22:20:24', 'Coba@gmail.com', '2020-05-03 22:23:00', NULL, ''),
(16, 'Abixim 100mh', '', '112233', 10, 1, 3, 6, 'Apotek', 'Infeksi saluran kemih tak terkomplikasi yang disebabkan E. coli dan P. mirabilis, otitis media yang disebabkan H. influenzae, Moraxella catarrhalis; Gonore servikal/uretral yang disebabkan Neisseria g', 'upload/obat/4724116745eaf4fe192855.jpg', 'ABIXIM 100MG CAP 30S mengandung Cefixime, antibiotik golongan cephalosporin generasi ketiga yang aktif terhadap bakteri gram negatif mapun gram positif.  bentuk sediaan kapsul', 'Cefixime 100 mg', 'Kaps dws & anak dg BB<30 kg 50-100mg 2x/hr, infeksi berat ditingkatkan hingga 200mg/hr', 0, 0, 0, 8, 'Coba@gmail.com', '2020-05-04 06:12:33', 'Coba@gmail.com', '2020-05-21 20:32:30', NULL, ''),
(17, 'Abixim 100mg/5ml dry syr 30ml', '', '', 10, 1, 15, 6, 'Apotek', 'pengobatan infeksi yang disebabkan oleh mikroorganisme antara lain infeksi saluran kemih tanpa komplikasi yang disebabkan oleh escerichia colli dan proteus mirabilis, otitis media, faringitis dan tons', 'upload/obat/3848316375eaf528498dd0.jpg', 'merupakan antibiotik golongan cephalosporin generasi ketiga. Obat ini memiliki spektrum luas yang aktif terhadap bakteri gram negatif mapun gram positif. Abixim syrup digunakan untuk mengobati infeksi saluran pernafasan, infeksi kulit dan jaringan lunak', 'Cefixime', 'Anak : 2 kali sehari 1.5-3 mg/kg BB. Infeksi berat atau membandel : Dosis dapat ditingkatkan hingga 2 kali sehari 6 mg/kg BB. Gonore servikal/uretral : 400 mg sebagai dosis tunggal', 0, 0, 0, 8, 'Coba@gmail.com', '2020-05-04 06:23:48', 'Coba@gmail.com', '2020-05-04 06:36:14', NULL, ''),
(18, 'Accolate 20mg TAB 28\'S', '', '', 10, 1, 1, 12, 'Apotek', 'pencegahan serta terapi asma pada dewasa dan untuk usia diatas usia 12 tahun', 'upload/obat/5489044125eaf551020fbc.jpg', ' zat aktif Accolate adlh Zafirlukast yaitu obat gol antagonis reseptor leukotriene oral (LTRA) yg scr selektif dan kompetitif menghambat enzim pd reseptor shg mengurangi penyempitan saluran nafas dan mengurangi lendir dan radang di sal pernapasan', 'zafirlukast 20 mg', '2 x sehari, (20 mg)', 0, 0, 0, 8, 'Coba@gmail.com', '2020-05-04 06:34:40', 'Coba@gmail.com', '2020-05-04 06:44:52', NULL, ''),
(19, 'Acetram Tablet ', '', '', 9, 5, 6, 141, 'Konsinyasi', 'obat yang digunakan untuk membantu mengatasi nyeri sedang hingga berat.', 'upload/obat/10750861485eb03cefdc4c2.jpg', 'Tramadol dan Paracetamol merupakan tablet yang digunakan untuk mengatasi rasa sakit dan nyeri sedang sampai berat, contoh : nyeri setelah operasi. Selain itu, Acetram Tablet juga digunakan untuk membantu mengobati Fibromyalgia', 'Tramadol 37.5 mg Paracetamol 325 mg', 'Meredakan nyeri 1-2 tablet tiap 4-6 jam. Maksimal: 8 tablet sehari. Penderita dengan bersihan kreatinin <30 mL per menit. 2 tablet tiap 12 jam', 0, 0, 0, 8, 'Coba@gmail.com', '2020-05-04 23:03:59', 'Coba@gmail.com', '2020-05-04 23:04:57', NULL, ''),
(20, 'Aciblok 150mg tab', '', '', 10, 1, 1, 112, 'Apotek', 'Pengobatan tukak lambung, tukak duodenum dan refluks esofagitis', 'upload/obat/1425262315eb040be86ac2.jpg', 'Aciblock merupakan obat saluran cerna.  Aciblock dapat digunakan untuk mengobati tukak duodenum aktif, tukak lambung aktif dan mengurangi gejala refluks esofagitis dalam jangka pendek. & pemeliharaan setelah penyembuhan tukak duodenum dan lambung', 'Ranitidin 150 mg', 'dewasa : 2 kali sehari 1 tablet. pada penderitan sindrom zollinger ellison dosis ditingkatkan 900mg tiap hari, maks 6g sehari. penderita gangguan fungsi ginjal dengan klirens. diminum sebelum atau ses', 0, 0, 0, 8, 'Coba@gmail.com', '2020-05-04 23:14:54', 'Coba@gmail.com', '2020-05-04 23:20:14', NULL, ''),
(21, 'Acifar 5% Cr 5G', '', '', 10, 1, 16, 76, 'Konsinyasi', 'Infeksi Herpes SimpleX pada Kulit dan selaput lendir/membran mukosa, termasuk Herpes Genitalis dan Herpes Labialis tahap awal dan rekuren/kekambuhan', 'upload/obat/12501169075eb08f8401728.jpg', 'ACIFAR 5% CREAM merupakan sediaan topikal yang mengandung zat aktif Acyclovir, obat yang termasuk golongan antivirus. Krim ini digunakan untuk mengatasi herpes simplex, herpes zoster, herpes genital dan cacar.', 'Acyclovir 5%', 'Oleskan 5 x sehari setiap 4 jam tanpa pengobatan malam hari. Lama terapi 5 hari, dapat dilanjutkan hingga 10 hari. Dioleskan pada area infeksi/yang sakit', 0, 0, 0, 8, 'Coba@gmail.com', '2020-05-05 04:56:20', 'Coba@gmail.com', '2020-05-05 04:59:25', NULL, ''),
(22, 'Acifar 400 mg', '', '', 10, 1, 16, 76, 'Apotek', 'Pengobatan infeksi herpes simpleks pada kulit & membran mukosa, termasuk infeksi herpes genitalis inisial & rekurens. Mencegah kambuhnya infeksi herpes simpleks rekurens pada penderita dengan imunokom', 'upload/obat/19863504335eb091cf8daa8.jpg', 'ACIFAR 400 MG adalah obat antivirus dengan kandungan Acyclovir yang digunakan untuk mengobati infeksi akibat virus seperti Varicella zoster dan Herpes simplex. Obat ini digunakan untuk terapi Herpes simplex tipe 1 dan 2, herpes genital, dan infeksi cacar ', 'Acyclovir 400 mg Dosis', 'Herpes simpleks :Dewasa dan anak >2 tahun : 5 kali sehari 200 mg tiap 4 jam; Anak <2 tahun : 1/2 dosis dewasa. Herpes zoster (varicella zoster) : Dewasa : 5 kali sehari 800 mg tiap 4 jam selama 7 hari', 0, 0, 0, 8, 'Coba@gmail.com', '2020-05-05 05:06:07', 'Coba@gmail.com', '2020-05-05 05:20:17', NULL, ''),
(23, 'Acifar 200 mg', '', '', 10, 1, 16, 76, 'Apotek', 'Pengobatan infeksi herpes simpleks pada kulit & membran mukosa, termasuk infeksi herpes genitalis inisial & rekurens. Mencegah kambuhnya infeksi herpes simpleks rekurens pada penderita dengan imunokom', 'upload/obat/7355449055eb09364a0976.jpg', 'ACIFAR 200 MG adalah obat antivirus dengan kandungan Acyclovir yang digunakan untuk mengobati infeksi akibat virus seperti Varicella zoster dan Herpes simplex. Obat ini digunakan untuk terapi Herpes simplex tipe 1 dan 2, herpes genital, dan infeksi cacar ', 'Acyclovir 200 mg', 'Herpes simpleks :Dewasa dan anak >2 tahun : 5 kali sehari 200 mg tiap 4 jam; Anak <2 tahun : 1/2 dosis dewasa. Herpes zoster (varicella zoster) : Dewasa : 5 kali sehari 800 mg tiap 4 jam selama 7 hari', 0, 0, 0, 8, 'Coba@gmail.com', '2020-05-05 05:12:52', 'Coba@gmail.com', '2020-05-05 05:20:36', NULL, ''),
(24, 'Aclam 500mg Kaplet', '', '', 10, 1, 3, 95, 'Apotek', 'infeksi saluran napas atas dan bawah, saluran kemih, kulit, jaringan lunak, paska bedah dan septikemia', 'upload/obat/15398941535eb09736a6818.jpg', 'Aclam dapat digunakan untuk mengobati infeksi saluran napas atas dan bawah, infeksi saluran kemih, infeksi kulit dan infeksi jaringan lunak. Aclam dapat juga digunakan untuk terapi paska bedah dan septikemia.', 'Amoxicillin 500 mg dan asam klavulanat 125 mg', 'Dewasa dan anak diatas 12 tahun: sehari 3x1 kaplet 250 mg; infeksi berat: sehari 3x1 kaplet 500 mg; anak 7-12 tahun: sehari 3x2 sendok; anak dibawah 12 tahun: 25-50 mg/kgBB/hari, diminum bersama makan', 0, 0, 0, 8, 'Coba@gmail.com', '2020-05-05 05:29:10', 'Coba@gmail.com', '2020-05-05 05:34:32', NULL, ''),
(25, 'Britist propolis', '', '8997025410063', 13, 1, 9, 13, 'Konsinyasi', 'Suplemen', NULL, '-', 'Madu propolis', '-', 0, 0, 0, 8, 'Coba@gmail.com', '2020-05-31 13:15:05', 'Coba@gmail.com', '2020-05-31 13:16:01', NULL, ''),
(26, 'Susu', '', '8992753004010', 20, 1, 9, 3, 'Konsinyasi', '-', NULL, '-', '-', '-', 0, 0, 0, 8, 'Coba@gmail.com', '2020-05-31 13:18:08', 'coba@gmail.com', '2020-07-25 14:57:14', NULL, ''),
(56, 'Hanrub 500 ml', '0001', '-', 42, 1, 36, 203, 'Apotek', 'Antiseptik Liquid', 'upload/obat/9960926325f85df7b33b38.jpg', 'Antiseptik Liquid Botol Pump', 'Alkohol 70%', 'Untuk Pemakaian Luar', 48, NULL, NULL, 23, 'Seller Mobile', '2020-10-13 00:00:00', 'Seller Mobile', '2020-10-14 00:00:00', 'Mobile', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_obat_mobile`
--

CREATE TABLE `tbl_obat_mobile` (
  `id_obat_mobile` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `harga` double NOT NULL DEFAULT 0,
  `kategori` varchar(100) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_obat_mobile`
--

INSERT INTO `tbl_obat_mobile` (`id_obat_mobile`, `id_obat`, `id_satuan`, `harga`, `kategori`, `id_member`) VALUES
(23, 3, 7, 16000, 'Bebas', 8),
(27, 12, 7, 55000, 'Resep Dokter', 8),
(28, 6, 7, 28500, 'Resep Dokter', 8),
(30, 11, 3, 1000, 'Bebas', 8),
(32, 2, 3, 17000, 'Bebas', 8),
(33, 14, 3, 8000, 'Resep Dokter', 8),
(34, 13, 3, 7500, 'Resep Dokter', 8),
(35, 15, 3, 40000, 'Resep Dokter', 8),
(36, 16, 3, 8500, 'Resep Dokter', 8),
(37, 17, 3, 70000, 'Resep Dokter', 8),
(38, 18, 3, 8000, 'Resep Dokter', 8),
(39, 20, 3, 500, 'Resep Dokter', 8),
(40, 21, 3, 15000, 'Resep Dokter', 8),
(41, 22, 3, 3000, 'Resep Dokter', 8),
(42, 23, 3, 16000, 'Resep Dokter', 8),
(43, 24, 3, 20000, 'Resep Dokter', 8),
(44, 9, 3, 50000, 'Resep Dokter', 8),
(58, 56, 58, 54600, 'Bebas', 23);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pajak`
--

CREATE TABLE `tbl_pajak` (
  `id_pajak` int(11) NOT NULL,
  `no_faktur_awal` varchar(100) NOT NULL,
  `no_faktur_akhir` varchar(100) NOT NULL,
  `expired` date NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paket`
--

CREATE TABLE `tbl_paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(200) NOT NULL,
  `barcode_paket` varchar(200) DEFAULT NULL,
  `harga_netto` double NOT NULL,
  `harga_non_resep` double NOT NULL,
  `harga_resep` double NOT NULL,
  `harga_bpjs` double NOT NULL,
  `harga_khusus` double NOT NULL,
  `id_member` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `edited_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_paket`
--

INSERT INTO `tbl_paket` (`id_paket`, `nama_paket`, `barcode_paket`, `harga_netto`, `harga_non_resep`, `harga_resep`, `harga_bpjs`, `harga_khusus`, `id_member`, `created_by`, `created_date`, `edited_by`, `edited_date`) VALUES
(1, 'Batuk Anak', '', 100000, 110000, 115000, 120000, 125000, 8, 'axel.kefas@gmail.com', '2019-05-25 00:07:44', 'coba@gmail.com', '2019-10-10 21:34:00'),
(2, 'sakit gigi', '', 0, 0, 0, 0, 0, 8, 'Coba@gmail.com', '2020-08-29 08:11:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pasien`
--

CREATE TABLE `tbl_pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `no_bpjs` varchar(100) NOT NULL,
  `alamat_pasien` varchar(200) NOT NULL,
  `kontak_pasien` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pasien`
--

INSERT INTO `tbl_pasien` (`id_pasien`, `nama_pasien`, `no_bpjs`, `alamat_pasien`, `kontak_pasien`, `jenis_kelamin`, `tanggal_lahir`, `id_member`) VALUES
(1, 'Coba', '123123', 'Coba Alamat', '15421412421', 'Pria', '2019-08-10', 8),
(4, 'pas1', '1223', 'dcdfvg', '4343', 'Perempuan', '2020-12-21', 8),
(6, 'pass2', '54', 'gfg', '545', 'Laki-laki', '2020-12-21', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `kontak_pelanggan` varchar(100) NOT NULL,
  `alamat_pelanggan` varchar(200) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `kontak_pelanggan`, `alamat_pelanggan`, `id_member`) VALUES
(2, 'Ike Yuningsih', '089812314532', 'Jalan Damai', 8),
(3, 'PT. Makmur Jaya', '0765123123', 'Jalan Kesehatan', 8),
(8, 'UMUM EDIT', '-', '-', 8),
(12, 'UMUM 2', '-', '-', 8),
(14, 'UMUM 3', '-', '-', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembayaran_hutang`
--

CREATE TABLE `tbl_pembayaran_hutang` (
  `id_pembayaran_hutang` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `id_batch_obat` int(11) NOT NULL,
  `no_transaksi` varchar(50) DEFAULT NULL,
  `hutang` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `potongan` double NOT NULL DEFAULT 0,
  `sisa` double NOT NULL DEFAULT 0,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pembayaran_hutang`
--

INSERT INTO `tbl_pembayaran_hutang` (`id_pembayaran_hutang`, `id_supplier`, `id_batch_obat`, `no_transaksi`, `hutang`, `total`, `potongan`, `sisa`, `tanggal`, `keterangan`, `created_by`, `created_date`, `id_member`) VALUES
(4, 9, 44, '01/BH/09/2020', 3490000, 400000, 90000, 3000000, '2020-09-03', 'test bayar', 'coba@gmail.com', '2020-09-03 14:48:55', 8),
(5, 9, 44, '02/BH/09/2020', 3000000, 2000000, 0, 1000000, '2020-09-03', 'test bayar 2', 'coba@gmail.com', '2020-09-03 14:58:31', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembayaran_piutang`
--

CREATE TABLE `tbl_pembayaran_piutang` (
  `id_pembayaran_piutang` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `no_transaksi` varchar(50) DEFAULT NULL,
  `piutang` double NOT NULL DEFAULT 0,
  `sisa` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pembayaran_piutang`
--

INSERT INTO `tbl_pembayaran_piutang` (`id_pembayaran_piutang`, `id_pelanggan`, `id_penjualan`, `no_transaksi`, `piutang`, `sisa`, `total`, `tanggal`, `keterangan`, `created_by`, `created_date`, `id_member`) VALUES
(10, 3, 42, '02/BP/09/2020', 117600, 0, 117600, '2020-09-03', 'test lunas', 'coba@gmail.com', '2020-09-03 16:42:41', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `no_transaksi` varchar(100) NOT NULL,
  `no_faktur` varchar(100) DEFAULT '',
  `pelanggan` varchar(100) DEFAULT NULL,
  `pasien` varchar(100) DEFAULT NULL,
  `sales` varchar(100) DEFAULT NULL,
  `dokter` varchar(100) DEFAULT NULL,
  `no_pesanan` varchar(100) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `kredit` date DEFAULT NULL,
  `sub_total` double NOT NULL DEFAULT 0,
  `disc` double NOT NULL DEFAULT 0,
  `harga_disc` double NOT NULL DEFAULT 0,
  `jumlah_total` double NOT NULL DEFAULT 0,
  `kemasan` double NOT NULL DEFAULT 0,
  `ongkir` double NOT NULL DEFAULT 0,
  `total_akhir` double NOT NULL DEFAULT 0,
  `jumlah_bayar` double NOT NULL DEFAULT 0,
  `kurang_lebih_bayar` double NOT NULL DEFAULT 0,
  `kurang_bayar` double NOT NULL DEFAULT 0,
  `dpp` double NOT NULL DEFAULT 0,
  `ppn` double NOT NULL DEFAULT 0,
  `id_member` int(11) NOT NULL,
  `flg_status` int(11) DEFAULT NULL,
  `flg_kredit` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`id_penjualan`, `no_transaksi`, `no_faktur`, `pelanggan`, `pasien`, `sales`, `dokter`, `no_pesanan`, `tgl_transaksi`, `kredit`, `sub_total`, `disc`, `harga_disc`, `jumlah_total`, `kemasan`, `ongkir`, `total_akhir`, `jumlah_bayar`, `kurang_lebih_bayar`, `kurang_bayar`, `dpp`, `ppn`, `id_member`, `flg_status`, `flg_kredit`, `created_by`) VALUES
(40, '0001/JL/08/2020', NULL, 'Ike Yuningsih', 'Coba', 'Edi baskoro', 'Dr. Bambang', '', '2020-08-31', NULL, 120600, 0, 0, 120600, 1000, 10000, 131600, 135000, 3400, 0, 109636.36363636, 10963.636363636, 8, 2, 0, 'coba@gmail.com'),
(41, '0001/JL/09/2020', NULL, 'UMUM', '', '', '', '', '2020-09-02', NULL, 39420, 0, 0, 39420, 0, 0, 39420, 50000, 10580, 0, 35836.363636364, 3583.6363636364, 8, 2, 0, 'Coba@gmail.com'),
(42, '0002/JL/09/2020', '00000000002', 'PT. Makmur Jaya', NULL, '', '', '', '2020-09-03', '2020-09-30', 117600, 0, 0, 117600, 0, 0, 117600, 0, -117600, 0, 106909.09090909, 10690.909090909, 8, 2, 0, 'coba@gmail.com'),
(48, '0003/JL/09/2020', NULL, 'Ike Yuningsih', 'Coba', 'Edi baskoro', 'Dr. Bambang', '', '2020-09-03', NULL, 120600, 0, 0, 120600, 1000, 10000, 131600, 131600, 0, 0, 109636.36363636, 10963.636363636, 8, 2, 0, 'coba@gmail.com'),
(51, '0004/JL/09/2020', NULL, 'Ike Yuningsih', 'Coba', 'Edi baskoro', 'Dr. Bambang', '', '2020-09-04', NULL, 238200, 0, 0, 238200, 500, 10000, 248700, 250000, 1300, 0, 216545.45454545, 21654.545454545, 8, 2, 0, 'coba@gmail.com'),
(52, '0005/JL/09/2020', NULL, '', '', '', '', '', '2020-09-04', NULL, 110000, 0, 0, 110000, 1000, 0, 111000, 111000, 0, 0, 100000, 10000, 8, 2, 0, 'coba@gmail.com'),
(62, '0006/JL/09/2020', NULL, 'Ike Yuningsih', '', 'Edi baskoro', '', '', '2020-09-04', NULL, 35820, 0, 0, 35820, 0, 0, 35820, 36000, 180, 0, 32563.636363636, 3256.3636363636, 8, 2, 0, 'coba@gmail.com'),
(63, '0007/JL/09/2020', NULL, 'PT. Makmur Jaya', '', 'Edi baskoro', '', '', '2020-09-04', NULL, 71640, 0, 0, 71640, 0, 0, 71640, 71640, 0, 0, 65127.272727273, 6512.7272727273, 8, 2, 0, 'coba@gmail.com'),
(65, '0008/JL/09/2020', NULL, 'Ike Yuningsih', 'Coba', 'Edi baskoro', 'Dr. Bambang', '', '2020-09-28', NULL, 60300, 0, 0, 60300, 0, 0, 60300, 60300, 0, 0, 54818.181818182, 5481.8181818182, 8, 2, 0, 'coba@gmail.com'),
(66, '0009/JL/09/2020', NULL, 'PT. Makmur Jaya', 'Coba', 'Edi baskoro', 'Dr. Bambang', '', '2020-09-28', NULL, 60300, 0, 0, 60300, 0, 1000, 61300, 61300, 0, 0, 54818.181818182, 5481.8181818182, 8, 2, 0, 'coba@gmail.com'),
(67, '0010/JL/09/2020', NULL, 'UMUM', '', '', '', '', '2020-09-30', NULL, 11760, 0, 0, 11760, 0, 0, 11760, 20000, 8240, 0, 10690.909090909, 1069.0909090909, 8, 2, 0, 'coba@gmail.com'),
(68, '0011/JL/09/2020', NULL, 'Ike Yuningsih', 'Coba', 'Edi baskoro', 'Dr. Bambang', '', '2020-09-30', NULL, 12060, 0, 0, 12060, 0, 0, 12060, 12060, 0, 0, 10963.636363636, 1096.3636363636, 8, 1, 0, 'coba@gmail.com'),
(69, '0012/JL/09/2020', NULL, 'Ike Yuningsih', 'Coba', 'Edi baskoro', 'Dr. Bambang', '', '2020-09-30', NULL, 12060, 0, 0, 12060, 0, 0, 12060, 12060, 0, 0, 10963.636363636, 1096.3636363636, 8, 1, 0, 'coba@gmail.com'),
(70, '0013/JL/09/2020', NULL, 'Ike Yuningsih', 'Coba', 'Edi baskoro', 'Dr. Bambang', '', '2020-09-30', NULL, 23760, 0, 0, 23760, 0, 0, 23760, 23760, 0, 0, 21600, 2160, 8, 1, 0, 'coba@gmail.com'),
(71, '0001/JL/10/2020', NULL, 'UMUM', '', '', '', '', '2020-10-04', NULL, 37449, 0, 0, 37449, 0, 0, 37449, 50000, 12551, 0, 34044.545454545, 3404.4545454545, 8, 1, 0, 'Coba@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesanan_mobile`
--

CREATE TABLE `tbl_pesanan_mobile` (
  `id_pesanan_mobile` int(11) NOT NULL,
  `id_mobile` int(11) NOT NULL,
  `id_apotek` int(11) NOT NULL,
  `no_pesanan` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `biaya_pengiriman` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `voucher` varchar(255) DEFAULT NULL,
  `potongan_voucher` double NOT NULL DEFAULT 0,
  `status` varchar(100) DEFAULT NULL,
  `flg_pesanan` int(11) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pesanan_mobile`
--

INSERT INTO `tbl_pesanan_mobile` (`id_pesanan_mobile`, `id_mobile`, `id_apotek`, `no_pesanan`, `alamat`, `longitude`, `latitude`, `biaya_pengiriman`, `total`, `catatan`, `voucher`, `potongan_voucher`, `status`, `flg_pesanan`, `date_created`, `id_member`) VALUES
(5, 3, 1, '2/PM/03/2020', 'Jalan Kaliurang No. 27', '110.38136428860685', '-7.767123934398403', 100000, 630000, 'Test Catatan Pemesanan', 'MyApotek', 5000, 'Selesai', 2, '2020-03-27 08:30:29', 8),
(6, 3, 1, '1/PM/04/2020', 'Jalan Kaliurang No. 27', '110.38136428860685', '-7.767123934398403', 10000, 540000, 'Test Catatan Pemesanan', 'MyApotek', 5000, 'Proses', 1, '2020-09-29 20:35:44', 8),
(7, 5, 1, '2/PM/04/2020', 'jl swadaya no 156a karang asem, depok sleman, yogyakarta, Dero, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281, Indonesia', '110.4102175', '-7.7490294', 3000, 73000, '', '', 0, 'Proses', 1, '2020-04-08 23:25:39', 8),
(8, 5, 1, '3/PM/04/2020', 'jl swadaya no 156a karang asem, depok sleman, yogyakarta, Dero, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281, Indonesia', '110.4101899', '-7.7491142', 0, 35000, '', '', 0, 'Menunggu Konfirmasi', 0, '2020-04-08 23:33:22', 8),
(9, 3, 1, '4/PM/04/2020', 'aa', '110.38136428860685', '-7.767123934398403', 0, 530000, 'a', 'MyApotek', 5000, 'Proses', 1, '2020-04-08 23:37:04', 8),
(10, 5, 1, '5/PM/04/2020', 'jl swadaya no 156a karang asem, depok sleman, yogyakarta, Dero, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281, Indonesia', '110.4101899', '-7.7491142', 0, 11000, 'hallo', 'MyApotek', 5000, 'Menunggu Konfirmasi', 0, '2020-04-09 02:39:27', 8),
(11, 0, 1, '6/PM/04/2020', 'Jl. Sengkan No.20, Ngabean Wetan, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281, Indonesia', '110.394837', '-7.7469069', 0, 46000, 'test app', '', 0, 'Menunggu Konfirmasi', 0, '2020-04-10 01:14:39', 8),
(12, 0, 1, '7/PM/04/2020', '195, Jl. Raya Brengkok - Banjarnegara No.rt.02, RW.04, Krandegan, Kec. Banjarnegara, Banjarnegara, Jawa Tengah 53474, Indonesia', '109.70144', '-7.3958252', 0, 20000, '', '', 0, 'Menunggu Konfirmasi', 0, '2020-04-10 05:54:05', 8),
(13, 11, 1, '8/PM/04/2020', 'Jl. Veteran No.17, Krandegan, Kec. Banjarnegara, Banjarnegara, Jawa Tengah 53474, Indonesia', '109.70125386', '-7.39585568', 10000, 50000, '', '', 0, 'Proses', 1, '2020-04-10 09:31:48', 8),
(14, 11, 1, '9/PM/04/2020', 'Jl. Veteran No.17, Krandegan, Kec. Banjarnegara, Banjarnegara, Jawa Tengah 53474, Indonesia', '109.70125386', '-7.39585568', 0, 21000, '', '', 0, 'Menunggu Konfirmasi', 0, '2020-04-10 09:42:15', 8),
(15, 11, 1, '10/PM/04/2020', 'Jl. Veteran No.17, Krandegan, Kec. Banjarnegara, Banjarnegara, Jawa Tengah 53474, Indonesia', '109.70125386', '-7.39585568', 0, 34000, '', '', 0, 'Menunggu Konfirmasi', 0, '2020-04-10 09:43:03', 8),
(16, 11, 1, '11/PM/04/2020', '195, Jl. Raya Brengkok - Banjarnegara No.rt.02, RW.04, Krandegan, Kec. Banjarnegara, Banjarnegara, Jawa Tengah 53474, Indonesia', '109.7014306', '-7.3958257', 0, 15000, '', '', 0, 'Menunggu Konfirmasi', 0, '2020-04-25 21:10:36', 8),
(17, 11, 1, '12/PM/04/2020', '195, Jl. Raya Brengkok - Banjarnegara No.rt.02, RW.04, Krandegan, Kec. Banjarnegara, Banjarnegara, Jawa Tengah 53474, Indonesia', '109.7014306', '-7.3958257', 0, -3500, 'kirim grab ya', 'MyApotek', 5000, 'Menunggu Konfirmasi', 0, '2020-04-25 21:14:15', 8),
(18, 11, 1, '13/PM/04/2020', '195, Jl. Raya Brengkok - Banjarnegara No.rt.02, RW.04, Krandegan, Kec. Banjarnegara, Banjarnegara, Jawa Tengah 53474, Indonesia', '109.7014287', '-7.3958234', 0, 43500, '', '', 0, 'Menunggu Konfirmasi', 0, '2020-04-30 22:19:00', 8),
(19, 11, 1, '14/PM/05/2020', '195, Jl. Raya Brengkok - Banjarnegara No.rt.02, RW.04, Krandegan, Kec. Banjarnegara, Banjarnegara, Jawa Tengah 53474, Indonesia', '109.7014361', '-7.3958237', 0, 17000, '', '', 0, 'Menunggu Konfirmasi', 0, '2020-05-02 11:04:54', 8),
(21, 1, 1, '16/PM/10/2020', 'Jl. Yerusalem, Joho, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281, Indonesia', '110.394868', '-7.7470355', 0, 16000, '', '', 0, 'Menunggu Konfirmasi', 0, '2020-10-02 18:18:35', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_piutang_awal`
--

CREATE TABLE `tbl_piutang_awal` (
  `id_piutang_awal` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tgl_piutang` date NOT NULL,
  `no_ref` varchar(100) NOT NULL,
  `no_faktur` varchar(200) NOT NULL,
  `tgl_tempo` date NOT NULL,
  `jumlah_piutang` double NOT NULL,
  `jumlah_temp` double NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `id_member` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `edited_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rak`
--

CREATE TABLE `tbl_rak` (
  `id_rak` int(11) NOT NULL,
  `id_gudang` int(11) NOT NULL,
  `nama_rak` varchar(100) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `id_gudang`, `nama_rak`, `id_member`) VALUES
(3, 2, 'Rak 01', 8),
(4, 2, 'Rak 02', 8),
(6, 3, 'Rak 03 edit', 8),
(8, 3, 'Rak 4', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `id_registration` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `product` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL,
  `registration_status` varchar(20) NOT NULL,
  `registration_date` datetime NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `confirm_by` varchar(100) DEFAULT NULL,
  `confirm_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`id_registration`, `full_name`, `email`, `phone_number`, `product`, `message`, `registration_status`, `registration_date`, `type`, `confirm_by`, `confirm_date`) VALUES
(8, 'Axel', 'axel.kefas@gmail.com', '081268920028', '12 Month', 'tst', 'Confirmed', '2019-04-28 15:44:08', 'Website', 'axel', '2019-05-05 00:00:00'),
(15, 'Hami gusman', 'myapotekdemo@gmail.com', '082251248773', '1 Month', 'Versi Demo', 'Confirmed', '2020-06-02 19:53:15', 'Website', 'superadmin', '2020-06-09 13:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration_seller`
--

CREATE TABLE `tbl_registration_seller` (
  `id_registration_seller` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nama_apotek` varchar(255) DEFAULT NULL,
  `no_ktp` varchar(100) DEFAULT NULL,
  `no_hp` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `jenis` varchar(50) NOT NULL,
  `sia` varchar(255) DEFAULT NULL,
  `sipa` varchar(255) DEFAULT NULL,
  `gedung` varchar(255) DEFAULT NULL,
  `registration_date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `confirm_by` varchar(100) DEFAULT NULL,
  `confirm_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration_seller`
--

INSERT INTO `tbl_registration_seller` (`id_registration_seller`, `nama`, `nama_apotek`, `no_ktp`, `no_hp`, `email`, `jenis`, `sia`, `sipa`, `gedung`, `registration_date`, `status`, `confirm_by`, `confirm_date`) VALUES
(19, 'hami', 'FIHA MEGA INDOTAMA', '0884126670', '082119054545', 'demo@gmail.com', 'Free', 'upload/registrationseller/6748154675f85839a1f314.jpg', 'upload/registrationseller/1823767425f85839a1f3f9.jpg', 'upload/registrationseller/17652373835f85839a1f49e.jpg', '2020-10-13', 'Confirmed', 'superadmin', '2020-10-13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resep_mobile`
--

CREATE TABLE `tbl_resep_mobile` (
  `id_resep_mobile` int(11) NOT NULL,
  `id_mobile` int(11) NOT NULL,
  `id_apotek` int(11) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `no_pesanan` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `biaya_pengiriman` double DEFAULT 0,
  `total` double DEFAULT 0,
  `catatan` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flg_pesanan` int(11) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_resep_mobile`
--

INSERT INTO `tbl_resep_mobile` (`id_resep_mobile`, `id_mobile`, `id_apotek`, `post_image`, `no_pesanan`, `alamat`, `longitude`, `latitude`, `biaya_pengiriman`, `total`, `catatan`, `status`, `flg_pesanan`, `date_created`, `id_member`) VALUES
(11, 11, 1, 'upload/resep/16666719475e969291a962a.jpg', '0/PR/04/2020', '195, Jl. Raya Brengkok - Banjarnegara No.rt.02, RW.04, Krandegan, Kec. Banjarnegara, Banjarnegara, Jawa Tengah 53474, Indonesia', '109.7014385', '-7.395824', 10000, 540000, 'segera ya', 'Proses', 1, '2020-09-29 20:42:51', 8),
(12, 11, 1, 'upload/resep/11166893005eabd39ddf1e5.jpg', '1/PR/05/2020', '195, Jl. Raya Brengkok - Banjarnegara No.rt.02, RW.04, Krandegan, Kec. Banjarnegara, Banjarnegara, Jawa Tengah 53474, Indonesia', '109.7014287', '-7.3958234', 0, 0, 'coba upload resep and copy resep', 'Menunggu Konfirmasi', 0, '2020-05-01 14:45:33', 8),
(13, 3, 1, 'upload/resep/17899816665eabd648aaf11.jpg', '2/PR/05/2020', 'Jl. Sengkan No.28, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281, Indonesia', '110.394858', '-7.7470145', 0, 0, 'test catatan', 'Menunggu Konfirmasi', 0, '2020-05-01 14:56:56', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retur`
--

CREATE TABLE `tbl_retur` (
  `id_retur` int(11) NOT NULL,
  `no_transaksi` varchar(100) DEFAULT NULL,
  `no_reff` varchar(100) NOT NULL,
  `tgl_retur` date DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `ppn` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `pelanggan` varchar(100) DEFAULT NULL,
  `pasien` varchar(100) DEFAULT NULL,
  `dokter` varchar(100) DEFAULT NULL,
  `sales` varchar(100) DEFAULT NULL,
  `tgl_jual` date DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_retur`
--

INSERT INTO `tbl_retur` (`id_retur`, `no_transaksi`, `no_reff`, `tgl_retur`, `sub_total`, `ppn`, `total`, `keterangan`, `pelanggan`, `pasien`, `dokter`, `sales`, `tgl_jual`, `id_member`) VALUES
(2, '0003/JL/09/2020', '0001/RJ/09/2020', '2020-09-04', 11760, 1176, 12936, 'test retur', '', '', '', '', '2020-09-04', 8),
(3, '0004/JL/09/2020', '0002/RJ/09/2020', '2020-09-04', 23820, 2382, 26202, 'Testing retur', '', '', '', '', '2020-09-04', 8),
(4, '0005/JL/09/2020', '0003/RJ/09/2020', '2020-09-04', 35820, 3582, 39402, '', '', '', '', '', '2020-09-04', 8),
(5, '0006/JL/09/2020', '0004/RJ/09/2020', '2020-09-04', 71640, 7164, 78804, 'testing retur', '', '', '', '', '2020-09-04', 8),
(6, '0005/JL/09/2020', '0005/RJ/09/2020', '2020-09-28', 60300, 6030, 66330, 'test retur', '', '', '', '', '2020-09-28', 8),
(7, '0006/JL/09/2020', '0006/RJ/09/2020', '2020-09-28', 60300, 6030, 66330, 'test lagi retur', 'PT. Makmur Jaya', 'Coba', 'Dr. Bambang', 'Edi baskoro', '2020-09-28', 8),
(8, '0007/JL/09/2020', '0007/RJ/09/2020', '2020-09-30', 11760, 1176, 12936, 'masih salah di perhitungan', 'UMUM', '', '', '', '2020-09-30', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retur_beli`
--

CREATE TABLE `tbl_retur_beli` (
  `id_retur_beli` int(11) NOT NULL,
  `no_transaksi` varchar(100) DEFAULT NULL,
  `no_reff` varchar(100) NOT NULL,
  `tgl_retur` date NOT NULL,
  `tgl_beli` date DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `ppn` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `id_member` int(11) NOT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_retur_beli`
--

INSERT INTO `tbl_retur_beli` (`id_retur_beli`, `no_transaksi`, `no_reff`, `tgl_retur`, `tgl_beli`, `sub_total`, `ppn`, `total`, `keterangan`, `id_member`, `nama_supplier`) VALUES
(17, '02/BL/09/2020', '0001/RB/09/2020', '2020-09-03', '2020-09-02', 980000, 98000, 1078000, 'Rusak', 8, 'ANTAR MITRA SEMBADA, PT'),
(18, '02/BL/09/2020', '0002/RB/09/2020', '2020-09-03', '2020-09-02', 490000, 49000, 539000, 'test retur', 8, 'ANTAR MITRA SEMBADA, PT'),
(19, '04/BL/09/2020', '0003/RB/09/2020', '2020-09-04', '2020-09-04', 10000, 1000, 11000, '', 8, 'ANUGERAH SUMBER BAHAGIA, PT'),
(20, '04/BL/09/2020', '0004/RB/09/2020', '2020-09-04', '2020-09-04', 10000, 1000, 11000, '', 8, 'ANUGERAH SUMBER BAHAGIA, PT'),
(21, '05/BL/09/2020', '0005/RB/09/2020', '2020-09-04', '2020-09-04', 20000, 2000, 22000, '', 8, 'BRAMADA PARMASARI, PT'),
(22, '04/BL/09/2020', '0006/RB/09/2020', '2020-09-15', '2020-09-04', 10000, 1000, 11000, 'test retur', 8, 'ANUGERAH SUMBER BAHAGIA, PT');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role_user`
--

CREATE TABLE `tbl_role_user` (
  `id_role` int(11) NOT NULL,
  `role_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_role_user`
--

INSERT INTO `tbl_role_user` (`id_role`, `role_name`) VALUES
(1, 'Super Admin'),
(2, 'Admin Member'),
(3, 'Bendahara & Akuntan'),
(4, 'Apoteker'),
(5, 'Gudang'),
(6, 'Kasir'),
(7, 'Seller Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saldo_awal`
--

CREATE TABLE `tbl_saldo_awal` (
  `id_saldo_awal` int(11) NOT NULL,
  `id_akun_akuntansi` int(11) NOT NULL,
  `saldo` double NOT NULL DEFAULT 0,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_saldo_awal`
--

INSERT INTO `tbl_saldo_awal` (`id_saldo_awal`, `id_akun_akuntansi`, `saldo`, `id_member`) VALUES
(5, 9, 10000000, 8),
(6, 36, 10000000, 8),
(7, 29, -4800000, 8),
(8, 16, 4800000, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales`
--

CREATE TABLE `tbl_sales` (
  `id_sales` int(11) NOT NULL,
  `nama_sales` varchar(100) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `no_telp` varchar(50) DEFAULT NULL,
  `wilayah` varchar(200) DEFAULT NULL,
  `area` varchar(200) DEFAULT NULL,
  `sub_area` varchar(200) DEFAULT NULL,
  `komisi` double DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sales`
--

INSERT INTO `tbl_sales` (`id_sales`, `nama_sales`, `alamat`, `no_telp`, `wilayah`, `area`, `sub_area`, `komisi`, `id_member`) VALUES
(2, 'Edi baskoro', 'Jl veteran no 15 semarang', '088222999666', 'Jawa tengah', 'Semarang', 'Semarang barat', 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan`
--

CREATE TABLE `tbl_satuan` (
  `id_satuan` int(11) NOT NULL,
  `nama_satuan` varchar(100) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`id_satuan`, `nama_satuan`, `id_member`) VALUES
(3, 'Pcs', 8),
(4, 'Strip', 8),
(7, 'Botol', 8),
(8, 'Box', 8),
(10, 'Vial', 8),
(11, 'Ampul', 8),
(12, 'Tablet', 8),
(13, 'Kaplet', 8),
(14, 'Tube', 8),
(15, 'Blister', 8),
(16, 'Pot', 8),
(17, 'Kapsul', 8),
(58, 'Botol', 23),
(59, 'Box', 23),
(60, 'Pcs', 23);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_akun_dasar`
--

CREATE TABLE `tbl_setting_akun_dasar` (
  `id_setting_akun_dasar` int(11) NOT NULL,
  `hutang_awal` int(11) DEFAULT NULL,
  `hutang_awal_konsi` int(11) DEFAULT NULL,
  `piutang_awal` int(11) DEFAULT NULL,
  `piutang_awal_konsi` int(11) DEFAULT NULL,
  `stock_awal` int(11) DEFAULT NULL,
  `stock_awal_konsi` int(11) DEFAULT NULL,
  `harga_pokok_penjualan_dagang` int(11) DEFAULT NULL,
  `harga_pokok_penjualan_konsi` int(11) DEFAULT NULL,
  `pendapatan_jual_dagang` int(11) DEFAULT NULL,
  `pendapatan_jual_konsi` int(11) DEFAULT NULL,
  `pendapatan_jasa` int(11) DEFAULT NULL,
  `persediaan_dagang` int(11) DEFAULT NULL,
  `persediaan_konsi` int(11) DEFAULT NULL,
  `stock_masuk` int(11) DEFAULT NULL,
  `stock_masuk_konsi` int(11) DEFAULT NULL,
  `stock_keluar` int(11) DEFAULT NULL,
  `stock_keluar_konsi` int(11) DEFAULT NULL,
  `kerugian_stock_opname` int(11) DEFAULT NULL,
  `kerugian_stock_opname_konsi` int(11) DEFAULT NULL,
  `keuntungan_stock_opname` int(11) DEFAULT NULL,
  `keuntungan_stock_opname_konsi` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setting_akun_dasar`
--

INSERT INTO `tbl_setting_akun_dasar` (`id_setting_akun_dasar`, `hutang_awal`, `hutang_awal_konsi`, `piutang_awal`, `piutang_awal_konsi`, `stock_awal`, `stock_awal_konsi`, `harga_pokok_penjualan_dagang`, `harga_pokok_penjualan_konsi`, `pendapatan_jual_dagang`, `pendapatan_jual_konsi`, `pendapatan_jasa`, `persediaan_dagang`, `persediaan_konsi`, `stock_masuk`, `stock_masuk_konsi`, `stock_keluar`, `stock_keluar_konsi`, `kerugian_stock_opname`, `kerugian_stock_opname_konsi`, `keuntungan_stock_opname`, `keuntungan_stock_opname_konsi`, `id_member`) VALUES
(1, 29, 30, 16, 79, 17, 78, 48, 48, 40, 75, 46, 17, 78, 53, 53, 54, 54, 51, 51, 72, 72, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_akun_hutang_piutang`
--

CREATE TABLE `tbl_setting_akun_hutang_piutang` (
  `id_setting_akun_hutang_piutang` int(11) NOT NULL,
  `potongan_hutang` int(11) DEFAULT NULL,
  `potongan_piutang` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setting_akun_hutang_piutang`
--

INSERT INTO `tbl_setting_akun_hutang_piutang` (`id_setting_akun_hutang_piutang`, `potongan_hutang`, `potongan_piutang`, `id_member`) VALUES
(1, 49, 81, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_akun_modal_laba`
--

CREATE TABLE `tbl_setting_akun_modal_laba` (
  `id_setting_akun_modal_laba` int(11) NOT NULL,
  `prive` int(11) DEFAULT NULL,
  `laba_ditahan` int(11) DEFAULT NULL,
  `laba_tahun_berjalan` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setting_akun_modal_laba`
--

INSERT INTO `tbl_setting_akun_modal_laba` (`id_setting_akun_modal_laba`, `prive`, `laba_ditahan`, `laba_tahun_berjalan`, `id_member`) VALUES
(1, 39, 37, 38, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_akun_pembelian`
--

CREATE TABLE `tbl_setting_akun_pembelian` (
  `id_setting_akun_pembelian` int(11) NOT NULL,
  `pajak_pembelian` int(11) DEFAULT NULL,
  `disc_pembelian` int(11) DEFAULT NULL,
  `ongkir_pembelian` int(11) DEFAULT NULL,
  `pembayaran_tunai_dp` int(11) DEFAULT NULL,
  `pembayaran_kredit` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setting_akun_pembelian`
--

INSERT INTO `tbl_setting_akun_pembelian` (`id_setting_akun_pembelian`, `pajak_pembelian`, `disc_pembelian`, `ongkir_pembelian`, `pembayaran_tunai_dp`, `pembayaran_kredit`, `id_member`) VALUES
(1, 19, 18, 76, 10, 29, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_akun_pembelian_konsinyasi`
--

CREATE TABLE `tbl_setting_akun_pembelian_konsinyasi` (
  `id_setting_akun_pembelian_konsinyasi` int(11) NOT NULL,
  `pajak_pembelian` int(11) DEFAULT NULL,
  `disc_pembelian` int(11) DEFAULT NULL,
  `ongkir_pembelian` int(11) DEFAULT NULL,
  `pembayaran_tunai_dp` int(11) DEFAULT NULL,
  `pembayaran_kredit` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setting_akun_pembelian_konsinyasi`
--

INSERT INTO `tbl_setting_akun_pembelian_konsinyasi` (`id_setting_akun_pembelian_konsinyasi`, `pajak_pembelian`, `disc_pembelian`, `ongkir_pembelian`, `pembayaran_tunai_dp`, `pembayaran_kredit`, `id_member`) VALUES
(1, 19, 18, 76, 10, 30, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_akun_penjualan`
--

CREATE TABLE `tbl_setting_akun_penjualan` (
  `id_setting_akun_penjualan` int(11) NOT NULL,
  `pajak_penjualan` int(11) DEFAULT NULL,
  `disc_penjualan` int(11) DEFAULT NULL,
  `ongkir_pembayaran` int(11) DEFAULT NULL,
  `pembayaran_tunai_dp` int(11) DEFAULT NULL,
  `pembayaran_kredit` int(11) DEFAULT NULL,
  `kemasan` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setting_akun_penjualan`
--

INSERT INTO `tbl_setting_akun_penjualan` (`id_setting_akun_penjualan`, `pajak_penjualan`, `disc_penjualan`, `ongkir_pembayaran`, `pembayaran_tunai_dp`, `pembayaran_kredit`, `kemasan`, `id_member`) VALUES
(1, 33, 41, 44, 11, 16, 85, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_akun_penjualan_konsinyasi`
--

CREATE TABLE `tbl_setting_akun_penjualan_konsinyasi` (
  `id_setting_akun_penjualan_konsinyasi` int(11) NOT NULL,
  `pajak_penjualan` int(11) DEFAULT NULL,
  `disc_penjualan` int(11) DEFAULT NULL,
  `ongkir_pembayaran` int(11) DEFAULT NULL,
  `pembayaran_tunai_dp` int(11) DEFAULT NULL,
  `pembayaran_kredit` int(11) DEFAULT NULL,
  `kemasan` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setting_akun_penjualan_konsinyasi`
--

INSERT INTO `tbl_setting_akun_penjualan_konsinyasi` (`id_setting_akun_penjualan_konsinyasi`, `pajak_penjualan`, `disc_penjualan`, `ongkir_pembayaran`, `pembayaran_tunai_dp`, `pembayaran_kredit`, `kemasan`, `id_member`) VALUES
(1, 33, 41, 44, 11, 79, 85, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_akun_retur_pembelian`
--

CREATE TABLE `tbl_setting_akun_retur_pembelian` (
  `id_setting_akun_retur_pembelian` int(11) NOT NULL,
  `pajak_pembelian` int(11) DEFAULT NULL,
  `disc_pembelian` int(11) DEFAULT NULL,
  `ongkir_pembelian` int(11) DEFAULT NULL,
  `pembayaran_tunai_dp` int(11) DEFAULT NULL,
  `pembayaran_kredit` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setting_akun_retur_pembelian`
--

INSERT INTO `tbl_setting_akun_retur_pembelian` (`id_setting_akun_retur_pembelian`, `pajak_pembelian`, `disc_pembelian`, `ongkir_pembelian`, `pembayaran_tunai_dp`, `pembayaran_kredit`, `id_member`) VALUES
(1, 19, 18, 76, 10, 29, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_akun_retur_pembelian_konsinyasi`
--

CREATE TABLE `tbl_setting_akun_retur_pembelian_konsinyasi` (
  `id_setting_akun_retur_pembelian_konsinyasi` int(11) NOT NULL,
  `pajak_pembelian` int(11) DEFAULT NULL,
  `disc_pembelian` int(11) DEFAULT NULL,
  `ongkir_pembelian` int(11) DEFAULT NULL,
  `pembayaran_tunai_dp` int(11) DEFAULT NULL,
  `pembayaran_kredit` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setting_akun_retur_pembelian_konsinyasi`
--

INSERT INTO `tbl_setting_akun_retur_pembelian_konsinyasi` (`id_setting_akun_retur_pembelian_konsinyasi`, `pajak_pembelian`, `disc_pembelian`, `ongkir_pembelian`, `pembayaran_tunai_dp`, `pembayaran_kredit`, `id_member`) VALUES
(1, 19, 18, 76, 10, 30, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_akun_retur_penjualan`
--

CREATE TABLE `tbl_setting_akun_retur_penjualan` (
  `id_setting_akun_retur_penjualan` int(11) NOT NULL,
  `pajak_penjualan` int(11) DEFAULT NULL,
  `disc_penjualan` int(11) DEFAULT NULL,
  `ongkir_pembayaran` int(11) DEFAULT NULL,
  `pembayaran_tunai_dp` int(11) DEFAULT NULL,
  `pembayaran_kredit` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setting_akun_retur_penjualan`
--

INSERT INTO `tbl_setting_akun_retur_penjualan` (`id_setting_akun_retur_penjualan`, `pajak_penjualan`, `disc_penjualan`, `ongkir_pembayaran`, `pembayaran_tunai_dp`, `pembayaran_kredit`, `id_member`) VALUES
(1, 33, 41, 44, 11, 16, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_akun_retur_penjualan_konsinyasi`
--

CREATE TABLE `tbl_setting_akun_retur_penjualan_konsinyasi` (
  `id_setting_akun_retur_penjualan_konsinyasi` int(11) NOT NULL,
  `pajak_penjualan` int(11) DEFAULT NULL,
  `disc_penjualan` int(11) DEFAULT NULL,
  `ongkir_pembayaran` int(11) DEFAULT NULL,
  `pembayaran_tunai_dp` int(11) DEFAULT NULL,
  `pembayaran_kredit` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setting_akun_retur_penjualan_konsinyasi`
--

INSERT INTO `tbl_setting_akun_retur_penjualan_konsinyasi` (`id_setting_akun_retur_penjualan_konsinyasi`, `pajak_penjualan`, `disc_penjualan`, `ongkir_pembayaran`, `pembayaran_tunai_dp`, `pembayaran_kredit`, `id_member`) VALUES
(1, 33, 41, 44, 11, 79, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sp`
--

CREATE TABLE `tbl_sp` (
  `id_sp` int(11) NOT NULL,
  `no_pembuatan` varchar(100) DEFAULT NULL,
  `tgl_sp` date DEFAULT NULL,
  `no_sp` varchar(200) DEFAULT NULL,
  `id_supplier` int(11) NOT NULL,
  `flg_status` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sp`
--

INSERT INTO `tbl_sp` (`id_sp`, `no_pembuatan`, `tgl_sp`, `no_sp`, `id_supplier`, `flg_status`, `id_member`) VALUES
(7, '01/SP/09/2020', '2020-09-07', 'gf', 9, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_spj`
--

CREATE TABLE `tbl_spj` (
  `id_spj` int(11) NOT NULL,
  `no_pembuatan` varchar(100) DEFAULT NULL,
  `tgl_spj` date DEFAULT NULL,
  `no_spj` varchar(200) DEFAULT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `flg_status` int(11) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_spj`
--

INSERT INTO `tbl_spj` (`id_spj`, `no_pembuatan`, `tgl_spj`, `no_spj`, `id_pelanggan`, `flg_status`, `id_member`) VALUES
(1, '01/SPJ/09/2020', '2020-09-12', 'ghf', 2, 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock_mutasi`
--

CREATE TABLE `tbl_stock_mutasi` (
  `id_stock_mutasi` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `id_rak_sebelum` int(11) DEFAULT NULL,
  `rak_sebelum` varchar(100) NOT NULL,
  `gudang_sebelum` varchar(100) DEFAULT NULL,
  `rak_sesudah` int(11) NOT NULL,
  `id_detail_batch` int(11) NOT NULL,
  `no_transaksi` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kode` varchar(5) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock_opname`
--

CREATE TABLE `tbl_stock_opname` (
  `id_stock_opname` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `id_detail_batch` int(11) NOT NULL,
  `no_transaksi` varchar(50) DEFAULT NULL,
  `stok_real` int(11) NOT NULL DEFAULT 0,
  `stok_tercatat` int(11) NOT NULL,
  `stok_selisih` int(11) NOT NULL,
  `hpp` double DEFAULT NULL,
  `nominal` double NOT NULL DEFAULT 0,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `kode` varchar(5) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stok_awal`
--

CREATE TABLE `tbl_stok_awal` (
  `id_stok_awal` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `no_transaksi` varchar(50) NOT NULL,
  `batch` varchar(100) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `isi_satuan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `stok_temp` int(11) NOT NULL,
  `hpp` double NOT NULL,
  `hpp_satuan` double NOT NULL,
  `kadaluwarsa` date NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `nilai_stok` double NOT NULL,
  `flg_status` int(11) NOT NULL,
  `kode` varchar(5) DEFAULT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `edited_by` varchar(100) NOT NULL,
  `edited_date` datetime NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_golongan`
--

CREATE TABLE `tbl_sub_golongan` (
  `id_sub_golongan` int(11) NOT NULL,
  `nama_sub_golongan` varchar(200) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sub_golongan`
--

INSERT INTO `tbl_sub_golongan` (`id_sub_golongan`, `nama_sub_golongan`, `id_member`) VALUES
(1, 'Batuk', 8),
(2, 'Analgetik, Antipiretik', 8),
(3, 'Antibiotik ', 8),
(4, 'Antihistamin', 8),
(5, 'Batuk Pilek', 8),
(6, 'Analgetik Kuat', 8),
(7, 'Batuk Kering', 8),
(8, 'Batuk Berdahak', 8),
(9, 'Suplemen / multivitamin', 8),
(10, 'Kemasan', 8),
(11, 'Anti Jamur', 8),
(12, 'Haemostatik', 8),
(13, 'Hipertensi', 8),
(14, 'Antipsikotik', 8),
(15, 'Anti asma', 8),
(16, 'Antivirus', 8),
(36, 'Antiseptik', 23);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `no_telp` varchar(100) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `no_ijin_supplier` varchar(100) DEFAULT NULL,
  `penanggung_jawab` varchar(100) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supplier`, `nama_supplier`, `no_telp`, `alamat`, `no_ijin_supplier`, `penanggung_jawab`, `id_member`) VALUES
(8, 'ANEKA SARANA HUSADA NUSANTARA, PT', '', 'JL. RAYA KALIBANGER NO. 7-8 PEKALONGAN', '', '', 8),
(9, 'ANTAR MITRA SEMBADA, PT', '', 'JL. STADION TIMUR NO. 8 SEMARANG', '', '', 8),
(10, 'ANUGERAH SUMBER BAHAGIA, PT', '', 'JL. REJOSARI VII NO.5 SEMARANG', '', '', 8),
(11, 'BRAMADA PARMASARI, PT', '024 - 7601465', 'JL. MAJAPAHIT NO. 384 SEMARANG', '', '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_saldo_awal`
--

CREATE TABLE `tbl_temp_saldo_awal` (
  `id_temp` int(11) NOT NULL,
  `id_akun_akuntansi` int(11) NOT NULL,
  `sebelum` double NOT NULL DEFAULT 0,
  `sesudah` double NOT NULL DEFAULT 0,
  `flg` int(2) DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_members` int(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `edited_date` datetime DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `id_role`, `username`, `password`, `id_members`, `created_by`, `created_date`, `edited_by`, `edited_date`, `api_key`) VALUES
(2, 1, 'superadmin', '17c4520f6cfd1ab53d8745e84681eb49', NULL, 'axel', '2019-05-02 00:00:00', 'axel', '2019-05-05 13:57:59', NULL),
(12, 2, 'coba@gmail.com', 'a33a9229149a2d2a3aa791bc47f988f7', 8, 'axel', '2019-05-05 00:09:38', NULL, NULL, NULL),
(15, 4, 'apotek', '5907cee206610515aa4a0624f80dedae', 8, 'axel.kefas@gmail.com', '2019-05-14 09:38:15', 'axel.kefas@gmail.com', '2019-05-14 09:39:23', NULL),
(16, 5, 'gudang', '202446dd1d6028084426867365b0c7a1', 8, 'axel.kefas@gmail.com', '2019-05-14 09:39:00', 'axel.kefas@gmail.com', '2019-05-14 09:39:20', NULL),
(17, 6, 'kasir', 'c7911af3adbd12a035b289556d96470a', 8, 'axel.kefas@gmail.com', '2019-05-14 09:39:12', 'axel.kefas@gmail.com', '2019-05-14 09:39:17', NULL),
(25, 4, 'hami', '4bbc157e20ed653d9fd9c5b9ccad6fcc', 8, 'Coba@gmail.com', '2020-05-22 06:43:37', 'Coba@gmail.com', '2020-05-22 06:46:24', NULL),
(26, 6, 'gupita', '1cfd3462dbd2b7fa174f8fb71c7c2966', 8, 'Coba@gmail.com', '2020-06-07 12:28:05', NULL, NULL, NULL),
(38, 7, 'demo@gmail.com', 'bb90dcb0ceabfc8bf10c550f1ee95ee7', 23, 'superadmin', '2020-10-13 17:42:10', NULL, NULL, '014f2b90ae914a2da2c8d598ab53cc60');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_mobile`
--

CREATE TABLE `tbl_user_mobile` (
  `id_user_mobile` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `gol_darah` varchar(2) DEFAULT NULL,
  `api_key` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_voucher`
--

CREATE TABLE `tbl_voucher` (
  `id_voucher` int(11) NOT NULL,
  `nama_voucher` varchar(255) NOT NULL,
  `potongan_voucher` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_voucher`
--

INSERT INTO `tbl_voucher` (`id_voucher`, `nama_voucher`, `potongan_voucher`) VALUES
(1, 'MyApotek', 5000),
(2, 'Test', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `no_reff` int(11) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `jenis_saldo` enum('debit','kredit','','') NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `no_reff`, `tgl_input`, `tgl_transaksi`, `jenis_saldo`, `saldo`) VALUES
(15, 1, 111, '2018-11-26 17:45:45', '2018-11-03', 'debit', 80000000),
(16, 1, 311, '2018-11-26 17:45:45', '2018-11-03', 'kredit', 80000000),
(17, 1, 121, '2018-11-26 17:46:37', '2018-11-03', 'debit', 35000000),
(18, 1, 311, '2018-11-26 17:46:37', '2018-11-03', 'kredit', 35000000),
(19, 1, 512, '2018-11-26 17:49:00', '2018-11-04', 'debit', 6000000),
(20, 1, 111, '2018-11-26 17:49:00', '2018-11-04', 'kredit', 6000000),
(21, 1, 111, '2018-11-26 17:52:00', '2018-11-05', 'kredit', 1900000),
(22, 1, 113, '2018-11-26 17:52:00', '2018-11-05', 'debit', 1900000),
(23, 1, 121, '2018-11-26 17:55:08', '2018-11-08', 'debit', 2000000),
(24, 1, 211, '2018-11-26 17:55:08', '2018-11-08', 'kredit', 2000000),
(25, 1, 411, '2018-11-26 17:57:04', '2018-11-10', 'kredit', 950000),
(26, 1, 112, '2018-11-26 17:57:04', '2018-11-10', 'debit', 950000),
(27, 1, 111, '2018-11-26 17:57:49', '2018-11-12', 'debit', 2500000),
(28, 1, 411, '2018-11-26 17:57:49', '2018-11-12', 'kredit', 2500000),
(29, 1, 211, '2018-11-26 17:59:24', '2018-11-15', 'debit', 200000),
(30, 1, 111, '2018-11-26 17:59:24', '2018-11-15', 'kredit', 200000),
(31, 1, 312, '2018-11-26 18:05:40', '2018-11-20', 'debit', 750000),
(32, 1, 111, '2018-11-26 18:05:40', '2018-11-20', 'kredit', 750000),
(33, 1, 111, '2018-11-26 18:06:13', '2018-11-28', 'debit', 750000),
(34, 1, 112, '2018-11-26 18:06:13', '2018-11-28', 'kredit', 750000),
(35, 1, 511, '2018-11-26 18:10:23', '2018-11-29', 'debit', 900000),
(36, 1, 111, '2018-11-26 18:10:23', '2018-11-29', 'kredit', 900000),
(37, 1, 514, '2018-11-26 18:10:57', '2018-11-30', 'debit', 1600000),
(38, 1, 111, '2018-11-26 18:10:57', '2018-11-30', 'kredit', 1600000),
(39, 1, 515, '2018-11-26 18:12:55', '2018-11-30', 'debit', 1150000),
(40, 1, 113, '2018-11-26 18:12:55', '2018-11-30', 'kredit', 1150000),
(41, 1, 513, '2018-11-26 18:14:43', '2018-11-30', 'debit', 250000),
(42, 1, 122, '2018-11-26 18:14:43', '2018-11-30', 'kredit', 250000),
(43, 1, 512, '2018-11-26 18:15:20', '2018-11-26', 'debit', 500000),
(44, 1, 111, '2018-11-26 18:15:20', '2018-11-26', 'kredit', 500000),
(45, 1, 111, '2018-11-28 10:40:25', '2019-11-30', 'debit', 2000000),
(46, 1, 112, '2018-11-28 10:40:25', '2019-11-30', 'kredit', 2000000),
(47, 1, 514, '2018-11-29 12:56:41', '2018-10-01', 'debit', 1000),
(48, 1, 111, '2018-11-29 12:56:41', '2018-10-01', 'kredit', 1000),
(49, 1, 112, '2018-11-28 12:15:31', '2018-10-02', 'debit', 2000000),
(50, 1, 113, '2018-11-28 12:15:31', '2018-10-02', 'kredit', 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` enum('laki-laki','perempuan','','') NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `jk`, `alamat`, `email`, `username`, `password`, `last_login`) VALUES
(1, 'Hidayat Chandra', 'laki-laki', 'JL.H.B Jassin No.337', 'hidayatchandra08@gmail.com', 'admin', '69005bb62e9622ee1de61958aacf0f63', '2020-02-08 17:42:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`no_reff`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `history_backup`
--
ALTER TABLE `history_backup`
  ADD PRIMARY KEY (`id_backup`);

--
-- Indexes for table `history_tutup_buku`
--
ALTER TABLE `history_tutup_buku`
  ADD PRIMARY KEY (`id_backup`);

--
-- Indexes for table `jurnal_keluar`
--
ALTER TABLE `jurnal_keluar`
  ADD PRIMARY KEY (`nomor_jurnal`);

--
-- Indexes for table `jurnal_masuk`
--
ALTER TABLE `jurnal_masuk`
  ADD PRIMARY KEY (`nomor_jurnal`);

--
-- Indexes for table `jurnal_umum`
--
ALTER TABLE `jurnal_umum`
  ADD PRIMARY KEY (`nomor_jurnal`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kab`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indexes for table `tabel_admin`
--
ALTER TABLE `tabel_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tabel_master`
--
ALTER TABLE `tabel_master`
  ADD PRIMARY KEY (`kode_rekening`);

--
-- Indexes for table `tabel_neraca`
--
ALTER TABLE `tabel_neraca`
  ADD PRIMARY KEY (`kode_rekening`);

--
-- Indexes for table `tabel_rugi_laba`
--
ALTER TABLE `tabel_rugi_laba`
  ADD PRIMARY KEY (`kode_rekening`);

--
-- Indexes for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tbl_akun_akuntansi`
--
ALTER TABLE `tbl_akun_akuntansi`
  ADD PRIMARY KEY (`id_akun_akuntansi`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_jenis_akun` (`id_jenis_akun_akuntansi`);

--
-- Indexes for table `tbl_apotek`
--
ALTER TABLE `tbl_apotek`
  ADD PRIMARY KEY (`id_apotek`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_merk` (`no_sia`),
  ADD KEY `tbl_obat_ibfk_2` (`npwp`),
  ADD KEY `id_golongan` (`no_telp`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id_banner`),
  ADD KEY `id_member` (`detail`),
  ADD KEY `id_obat` (`post_image`);

--
-- Indexes for table `tbl_batch_obat`
--
ALTER TABLE `tbl_batch_obat`
  ADD PRIMARY KEY (`id_batch_obat`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `tbl_detail_batch`
--
ALTER TABLE `tbl_detail_batch`
  ADD PRIMARY KEY (`id_detail_batch`),
  ADD KEY `id_batch` (`id_batch`),
  ADD KEY `id_rak` (`id_rak`),
  ADD KEY `id_satuan` (`id_satuan`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `tbl_detail_obat`
--
ALTER TABLE `tbl_detail_obat`
  ADD PRIMARY KEY (`id_detail_obat`),
  ADD KEY `id_member` (`id_obat`),
  ADD KEY `satuan_1` (`satuan_1`),
  ADD KEY `satuan_2` (`satuan_2`),
  ADD KEY `satuan_3` (`satuan_3`);

--
-- Indexes for table `tbl_detail_paket`
--
ALTER TABLE `tbl_detail_paket`
  ADD PRIMARY KEY (`id_detail_paket`),
  ADD KEY `id_paket` (`id_paket`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_detail_penjualan`
--
ALTER TABLE `tbl_detail_penjualan`
  ADD PRIMARY KEY (`id_detail_penjualan`),
  ADD KEY `id_batch` (`id_penjualan`);

--
-- Indexes for table `tbl_detail_pesanan_mobile`
--
ALTER TABLE `tbl_detail_pesanan_mobile`
  ADD PRIMARY KEY (`id_detail_pesanan_mobile`);

--
-- Indexes for table `tbl_detail_retur`
--
ALTER TABLE `tbl_detail_retur`
  ADD PRIMARY KEY (`id_detail_retur`);

--
-- Indexes for table `tbl_detail_retur_beli`
--
ALTER TABLE `tbl_detail_retur_beli`
  ADD PRIMARY KEY (`id_detail_retur_beli`);

--
-- Indexes for table `tbl_detail_sp`
--
ALTER TABLE `tbl_detail_sp`
  ADD PRIMARY KEY (`id_detail_sp`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_sp` (`id_sp`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `id_satuan` (`id_satuan`);

--
-- Indexes for table `tbl_detail_spj`
--
ALTER TABLE `tbl_detail_spj`
  ADD PRIMARY KEY (`id_detail_spj`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_sp` (`id_spj`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `id_satuan` (`id_satuan`);

--
-- Indexes for table `tbl_dokter`
--
ALTER TABLE `tbl_dokter`
  ADD PRIMARY KEY (`id_dokter`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_golongan`
--
ALTER TABLE `tbl_golongan`
  ADD PRIMARY KEY (`id_golongan`);

--
-- Indexes for table `tbl_gudang`
--
ALTER TABLE `tbl_gudang`
  ADD PRIMARY KEY (`id_gudang`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_history_stok`
--
ALTER TABLE `tbl_history_stok`
  ADD PRIMARY KEY (`id_history_stok`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `id_rak` (`id_rak`);

--
-- Indexes for table `tbl_hutang_awal`
--
ALTER TABLE `tbl_hutang_awal`
  ADD PRIMARY KEY (`id_hutang_awal`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_item_detail`
--
ALTER TABLE `tbl_item_detail`
  ADD PRIMARY KEY (`id_item_detail`),
  ADD KEY `id_batch` (`id_detail_penjualan`);

--
-- Indexes for table `tbl_jasa`
--
ALTER TABLE `tbl_jasa`
  ADD PRIMARY KEY (`id_jasa`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_jenis_akun_akuntansi`
--
ALTER TABLE `tbl_jenis_akun_akuntansi`
  ADD PRIMARY KEY (`id_jenis_akun_akuntansi`);

--
-- Indexes for table `tbl_jenis_obat`
--
ALTER TABLE `tbl_jenis_obat`
  ADD PRIMARY KEY (`id_jenis_obat`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_jenis_racik`
--
ALTER TABLE `tbl_jenis_racik`
  ADD PRIMARY KEY (`id_jenis_racik`);

--
-- Indexes for table `tbl_jurnal`
--
ALTER TABLE `tbl_jurnal`
  ADD PRIMARY KEY (`id_jurnal`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_obat` (`id_akun_akuntansi`);

--
-- Indexes for table `tbl_members`
--
ALTER TABLE `tbl_members`
  ADD PRIMARY KEY (`id_members`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  ADD PRIMARY KEY (`id_merk`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_mobile_user`
--
ALTER TABLE `tbl_mobile_user`
  ADD PRIMARY KEY (`id_mobile`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_mutasi_saldo`
--
ALTER TABLE `tbl_mutasi_saldo`
  ADD PRIMARY KEY (`id_mutasi_saldo`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_pengirim` (`id_pengirim`),
  ADD KEY `id_penerima` (`id_penerima`);

--
-- Indexes for table `tbl_neraca`
--
ALTER TABLE `tbl_neraca`
  ADD PRIMARY KEY (`id_neraca`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_gudang` (`id_akun_akuntansi`);

--
-- Indexes for table `tbl_obat`
--
ALTER TABLE `tbl_obat`
  ADD PRIMARY KEY (`id_obat`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_merk` (`id_merk`),
  ADD KEY `id_jenis_obat` (`id_jenis_obat`),
  ADD KEY `tbl_obat_ibfk_2` (`id_sub_golongan`),
  ADD KEY `id_golongan` (`id_golongan`);

--
-- Indexes for table `tbl_obat_mobile`
--
ALTER TABLE `tbl_obat_mobile`
  ADD PRIMARY KEY (`id_obat_mobile`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `id_satuan` (`id_satuan`);

--
-- Indexes for table `tbl_pajak`
--
ALTER TABLE `tbl_pajak`
  ADD PRIMARY KEY (`id_pajak`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  ADD PRIMARY KEY (`id_paket`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  ADD PRIMARY KEY (`id_pasien`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_pembayaran_hutang`
--
ALTER TABLE `tbl_pembayaran_hutang`
  ADD PRIMARY KEY (`id_pembayaran_hutang`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_obat` (`id_supplier`),
  ADD KEY `id_batch_obat` (`id_batch_obat`);

--
-- Indexes for table `tbl_pembayaran_piutang`
--
ALTER TABLE `tbl_pembayaran_piutang`
  ADD PRIMARY KEY (`id_pembayaran_piutang`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_obat` (`id_pelanggan`);

--
-- Indexes for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_pesanan_mobile`
--
ALTER TABLE `tbl_pesanan_mobile`
  ADD PRIMARY KEY (`id_pesanan_mobile`);

--
-- Indexes for table `tbl_piutang_awal`
--
ALTER TABLE `tbl_piutang_awal`
  ADD PRIMARY KEY (`id_piutang_awal`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `tbl_piutang_awal_ibfk_2` (`id_pelanggan`);

--
-- Indexes for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD PRIMARY KEY (`id_rak`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_gudang` (`id_gudang`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`id_registration`);

--
-- Indexes for table `tbl_registration_seller`
--
ALTER TABLE `tbl_registration_seller`
  ADD PRIMARY KEY (`id_registration_seller`);

--
-- Indexes for table `tbl_resep_mobile`
--
ALTER TABLE `tbl_resep_mobile`
  ADD PRIMARY KEY (`id_resep_mobile`);

--
-- Indexes for table `tbl_retur`
--
ALTER TABLE `tbl_retur`
  ADD PRIMARY KEY (`id_retur`),
  ADD KEY `tbl_retur_ibfk_1` (`id_member`);

--
-- Indexes for table `tbl_retur_beli`
--
ALTER TABLE `tbl_retur_beli`
  ADD PRIMARY KEY (`id_retur_beli`);

--
-- Indexes for table `tbl_role_user`
--
ALTER TABLE `tbl_role_user`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `tbl_saldo_awal`
--
ALTER TABLE `tbl_saldo_awal`
  ADD PRIMARY KEY (`id_saldo_awal`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_akun_akuntansi` (`id_akun_akuntansi`);

--
-- Indexes for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD PRIMARY KEY (`id_sales`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  ADD PRIMARY KEY (`id_satuan`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_setting_akun_dasar`
--
ALTER TABLE `tbl_setting_akun_dasar`
  ADD PRIMARY KEY (`id_setting_akun_dasar`),
  ADD KEY `id_member` (`piutang_awal`),
  ADD KEY `id_gudang` (`hutang_awal`),
  ADD KEY `id_member_2` (`id_member`),
  ADD KEY `piutang_dagang` (`hutang_awal_konsi`);

--
-- Indexes for table `tbl_setting_akun_hutang_piutang`
--
ALTER TABLE `tbl_setting_akun_hutang_piutang`
  ADD PRIMARY KEY (`id_setting_akun_hutang_piutang`),
  ADD KEY `id_member_2` (`id_member`);

--
-- Indexes for table `tbl_setting_akun_modal_laba`
--
ALTER TABLE `tbl_setting_akun_modal_laba`
  ADD PRIMARY KEY (`id_setting_akun_modal_laba`),
  ADD KEY `id_member_2` (`id_member`);

--
-- Indexes for table `tbl_setting_akun_pembelian`
--
ALTER TABLE `tbl_setting_akun_pembelian`
  ADD PRIMARY KEY (`id_setting_akun_pembelian`),
  ADD KEY `id_member_2` (`id_member`);

--
-- Indexes for table `tbl_setting_akun_pembelian_konsinyasi`
--
ALTER TABLE `tbl_setting_akun_pembelian_konsinyasi`
  ADD PRIMARY KEY (`id_setting_akun_pembelian_konsinyasi`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_setting_akun_penjualan`
--
ALTER TABLE `tbl_setting_akun_penjualan`
  ADD PRIMARY KEY (`id_setting_akun_penjualan`),
  ADD KEY `id_member_2` (`id_member`);

--
-- Indexes for table `tbl_setting_akun_penjualan_konsinyasi`
--
ALTER TABLE `tbl_setting_akun_penjualan_konsinyasi`
  ADD PRIMARY KEY (`id_setting_akun_penjualan_konsinyasi`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_setting_akun_retur_pembelian`
--
ALTER TABLE `tbl_setting_akun_retur_pembelian`
  ADD PRIMARY KEY (`id_setting_akun_retur_pembelian`),
  ADD KEY `id_member_2` (`id_member`);

--
-- Indexes for table `tbl_setting_akun_retur_pembelian_konsinyasi`
--
ALTER TABLE `tbl_setting_akun_retur_pembelian_konsinyasi`
  ADD PRIMARY KEY (`id_setting_akun_retur_pembelian_konsinyasi`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_setting_akun_retur_penjualan`
--
ALTER TABLE `tbl_setting_akun_retur_penjualan`
  ADD PRIMARY KEY (`id_setting_akun_retur_penjualan`),
  ADD KEY `id_member_2` (`id_member`);

--
-- Indexes for table `tbl_setting_akun_retur_penjualan_konsinyasi`
--
ALTER TABLE `tbl_setting_akun_retur_penjualan_konsinyasi`
  ADD PRIMARY KEY (`id_setting_akun_retur_penjualan_konsinyasi`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_sp`
--
ALTER TABLE `tbl_sp`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `tbl_spj`
--
ALTER TABLE `tbl_spj`
  ADD PRIMARY KEY (`id_spj`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_supplier` (`id_pelanggan`);

--
-- Indexes for table `tbl_stock_mutasi`
--
ALTER TABLE `tbl_stock_mutasi`
  ADD PRIMARY KEY (`id_stock_mutasi`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_obat` (`rak_sebelum`),
  ADD KEY `id_obat_2` (`rak_sesudah`),
  ADD KEY `id_obat_3` (`id_obat`);

--
-- Indexes for table `tbl_stock_opname`
--
ALTER TABLE `tbl_stock_opname`
  ADD PRIMARY KEY (`id_stock_opname`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_obat` (`id_rak`),
  ADD KEY `id_obat_2` (`id_obat`);

--
-- Indexes for table `tbl_stok_awal`
--
ALTER TABLE `tbl_stok_awal`
  ADD PRIMARY KEY (`id_stok_awal`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `id_rak` (`id_rak`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_satuan` (`id_satuan`);

--
-- Indexes for table `tbl_sub_golongan`
--
ALTER TABLE `tbl_sub_golongan`
  ADD PRIMARY KEY (`id_sub_golongan`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id_supplier`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_temp_saldo_awal`
--
ALTER TABLE `tbl_temp_saldo_awal`
  ADD PRIMARY KEY (`id_temp`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_akun_akuntansi` (`id_akun_akuntansi`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_role` (`id_role`);

--
-- Indexes for table `tbl_user_mobile`
--
ALTER TABLE `tbl_user_mobile`
  ADD PRIMARY KEY (`id_user_mobile`);

--
-- Indexes for table `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  ADD PRIMARY KEY (`id_voucher`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `no_reff` (`no_reff`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history_backup`
--
ALTER TABLE `history_backup`
  MODIFY `id_backup` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `history_tutup_buku`
--
ALTER TABLE `history_tutup_buku`
  MODIFY `id_backup` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tabel_admin`
--
ALTER TABLE `tabel_admin`
  MODIFY `id_admin` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  MODIFY `id_transaksi` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_akun_akuntansi`
--
ALTER TABLE `tbl_akun_akuntansi`
  MODIFY `id_akun_akuntansi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_apotek`
--
ALTER TABLE `tbl_apotek`
  MODIFY `id_apotek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_batch_obat`
--
ALTER TABLE `tbl_batch_obat`
  MODIFY `id_batch_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_detail_batch`
--
ALTER TABLE `tbl_detail_batch`
  MODIFY `id_detail_batch` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_detail_obat`
--
ALTER TABLE `tbl_detail_obat`
  MODIFY `id_detail_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_detail_paket`
--
ALTER TABLE `tbl_detail_paket`
  MODIFY `id_detail_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_detail_penjualan`
--
ALTER TABLE `tbl_detail_penjualan`
  MODIFY `id_detail_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_detail_pesanan_mobile`
--
ALTER TABLE `tbl_detail_pesanan_mobile`
  MODIFY `id_detail_pesanan_mobile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_detail_retur`
--
ALTER TABLE `tbl_detail_retur`
  MODIFY `id_detail_retur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_detail_retur_beli`
--
ALTER TABLE `tbl_detail_retur_beli`
  MODIFY `id_detail_retur_beli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_detail_sp`
--
ALTER TABLE `tbl_detail_sp`
  MODIFY `id_detail_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_detail_spj`
--
ALTER TABLE `tbl_detail_spj`
  MODIFY `id_detail_spj` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_dokter`
--
ALTER TABLE `tbl_dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `tbl_golongan`
--
ALTER TABLE `tbl_golongan`
  MODIFY `id_golongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_gudang`
--
ALTER TABLE `tbl_gudang`
  MODIFY `id_gudang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_history_stok`
--
ALTER TABLE `tbl_history_stok`
  MODIFY `id_history_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `tbl_hutang_awal`
--
ALTER TABLE `tbl_hutang_awal`
  MODIFY `id_hutang_awal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_item_detail`
--
ALTER TABLE `tbl_item_detail`
  MODIFY `id_item_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_jasa`
--
ALTER TABLE `tbl_jasa`
  MODIFY `id_jasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_jenis_akun_akuntansi`
--
ALTER TABLE `tbl_jenis_akun_akuntansi`
  MODIFY `id_jenis_akun_akuntansi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_jenis_obat`
--
ALTER TABLE `tbl_jenis_obat`
  MODIFY `id_jenis_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_jenis_racik`
--
ALTER TABLE `tbl_jenis_racik`
  MODIFY `id_jenis_racik` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_jurnal`
--
ALTER TABLE `tbl_jurnal`
  MODIFY `id_jurnal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT for table `tbl_members`
--
ALTER TABLE `tbl_members`
  MODIFY `id_members` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  MODIFY `id_merk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `tbl_mobile_user`
--
ALTER TABLE `tbl_mobile_user`
  MODIFY `id_mobile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_mutasi_saldo`
--
ALTER TABLE `tbl_mutasi_saldo`
  MODIFY `id_mutasi_saldo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_neraca`
--
ALTER TABLE `tbl_neraca`
  MODIFY `id_neraca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4409;

--
-- AUTO_INCREMENT for table `tbl_obat`
--
ALTER TABLE `tbl_obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_obat_mobile`
--
ALTER TABLE `tbl_obat_mobile`
  MODIFY `id_obat_mobile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_pajak`
--
ALTER TABLE `tbl_pajak`
  MODIFY `id_pajak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_pembayaran_hutang`
--
ALTER TABLE `tbl_pembayaran_hutang`
  MODIFY `id_pembayaran_hutang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_pembayaran_piutang`
--
ALTER TABLE `tbl_pembayaran_piutang`
  MODIFY `id_pembayaran_piutang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tbl_pesanan_mobile`
--
ALTER TABLE `tbl_pesanan_mobile`
  MODIFY `id_pesanan_mobile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_piutang_awal`
--
ALTER TABLE `tbl_piutang_awal`
  MODIFY `id_piutang_awal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `id_registration` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_registration_seller`
--
ALTER TABLE `tbl_registration_seller`
  MODIFY `id_registration_seller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_resep_mobile`
--
ALTER TABLE `tbl_resep_mobile`
  MODIFY `id_resep_mobile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_retur`
--
ALTER TABLE `tbl_retur`
  MODIFY `id_retur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_retur_beli`
--
ALTER TABLE `tbl_retur_beli`
  MODIFY `id_retur_beli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_role_user`
--
ALTER TABLE `tbl_role_user`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_saldo_awal`
--
ALTER TABLE `tbl_saldo_awal`
  MODIFY `id_saldo_awal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `id_sales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_setting_akun_dasar`
--
ALTER TABLE `tbl_setting_akun_dasar`
  MODIFY `id_setting_akun_dasar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_akun_hutang_piutang`
--
ALTER TABLE `tbl_setting_akun_hutang_piutang`
  MODIFY `id_setting_akun_hutang_piutang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_akun_modal_laba`
--
ALTER TABLE `tbl_setting_akun_modal_laba`
  MODIFY `id_setting_akun_modal_laba` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_akun_pembelian`
--
ALTER TABLE `tbl_setting_akun_pembelian`
  MODIFY `id_setting_akun_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_akun_pembelian_konsinyasi`
--
ALTER TABLE `tbl_setting_akun_pembelian_konsinyasi`
  MODIFY `id_setting_akun_pembelian_konsinyasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_akun_penjualan`
--
ALTER TABLE `tbl_setting_akun_penjualan`
  MODIFY `id_setting_akun_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_akun_penjualan_konsinyasi`
--
ALTER TABLE `tbl_setting_akun_penjualan_konsinyasi`
  MODIFY `id_setting_akun_penjualan_konsinyasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_akun_retur_pembelian`
--
ALTER TABLE `tbl_setting_akun_retur_pembelian`
  MODIFY `id_setting_akun_retur_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_akun_retur_pembelian_konsinyasi`
--
ALTER TABLE `tbl_setting_akun_retur_pembelian_konsinyasi`
  MODIFY `id_setting_akun_retur_pembelian_konsinyasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_akun_retur_penjualan`
--
ALTER TABLE `tbl_setting_akun_retur_penjualan`
  MODIFY `id_setting_akun_retur_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_akun_retur_penjualan_konsinyasi`
--
ALTER TABLE `tbl_setting_akun_retur_penjualan_konsinyasi`
  MODIFY `id_setting_akun_retur_penjualan_konsinyasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_sp`
--
ALTER TABLE `tbl_sp`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_spj`
--
ALTER TABLE `tbl_spj`
  MODIFY `id_spj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_stock_mutasi`
--
ALTER TABLE `tbl_stock_mutasi`
  MODIFY `id_stock_mutasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_stock_opname`
--
ALTER TABLE `tbl_stock_opname`
  MODIFY `id_stock_opname` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_stok_awal`
--
ALTER TABLE `tbl_stok_awal`
  MODIFY `id_stok_awal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sub_golongan`
--
ALTER TABLE `tbl_sub_golongan`
  MODIFY `id_sub_golongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_temp_saldo_awal`
--
ALTER TABLE `tbl_temp_saldo_awal`
  MODIFY `id_temp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_user_mobile`
--
ALTER TABLE `tbl_user_mobile`
  MODIFY `id_user_mobile` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  MODIFY `id_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akun`
--
ALTER TABLE `akun`
  ADD CONSTRAINT `akun_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `tbl_akun_akuntansi`
--
ALTER TABLE `tbl_akun_akuntansi`
  ADD CONSTRAINT `tbl_akun_akuntansi_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_akun_akuntansi_ibfk_2` FOREIGN KEY (`id_jenis_akun_akuntansi`) REFERENCES `tbl_jenis_akun_akuntansi` (`id_jenis_akun_akuntansi`);

--
-- Constraints for table `tbl_apotek`
--
ALTER TABLE `tbl_apotek`
  ADD CONSTRAINT `tbl_apotek_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_batch_obat`
--
ALTER TABLE `tbl_batch_obat`
  ADD CONSTRAINT `tbl_batch_obat_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_batch_obat_ibfk_4` FOREIGN KEY (`id_supplier`) REFERENCES `tbl_supplier` (`id_supplier`);

--
-- Constraints for table `tbl_detail_batch`
--
ALTER TABLE `tbl_detail_batch`
  ADD CONSTRAINT `tbl_detail_batch_ibfk_1` FOREIGN KEY (`id_batch`) REFERENCES `tbl_batch_obat` (`id_batch_obat`),
  ADD CONSTRAINT `tbl_detail_batch_ibfk_2` FOREIGN KEY (`id_rak`) REFERENCES `tbl_rak` (`id_rak`),
  ADD CONSTRAINT `tbl_detail_batch_ibfk_3` FOREIGN KEY (`id_satuan`) REFERENCES `tbl_satuan` (`id_satuan`),
  ADD CONSTRAINT `tbl_detail_batch_ibfk_4` FOREIGN KEY (`id_obat`) REFERENCES `tbl_obat` (`id_obat`);

--
-- Constraints for table `tbl_detail_obat`
--
ALTER TABLE `tbl_detail_obat`
  ADD CONSTRAINT `tbl_detail_obat_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `tbl_obat` (`id_obat`),
  ADD CONSTRAINT `tbl_detail_obat_ibfk_2` FOREIGN KEY (`satuan_1`) REFERENCES `tbl_satuan` (`id_satuan`),
  ADD CONSTRAINT `tbl_detail_obat_ibfk_3` FOREIGN KEY (`satuan_2`) REFERENCES `tbl_satuan` (`id_satuan`),
  ADD CONSTRAINT `tbl_detail_obat_ibfk_4` FOREIGN KEY (`satuan_3`) REFERENCES `tbl_satuan` (`id_satuan`);

--
-- Constraints for table `tbl_detail_paket`
--
ALTER TABLE `tbl_detail_paket`
  ADD CONSTRAINT `tbl_detail_paket_ibfk_1` FOREIGN KEY (`id_paket`) REFERENCES `tbl_paket` (`id_paket`),
  ADD CONSTRAINT `tbl_detail_paket_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `tbl_obat` (`id_obat`),
  ADD CONSTRAINT `tbl_detail_paket_ibfk_3` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_detail_penjualan`
--
ALTER TABLE `tbl_detail_penjualan`
  ADD CONSTRAINT `tbl_detail_penjualan_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `tbl_penjualan` (`id_penjualan`);

--
-- Constraints for table `tbl_detail_sp`
--
ALTER TABLE `tbl_detail_sp`
  ADD CONSTRAINT `tbl_detail_sp_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `tbl_sp` (`id_sp`),
  ADD CONSTRAINT `tbl_detail_sp_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `tbl_obat` (`id_obat`),
  ADD CONSTRAINT `tbl_detail_sp_ibfk_3` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_detail_sp_ibfk_4` FOREIGN KEY (`id_satuan`) REFERENCES `tbl_satuan` (`id_satuan`);

--
-- Constraints for table `tbl_detail_spj`
--
ALTER TABLE `tbl_detail_spj`
  ADD CONSTRAINT `tbl_detail_spj_ibfk_1` FOREIGN KEY (`id_spj`) REFERENCES `tbl_spj` (`id_spj`),
  ADD CONSTRAINT `tbl_detail_spj_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_detail_spj_ibfk_3` FOREIGN KEY (`id_satuan`) REFERENCES `tbl_satuan` (`id_satuan`),
  ADD CONSTRAINT `tbl_detail_spj_ibfk_4` FOREIGN KEY (`id_obat`) REFERENCES `tbl_obat` (`id_obat`);

--
-- Constraints for table `tbl_dokter`
--
ALTER TABLE `tbl_dokter`
  ADD CONSTRAINT `tbl_dokter_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_gudang`
--
ALTER TABLE `tbl_gudang`
  ADD CONSTRAINT `tbl_gudang_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_history_stok`
--
ALTER TABLE `tbl_history_stok`
  ADD CONSTRAINT `tbl_history_stok_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_history_stok_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `tbl_obat` (`id_obat`),
  ADD CONSTRAINT `tbl_history_stok_ibfk_3` FOREIGN KEY (`id_rak`) REFERENCES `tbl_rak` (`id_rak`);

--
-- Constraints for table `tbl_hutang_awal`
--
ALTER TABLE `tbl_hutang_awal`
  ADD CONSTRAINT `tbl_hutang_awal_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `tbl_supplier` (`id_supplier`),
  ADD CONSTRAINT `tbl_hutang_awal_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_item_detail`
--
ALTER TABLE `tbl_item_detail`
  ADD CONSTRAINT `tbl_item_detail_ibfk_1` FOREIGN KEY (`id_detail_penjualan`) REFERENCES `tbl_detail_penjualan` (`id_detail_penjualan`);

--
-- Constraints for table `tbl_jasa`
--
ALTER TABLE `tbl_jasa`
  ADD CONSTRAINT `tbl_jasa_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_jenis_obat`
--
ALTER TABLE `tbl_jenis_obat`
  ADD CONSTRAINT `tbl_jenis_obat_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_jurnal`
--
ALTER TABLE `tbl_jurnal`
  ADD CONSTRAINT `tbl_jurnal_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_jurnal_ibfk_2` FOREIGN KEY (`id_akun_akuntansi`) REFERENCES `tbl_akun_akuntansi` (`id_akun_akuntansi`);

--
-- Constraints for table `tbl_members`
--
ALTER TABLE `tbl_members`
  ADD CONSTRAINT `tbl_members_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`);

--
-- Constraints for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  ADD CONSTRAINT `tbl_merk_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_mutasi_saldo`
--
ALTER TABLE `tbl_mutasi_saldo`
  ADD CONSTRAINT `tbl_mutasi_saldo_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_mutasi_saldo_ibfk_2` FOREIGN KEY (`id_penerima`) REFERENCES `tbl_akun_akuntansi` (`id_akun_akuntansi`);

--
-- Constraints for table `tbl_neraca`
--
ALTER TABLE `tbl_neraca`
  ADD CONSTRAINT `tbl_neraca_ibfk_1` FOREIGN KEY (`id_akun_akuntansi`) REFERENCES `tbl_akun_akuntansi` (`id_akun_akuntansi`),
  ADD CONSTRAINT `tbl_neraca_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `tbl_akun_akuntansi` (`id_member`);

--
-- Constraints for table `tbl_obat`
--
ALTER TABLE `tbl_obat`
  ADD CONSTRAINT `tbl_obat_ibfk_2` FOREIGN KEY (`id_sub_golongan`) REFERENCES `tbl_sub_golongan` (`id_sub_golongan`),
  ADD CONSTRAINT `tbl_obat_ibfk_3` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_obat_ibfk_4` FOREIGN KEY (`id_merk`) REFERENCES `tbl_merk` (`id_merk`),
  ADD CONSTRAINT `tbl_obat_ibfk_5` FOREIGN KEY (`id_jenis_obat`) REFERENCES `tbl_jenis_obat` (`id_jenis_obat`),
  ADD CONSTRAINT `tbl_obat_ibfk_6` FOREIGN KEY (`id_golongan`) REFERENCES `tbl_golongan` (`id_golongan`);

--
-- Constraints for table `tbl_obat_mobile`
--
ALTER TABLE `tbl_obat_mobile`
  ADD CONSTRAINT `tbl_obat_mobile_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `tbl_obat` (`id_obat`),
  ADD CONSTRAINT `tbl_obat_mobile_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_obat_mobile_ibfk_3` FOREIGN KEY (`id_satuan`) REFERENCES `tbl_satuan` (`id_satuan`);

--
-- Constraints for table `tbl_pajak`
--
ALTER TABLE `tbl_pajak`
  ADD CONSTRAINT `tbl_pajak_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  ADD CONSTRAINT `tbl_paket_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  ADD CONSTRAINT `tbl_pasien_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD CONSTRAINT `tbl_pelanggan_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_pembayaran_hutang`
--
ALTER TABLE `tbl_pembayaran_hutang`
  ADD CONSTRAINT `tbl_pembayaran_hutang_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_pembayaran_hutang_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `tbl_supplier` (`id_supplier`),
  ADD CONSTRAINT `tbl_pembayaran_hutang_ibfk_3` FOREIGN KEY (`id_batch_obat`) REFERENCES `tbl_batch_obat` (`id_batch_obat`);

--
-- Constraints for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD CONSTRAINT `tbl_penjualan_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_piutang_awal`
--
ALTER TABLE `tbl_piutang_awal`
  ADD CONSTRAINT `tbl_piutang_awal_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_piutang_awal_ibfk_2` FOREIGN KEY (`id_pelanggan`) REFERENCES `tbl_pelanggan` (`id_pelanggan`);

--
-- Constraints for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD CONSTRAINT `tbl_rak_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_rak_ibfk_2` FOREIGN KEY (`id_gudang`) REFERENCES `tbl_gudang` (`id_gudang`);

--
-- Constraints for table `tbl_retur`
--
ALTER TABLE `tbl_retur`
  ADD CONSTRAINT `tbl_retur_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD CONSTRAINT `tbl_sales_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  ADD CONSTRAINT `tbl_satuan_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_setting_akun_dasar`
--
ALTER TABLE `tbl_setting_akun_dasar`
  ADD CONSTRAINT `tbl_setting_akun_dasar_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_setting_akun_hutang_piutang`
--
ALTER TABLE `tbl_setting_akun_hutang_piutang`
  ADD CONSTRAINT `tbl_setting_akun_hutang_piutang_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_setting_akun_modal_laba`
--
ALTER TABLE `tbl_setting_akun_modal_laba`
  ADD CONSTRAINT `tbl_setting_akun_modal_laba_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_setting_akun_pembelian`
--
ALTER TABLE `tbl_setting_akun_pembelian`
  ADD CONSTRAINT `tbl_setting_akun_pembelian_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_setting_akun_pembelian_konsinyasi`
--
ALTER TABLE `tbl_setting_akun_pembelian_konsinyasi`
  ADD CONSTRAINT `tbl_setting_akun_pembelian_konsinyasi_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_setting_akun_penjualan`
--
ALTER TABLE `tbl_setting_akun_penjualan`
  ADD CONSTRAINT `tbl_setting_akun_penjualan_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_setting_akun_penjualan_konsinyasi`
--
ALTER TABLE `tbl_setting_akun_penjualan_konsinyasi`
  ADD CONSTRAINT `tbl_setting_akun_penjualan_konsinyasi_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_setting_akun_retur_pembelian`
--
ALTER TABLE `tbl_setting_akun_retur_pembelian`
  ADD CONSTRAINT `tbl_setting_akun_retur_pembelian_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_setting_akun_retur_pembelian_konsinyasi`
--
ALTER TABLE `tbl_setting_akun_retur_pembelian_konsinyasi`
  ADD CONSTRAINT `tbl_setting_akun_retur_pembelian_konsinyasi_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_setting_akun_retur_penjualan`
--
ALTER TABLE `tbl_setting_akun_retur_penjualan`
  ADD CONSTRAINT `tbl_setting_akun_retur_penjualan_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_setting_akun_retur_penjualan_konsinyasi`
--
ALTER TABLE `tbl_setting_akun_retur_penjualan_konsinyasi`
  ADD CONSTRAINT `tbl_setting_akun_retur_penjualan_konsinyasi_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_sp`
--
ALTER TABLE `tbl_sp`
  ADD CONSTRAINT `tbl_sp_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_sp_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `tbl_supplier` (`id_supplier`);

--
-- Constraints for table `tbl_spj`
--
ALTER TABLE `tbl_spj`
  ADD CONSTRAINT `tbl_spj_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `tbl_pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `tbl_spj_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_stock_mutasi`
--
ALTER TABLE `tbl_stock_mutasi`
  ADD CONSTRAINT `tbl_stock_mutasi_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `tbl_obat` (`id_obat`),
  ADD CONSTRAINT `tbl_stock_mutasi_ibfk_3` FOREIGN KEY (`rak_sesudah`) REFERENCES `tbl_rak` (`id_rak`),
  ADD CONSTRAINT `tbl_stock_mutasi_ibfk_4` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_stock_opname`
--
ALTER TABLE `tbl_stock_opname`
  ADD CONSTRAINT `tbl_stock_opname_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_stock_opname_ibfk_2` FOREIGN KEY (`id_rak`) REFERENCES `tbl_rak` (`id_rak`),
  ADD CONSTRAINT `tbl_stock_opname_ibfk_3` FOREIGN KEY (`id_obat`) REFERENCES `tbl_obat` (`id_obat`);

--
-- Constraints for table `tbl_stok_awal`
--
ALTER TABLE `tbl_stok_awal`
  ADD CONSTRAINT `tbl_stok_awal_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `tbl_obat` (`id_obat`),
  ADD CONSTRAINT `tbl_stok_awal_ibfk_2` FOREIGN KEY (`id_rak`) REFERENCES `tbl_rak` (`id_rak`),
  ADD CONSTRAINT `tbl_stok_awal_ibfk_3` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`),
  ADD CONSTRAINT `tbl_stok_awal_ibfk_4` FOREIGN KEY (`id_satuan`) REFERENCES `tbl_satuan` (`id_satuan`);

--
-- Constraints for table `tbl_sub_golongan`
--
ALTER TABLE `tbl_sub_golongan`
  ADD CONSTRAINT `tbl_sub_golongan_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD CONSTRAINT `tbl_supplier_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_temp_saldo_awal`
--
ALTER TABLE `tbl_temp_saldo_awal`
  ADD CONSTRAINT `tbl_temp_saldo_awal_ibfk_1` FOREIGN KEY (`id_akun_akuntansi`) REFERENCES `tbl_akun_akuntansi` (`id_akun_akuntansi`),
  ADD CONSTRAINT `tbl_temp_saldo_awal_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `tbl_members` (`id_members`);

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `tbl_role_user` (`id_role`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
