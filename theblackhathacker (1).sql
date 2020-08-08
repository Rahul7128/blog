-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2020 at 04:02 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theblackhathacker`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'test', 'meraenaam@gmail.com', '4545454545', 'vnvcncvnc', '2020-08-01 17:15:58'),
(3, 'test', 'test@email.com', '8989898989', 'fghfhbf', '2020-08-02 10:05:10'),
(4, 'test', 'test@email.com', '8989898989', 'ghghghg', '2020-08-02 10:09:59'),
(5, 'Rahul Sangwan', 'jaatr991@gmail.com', '7015515973', 'please help me in being an ethical hacker i will pay you fr it 700 per month\r\n', '2020-08-05 13:46:31'),
(6, 'Rahul Sangwan', 'jaatr991@gmail.com', '7015515973', 'Hello call me now', '2020-08-07 21:13:34'),
(7, 'Rahul Sangwan', 'jaatr991@gmail.com', '7015515973', 'Hello call me now', '2020-08-07 21:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(50) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Ethical Hacker', 'Life of Computers', 'ethical-hacker', 'Certified Ethical Hacker (CEH) is a qualification obtained by demonstrating knowledge of assessing the security of computer systems by looking for weaknesses and vulnerabilities in target systems, using the same knowledge and tools as a malicious hacker, but in a lawful and legitimate manner to assess the security posture of a target system. This knowledge is assessed by answering multiple choice questions regarding various ethical hacking techniques and tools. The code for the C|EH exam is 312-50. This certification has now been made a baseline with a progression to the C|EH (Practical), launched in March 2018, a test of penetration testing skills in a lab environment where the candidate must demonstrate the ability to apply techniques and use penetration testing tools to compromise various simulated systems within a virtual environment.', '2.jpg', '2020-08-03 20:58:38'),
(2, 'Best operating systems for Ethical Hackers', 'If you are also an ethical hacker you should see this', 'best-os-for-ethical-hackers', 'In this article, the ten best operating systems used by ethical hackers and penetration testers are featured. All of them are free, open source, are based on the Linux kernel and are bundled with many hacking tools.\r\n                 \r\n                 \r\n              1. Kali Linux\r\nKali Linux is based on the Debian-Linux distribution, and is especially designed for digital forensics and penetration testing. It is maintained and updated on a regular basis by Offensive Security Ltd, under the leadership of Mati Aharoni, Devon Kearns, and Raphael Hertzog who are core developers. Kali comes pre-installed with more than 300 penetration testing programs and can be installed as a primary operating system on the hard disk, live CD/USB and can even run as a virtual machine using some virtualization software.\r\nKali Linux supports both 32-bit and 64-bit images for use with x86 machines, and even supports various development boards like Raspberry Pi, BeagleBone, Odroid, CuBox, etc.\r\n\r\n\r\n2. BackBox\r\nBackBox is an Ubuntu-based Linux distribution aimed at assisting ethical hackers and penetration testers in security assessments. BackBox OS is designed with the objective of being faster, easily operable and having a minimal desktop environment. The key advantage of BackBox is that its own software repositories are updated at regular intervals to keep the distribution stable and popular for real-world operations.\r\nThe BackBox distribution consists of more than 70 tools for tasks ranging from Web analysis and network analysis to stress testing, sniffing, vulnerability assessment, forensics and exploitation.\r\n\r\n3. Parrot Security Operating System\r\nParrot Security OS is based on Debian GNU/Linux combined with the Frozenbox OS and Kali Linux to provide ethical hackers the best-in-class experience of penetration and security testing in real-world environments. It is also designed to provide vulnerability assessment and mitigation, computer forensics and anonymous Web browsing, by the Frozenbox team.\r\nParrot Security OS makes use of Kali repositories for all sorts of package updates and to integrate new tools. It makes use of the MATE desktop environment using the LightDM display manager to provide an easy-to-use GUI and lightweight environment for computer system analysts to perform all sorts of forensics, vulnerability assessment and cryptography. This OS is known for being highly customisable and for its strong community support.\r\n\r\n4. DEFT Linux\r\nDEFT (Digital Evidence and Forensics Toolkit) is based on GNU Linux and DART (Digital Advanced Response Toolkit), a forensics system comprising some of the best tools for forensics and incident response. DEFT Linux is especially designed for carrying out forensics tasks and runs live on systems without tampering with the hard disk or any other storage media. It consists of more than 100 highly-rated forensics and hacking tools.\r\nIt is currently developed and maintained by Stefano Fratepietro along with other developers, and is available free of charge. It is used actively by ethical hackers, pen testers, government officers, IT auditors and even the military for carrying out various forensics based systems analysis.\r\n\r\n5.Samurai Web Testing Framework\r\nSamurai Web Testing Framework primarily focuses on testing the security of Web applications and comprises lots of Web assessment and exploitation tools. The credit for developing the Samurai Web Testing Framework goes to Kevin Johnson, Justin Searle and Frank DiMaggio. The Samurai Framework provides ethical hackers and pen testers with a live Linux environment that is preconfigured to run as a virtual machine to perform Web penetration testing.\r\nThe Samurai Web Testing Framework includes popular testing tools like Fierce Domain Scanner and Maltego for Reconnaissance, WebScarab and Ratproxy for mapping, w3af and Burp for discovery, and BeEF and AJAXShell for exploitation.\r\nThe framework is based on Ubuntu 9.04, is fully open source and receives regular updates with regard to products.\r\n\r\n6. Network Security Toolkit\r\nThe Network Security Toolkit (NST), based on Fedora, is a live bootable DVD/USB Flash drive consisting of the top 125 open source security tools provided by insecure.org to perform network security, penetration testing, network diagnostics and monitoring of day-to-day tasks. The main objective behind the development of NST is to provide network/systems administrators a combined set of open source security tools to carry out operations like network traffic analysis, intrusion detection, network scanning and security patching.\r\nNST has been developed by Ronald W. Henderson and Paul Blankenbaker. It provides a Web interface known as NST WUI and all the tools can be accessed via the Web page. NST is equipped with intelligent package management capabilities based on Fedora and maintains its own repositories of additional packages.\r\n\r\n7. BlackArch Linux\r\nBlackArch is an Arch Linux-based security and penetration testing distribution, which consists of more than 1600 tools and is regarded as the first choice distribution among security researchers to do Web and applications based security testing. It is a strong alternative to Kali Linux and Backbox in terms of the variety of its tools and ease of use.\r\nBlackArch is basically a lightweight extension to Arch Linux for security researchers, as the tool set within the former is distributed as the Arch Linux unofficial user repository and can even be installed on top of existing Arch Linux.\r\nArch Linux can be installed on 32-bit and 64-bit machines including ARM based development boards like Raspberry Pi, BeagleBone, etc.\r\n\r\n8. Cyborg Hawk Linux\r\nCyborg Hawk Linux is regarded as the most advanced, powerful and well-managed Ubuntu based penetration testing Linux distribution created by Ztrela Knowledge Solutions Pvt Ltd. The distribution consists of more than 700 tools dedicated to penetration testing, and more than 300 tools for mobile security and malware analysis.\r\nCyborg Hawk Linux is completely open source and free to use, and the latest version comes with its own repository. The distribution is highly reliable and stable in the eyes of ethical hackers and pen testers for real-world stress testing of networks, malware analysis and finding out back doors.\r\n\r\n9. GnackTrack\r\nGnackTrack is an Ubuntu based penetration testing Linux distribution which includes lots of utilities for penetration testing. It has a GUI based GNOME desktop for easy interfacing. GnackTrack is an open source and free project, and contains various significant penetration testing tools like Metaspoilt, Armitage, wa3f and many more.\r\n10. NodeZero\r\nNodeZero is an open source Ubuntu based penetration testing Linux distro, which makes use of Ubuntu repositories for updates. It consists of more than 300 penetration testing tools as well as a set of basic services that are required for carrying out all sorts of operations. The Linux distribution is available for download as a dual-arch live DVD ISO image, and can run on both 32-bit and 64-bit computing architectures.\r\n\r\n', '3.jpg', '2020-08-02 13:10:20'),
(3, 'Starting with Kali Linux Operating System', 'It is Amazing tool for ethical hackers specially because of its simplicity and tools.', 'kali-linux-os', 'Kali Linux is a Debian-derived Linux distribution designed for digital forensics and penetration testing.It is maintained and funded by Offensive Security.\r\nKali Linux has over 600 preinstalled penetration-testing programs, including Armitage (a graphical cyber attack management tool), Nmap (a port scanner), Wireshark (a packet analyzer), John the Ripper (a password cracker), Aircrack-ng (a software suite for penetration-testing wireless LANs), Burp suite and OWASP ZAP web application security scanners.\r\n\r\nRequirements\r\nKali Linux requires a minimum of 3.6GB hard disk space for installation depending of the version, Version 2020.2 requires at least 3.6GB.[17]\r\nA minimum of 257MB RAM for i386 and AMD64 architectures.\r\nA bootable CD-DVD drive or a USB stick.\r\n\r\n\r\n\r\nRecommended\r\nThe recommended hardware specification for smooth run are:\r\n\r\n20 GB of hard disk space, SSD preferred\r\nAt least 2048 MB of RAM\r\n\r\n\r\n\r\n\r\nSupported platforms\r\nKali Linux is distributed in 32-bit and 64-bit images for use on hosts based on the x86 instruction set and as an image for the ARM architecture for use on the Beagle Board computer and on Samsung\'s ARM Chromebook.[18]\r\n\r\nThe developers of Kali Linux aim to make Kali Linux available for even more ARM devices.[12]\r\n\r\nKali Linux is already available for Asus Chromebook Flip C100P, BeagleBone Black, HP Chromebook, CubieBoard 2, CuBox, CuBox-i, Raspberry Pi, EfikaMX, Odroid U2, Odroid XU, Odroid XU3, Samsung Chromebook, Utilite Pro, Galaxy Note 10.1, and SS808.[19]\r\n\r\nWith the arrival of Kali NetHunter, Kali Linux is also officially available on Android devices such as the Nexus 5, Nexus 6, Nexus 7, Nexus 9, Nexus 10, OnePlus One, and some Samsung Galaxy models. It has also been made available for more Android devices through unofficial community builds.\r\n\r\nKali Linux is available on Windows 10, on top of Windows Subsystem for Linux (WSL). The official Kali distribution for Windows can be downloaded from the Microsoft Store.\r\n\r\n\r\n\r\nFeatures\r\nKali Linux has a dedicated project set aside for compatibility and porting to specific Android devices, called Kali NetHunter.[21]\r\n\r\nIt is the first Open Source Android penetration testing platform for Nexus devices, created as a joint effort between the Kali community member \"BinkyBear\" and Offensive Security. It supports Wireless 802.11 frame injection, one-click MANA Evil Access Point setups, HID keyboard (Teensy like attacks), as well as Bad USB MITM attacks.[21]\r\n\r\nBackTrack (Kali\'s predecessor) contained a mode known as forensic mode, which was carried over to Kali via live boot. This mode is very popular for many reasons, partly because many Kali users already have a bootable Kali USB drive or CD, and this option makes it easy to apply Kali to a forensic job. When booted in forensic mode, the system doesn\'t touch the internal hard drive or swap space and auto mounting is disabled. However, the developers recommend that users test these features extensively before using Kali for real world forensics.\r\n\r\n\r\n\r\n\r\n\r\n\r\nTools\r\nKali Linux includes security tools, such as:[6]\r\n\r\nAircrack-ng\r\nArmitage\r\nBurp suite\r\nCisco Global Exploiter\r\nEttercap\r\nHashcat\r\nJohn the Ripper\r\nKismet\r\nMaltego\r\nMetasploit framework\r\nNmap\r\nOWASP ZAP\r\nSocial engineering tools\r\nSqlmap\r\nWireshark\r\nHydra\r\nReverse engineering tools\r\nForemost\r\nVolatility\r\nThese tools can be used for a number of purposes, most of which involve exploiting a victim network or application, performing network discovery, or scanning a target IP address. Many tools from the previous version (BackTrack) were eliminated to focus on the most popular penetration testing applications.\r\n\r\nOffensive Security provides a book, Kali Linux Revealed,[23] and makes it available for free download.[24]\r\n\r\n\r\n\r\n\r\n', 'kali.jpg', '2020-08-02 13:32:17'),
(4, 'Tools for Information Gathering in Kali Linux', 'These tools are really fantastic,everyone should try them.', 'Tools-kali-linux', 'Information Gathering\r\n \r\n\r\nace-voip                \r\n         Amap\r\nAPT2\r\narp-scan\r\nAutomater\r\nbing-ip2hosts\r\nbraa\r\nCaseFile\r\nCDPSnarf\r\ncisco-torch\r\ncopy-router-config\r\nDMitry\r\ndnmap\r\ndnsenum\r\ndnsmap\r\nDNSRecon\r\ndnstracer\r\ndnswalk\r\nDotDotPwn\r\nenum4linux\r\nenumIAX\r\nEyeWitness\r\nFaraday\r\nFierce\r\nFirewalk\r\nfragroute\r\nfragrouter\r\nGhost Phisher\r\nGoLismero\r\ngoofile\r\nhping3\r\nident-user-enum\r\nInSpy\r\nInTrace\r\niSMTP\r\nlbd\r\nMaltego Teeth\r\nmasscan\r\nMetagoofil\r\nMiranda\r\nnbtscan-unixwiz\r\nNikto\r\nNmap\r\nntop\r\nOSRFramework\r\np0f\r\nParsero\r\nRecon-ng\r\nSET\r\nSMBMap\r\nsmtp-user-enum\r\nsnmp-check\r\nSPARTA\r\nsslcaudit\r\nSSLsplit\r\nsslstrip\r\nSSLyze\r\nSublist3r\r\nTHC-IPV6\r\ntheHarvester\r\nTLSSLed\r\ntwofi\r\nUnicornscan\r\nURLCrazy\r\nWireshark\r\nWOL-E\r\nXplico', 'info.jpg', '2020-08-08 16:23:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
