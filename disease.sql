-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 07:08 AM
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
-- Database: `new`
--

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `sno` int(11) NOT NULL,
  `diseas` text NOT NULL,
  `precaution1` text NOT NULL,
  `precaution2` varchar(100) DEFAULT NULL,
  `precaution3` varchar(100) DEFAULT NULL,
  `helpful` varchar(200) NOT NULL,
  `medicine` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`sno`, `diseas`, `precaution1`, `precaution2`, `precaution3`, `helpful`, `medicine`) VALUES
(1, 'Acne and Rosacea', 'Learn Your Triggers', 'Avoid Products That Dry Skin', 'Use Sunscreen Every Day', 'https://www.healthline.com/health/skin/rosacea#types', 'Azelaic acid:-Metronidazole:'),
(2, 'Actinic Keratosis Basal Cell Carcinoma and other Malignant Lesions', 'People should avoid excessive exposure to UV light from tanning either indoors or outdoors.', 'A person should take proper precautions when outside, such as wearing hats, loose-fitting clothes th', NULL, 'https://www.karger.com/Article/Fulltext/496329#:~:text=Actinic%20keratoses%20(AKs)%2C%20which,high%20and%20continuously%20increasing%20prevalence.', 'diclofenac gel-imiquimod cream'),
(3, 'Atopic Dermatitis', 'Daily moisturizing and bathing are an important part of managing    atopic dermatitis.\r\n', 'Avoid scrubbing', NULL, 'https://nationaleczema.org/atopic-dermatitis-101/#:~:text=Daily%20moisturizing%20and%20bathing%20are,for%2010%20to%2015%20minutes', 'A topical corticosteroid cream or ointment-Protopic (tacrolimus) and elidel (pimecrolimus)'),
(4, 'Bullous Disease', 'Limit activities if needed', ' Avoid Sun exposure', 'Watch what you eat', 'https://www.mayoclinic.org/diseases-conditions/bullous-pemphigoid/diagnosis-treatment/drc-20350419', 'Corticosteroids-Steroid sparing drugs'),
(5, 'Eczema', ' Moisturise your skin often', 'Avoid sudden changes in temperature or humidity.', 'Avoid scratchy materials such as wool.', 'https://www.medicalnewstoday.com/articles/14417', 'antihistamines-moisturiser'),
(6, 'Exanthems and Drug Eruptions', 'Take cool showers or apply cool compresses.', 'Apply calamine lotion.', 'Take an antihistamine, such as diphenhydramine.', 'https://www.skinsight.com/skin-conditions/adult/drug-eruption', 'exanthematous-corticosteroids'),
(7, 'Hair Loss Photos Alopecia and other Hair Diseases', 'Wear wraparound glasses to protect the eyes from the sun and debris which the eyebrows and eyelashes would normally defend against.', 'Use ointment inside the nose to keep membranes moist and to protect against organisms that are norma', NULL, 'https://www.medicalnewstoday.com/articles/70956#treatment', 'Minoxidil-Rogaine'),
(8, 'Herpes HPV and other STDs', ' Always use condoms and dental dams during oral, anal, and vaginal sex\r\n', 'Don\'t have sex during a herpes outbreak, even with a condom.', NULL, 'https://www.plannedparenthood.org/learn/stds-hiv-safer-sex/herpes/how-is-herpes-prevented#:~:text=Always%20use%20condoms%20and%20dental,outbreak%2C%20even%20with%20a%20condom', 'No drug can get rid of the herpes virus'),
(9, 'Light diseases and disorders of pigmentation', 'Avoid exposure to the sun', 'Avoid picking at the skin', NULL, 'https://www.medicalnewstoday.com/articles/323808#treatment', 'corticosteroids-narrowband ultraviolet B'),
(10, 'Lupus and other Connective Tissue diseases', 'Protect hands from cold. I.e wear gloves.', 'No Smoking', NULL, 'https://www.mayoclinic.org/diseases-conditions/mixed-connective-tissue-disease/diagnosis-treatment/drc-20375152', 'Corticosteroids-Anti malaria drugs'),
(11, 'Melanoma skin cancer Nevi and Moles', 'Avoid the sun during the middle of the day', 'Wear sunscreen year-round', 'Wear protective clothing', 'https://www.mayoclinic.org/diseases-conditions/melanoma/symptoms-causes/syc-20374884', 'vemurafenib (Zelboraf)-cobimetinib (Cotellic)'),
(12, 'Nail Fungus and other Nail Disease', 'Wash your hands and feet regularly', 'Trim nails straight across, smooth the edges with a file and file down thickened areas. Disinfect yo', 'Wear sweat-absorbing socks or change your socks throughout the day.', 'https://www.mayoclinic.org/diseases-conditions/nail-fungus/symptoms-causes/syc-20353294', 'terbinafine (Lamisil)-fluconazole (Diflucan)'),
(13, 'Psoriasis pictures Lichen Planus and related diseases', 'Use Moisturizing Lotions.', 'Take Care of Your Skin and Scalp', 'Avoid Medications That Cause Flare-Ups', 'https://www.webmd.com/skin-problems-and-treatments/psoriasis/prevent-flare-ups', 'Retinoids-Salicylic acid'),
(14, 'Seborrheic Keratoses and other Benign Tumors', 'liquid nitrogen to freeze off the growth.', 'an electrical current to scrape off the growth. The area is numbed before the procedure.', 'a scoop-like surgical instrument to scrape off the growth. It’s sometimes used with electrosurgery.', 'https://www.healthline.com/health/seborrheic-keratosis#TOC_TITLE_HDR_1', 'Cryosurgery-Curettage'),
(15, 'Tinea Ringworm Candidiasis and other Fungal Infections', 'you should keep your skin clean and dry.', 'Avoid physical contact with someone who has ringworm', 'You should always wear shoes, like flip-flops, in public showers.', 'https://www.healthline.com/health/tinea-corporis#TOC_TITLE_HDR_1', 'Terbinafine (Lamisil)-traconazole (Sporanox)'),
(16, 'Urticaria Hives', 'Wear loose, light clothing.', 'Avoid scratching or using harsh soaps.', 'Soothe the affected area with a bath, fan, cool cloth, lotion or anti-itch cream.', 'https://www.medicalnewstoday.com/articles/157260#causes', 'aspirin-ACE inhibitors'),
(17, 'Vascular Tumors', 'keep it cleans and clear.', NULL, NULL, 'https://www.cancer.gov/types/soft-tissue-sarcoma/hp/child-vascular-tumors-treatment-pdq', 'Beta blocker drugs-Corticosteroid'),
(18, 'Warts Molluscum and other Viral Infections', ' you should always have your doctor examine any skin lesions that last longer than a few days.', 'apply creams containing acids or chemicals to the bumps to induce peeling of the top layers of the s', 'Freeze the bumps off.', 'https://www.healthline.com/health/molluscum-contagiosum', 'Salicylic acid-warts');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
