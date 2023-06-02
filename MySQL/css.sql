-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 Haz 2023, 00:25:54
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `css`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `content` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `articles`
--

INSERT INTO `articles` (`id`, `title`, `author`, `content`, `created_date`) VALUES
(3, 'sagfgassga', 'admin', '<p>asgsgasgasgaasg</p>\r\n', '2023-05-26 20:47:28'),
(4, 'Protecting Children: Ending the Scourge of Child Abuse', 'Amazon', '<p><img alt=\"\" src=\"https://www.verywellfamily.com/thmb/5e9tkLF-N3cMrlQjK7iOz09WAs8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/482187051-56a258623df78cf7727492b4.jpg\" /><br />\r\nIntroduction: Childhood is a time of wonder, innocence, and endless possibilities. However, for far too many children, this precious phase is marred by the haunting reality of child abuse. Child abuse refers to any act or failure to act by a parent, caregiver, or adult that results in harm or potential harm to a child. It is a deeply concerning issue that demands urgent attention and action from society as a whole.</p>\r\n\r\n<p>Understanding Child Abuse: Child abuse takes many forms, including physical, emotional, and sexual abuse, as well as neglect. Physical abuse involves inflicting physical harm or injury upon a child, while emotional abuse targets a child&#39;s mental well-being through constant belittlement, humiliation, or rejection. Sexual abuse involves any form of sexual exploitation, while neglect refers to the failure to provide a child with basic needs like food, shelter, and healthcare.</p>\r\n\r\n<p>The Impact on Children: Child abuse has devastating consequences for the physical, emotional, and psychological well-being of children. The scars inflicted during childhood can persist into adulthood, affecting their ability to form healthy relationships, trust others, and lead fulfilling lives. Children who suffer abuse often experience difficulties in school, struggle with self-esteem, and may even develop mental health disorders such as depression, anxiety, or post-traumatic stress disorder (PTSD).</p>\r\n\r\n<p>Recognizing the Signs: It is crucial for everyone to be aware of the signs and symptoms of child abuse. Some common indicators include unexplained bruises or injuries, sudden changes in behavior, withdrawal from social activities, fear of a particular person or place, and a noticeable decline in academic performance. While these signs do not necessarily indicate abuse in every case, they should be taken seriously and reported to a trusted adult or authority figure for further investigation.</p>\r\n\r\n<p>Preventing Child Abuse: Preventing child abuse requires a collective effort from families, communities, and governments. Education plays a vital role in raising awareness about child abuse, teaching children about their rights, and equipping them with the knowledge and skills to protect themselves. It is equally important for parents and caregivers to receive support, guidance, and resources to help them provide a safe and nurturing environment for their children. Building strong support networks, implementing stringent laws against child abuse, and encouraging reporting are essential steps toward prevention.</p>\r\n\r\n<p>Reporting Child Abuse: If you suspect or witness any form of child abuse, it is your moral duty to report it. Contact your local child protective services or law enforcement agency to provide them with accurate information and details. Remember, your intervention could be a lifeline for a vulnerable child, offering them a chance at a brighter, abuse-free future.</p>\r\n\r\n<p>Conclusion: Child abuse is a grave violation of a child&#39;s rights and a blight on society. By educating ourselves, promoting awareness, and taking action, we can work together to end the cycle of abuse and create a world where every child grows up safe, loved, and protected. Let us unite to give children the childhood they deserve&mdash;a childhood filled with joy, safety, and the opportunity to reach their fullest potential.</p>\r\n', '2023-05-26 21:32:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `childs`
--

CREATE TABLE `childs` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `age` int(11) NOT NULL,
  `child_photo_url` text NOT NULL,
  `about` text NOT NULL,
  `bank` text NOT NULL,
  `iban` text NOT NULL,
  `money` float NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `childs`
--

INSERT INTO `childs` (`id`, `name`, `age`, `child_photo_url`, `about`, `bank`, `iban`, `money`, `created_date`) VALUES
(9, 'Mustafa Evren', 12, '0', 'In the quiet corners of an ancient library, dust danced in the dim light, whispering secrets of forgotten tales. Books stood tall, guardians of knowledge, their worn pages holding lifetimes of wisdom. Words, like delicate brushstrokes, painted vivid landscapes of imagination. Across time and space, ideas mingled and collided, giving birth to new realms of possibility. From the depths of the imagination, characters emerged, dancing between reality and dreams. Their stories wove intricate tapestries, capturing hearts and minds in their enchanting embrace. In this realm of limitless creativity, the written word transcended boundaries, inviting readers to embark on extraordinary journeys of the mind and soul.', 'İş Bankası', '125451125211', 212.52, '2023-05-26 21:16:29'),
(10, 'Özgür Ömer Gülsoy', 12, '0', 'In a world where technology and imagination collide, possibilities are endless. From the depths of the ocean to the far reaches of outer space, discoveries await. In the bustling city streets, diverse cultures intertwine, creating a tapestry of vibrant stories. From whispered secrets in ancient ruins to the symphony of laughter in a crowded park, every moment holds a treasure. Life\'s journey is filled with twists and turns, challenges and triumphs. Embrace the unexpected, for it is in the unexpected that true magic lies. Embrace the unknown, for it is in the unknown that we find ourselves. Adventure awaits, so let your spirit soar.', 'Ziraat Bankası', '12412412421412', 31, '2023-05-26 21:17:01'),
(11, 'Birol Uzun', 7, 'data:image/jpeg;base64,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', 'In the heart of a bustling city, hidden among the towering skyscrapers, lies a forgotten alleyway. Its cobblestone path winds like a secret labyrinth, echoing whispers of forgotten stories. Graffiti-covered walls bear witness to the dreams and frustrations of countless passersby. A solitary streetlamp flickers, casting an ethereal glow on the worn facades. The air is heavy with anticipation, as if the alley holds secrets untold. It\'s a haven for dreamers and seekers of magic, where ordinary lives transform into extraordinary tales. In this enchanting place, possibilities abound, waiting for those willing to step off the beaten path and embrace the unknown.', 'Garanti Bankası', '12412412124241124', 0, '2023-05-26 21:17:52'),
(12, 'Jeff Kaplan', 1, '0', 'In the quiet depths of a secluded forest, a solitary cottage stood amidst towering trees. Its wooden exterior, weathered and adorned with climbing ivy, blended harmoniously with the natural surroundings. Inside, the flickering glow of a fireplace embraced the cozy interior. Books lined the walls, their pages filled with tales of adventure and mystery. A worn armchair beckoned visitors to sink into its comforting embrace. The scent of freshly brewed tea mingled with the faint hint of lavender, creating an atmosphere of tranquility. In this enchanted abode, time seemed to pause, allowing weary souls to find solace and embrace the beauty of simplicity.', 'Şeker Bankası', '124241142412412', 0, '2023-05-26 21:19:05'),
(13, 'Şehvetcan Kemal', 11, '0', 'oaekfsjklljkasfasfjk', 'Ziraat Bankası', '1244124211212', 0, '2023-05-27 16:15:12'),
(14, 'Veled-i Zina', 13, 'https://static.timesofisrael.com/www/uploads/2014/04/800px-Ayesha_eating_and_smiling-e1396640745621.jpg', 'Retard kid', 'İş Bankası', '1231212312312', 0, '2023-06-02 22:20:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `amount` float NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` text NOT NULL,
  `childID` int(11) NOT NULL,
  `childName` text NOT NULL,
  `donationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `donations`
--

INSERT INTO `donations` (`id`, `type`, `amount`, `userID`, `userName`, `childID`, `childName`, `donationDate`) VALUES
(1000, 'Credit/Bank Card', 999, 4, 'Jeff Bezos', 9, 'Mustafa Evren', '2023-05-27 16:47:08'),
(1013, 'Credit/Bank Card', 331, 4, 'Jeff Bezos', 9, 'Mustafa Evren', '2023-05-27 17:18:54'),
(1016, 'Credit/Bank Card', 2, 4, 'Jeff Bezos', 9, 'Mustafa Evren', '2023-05-27 17:20:02'),
(1017, 'Credit/Bank Card', 53.2, 4, 'Jeff Bezos', 9, 'Mustafa Evren', '2023-05-27 17:24:45'),
(1018, 'Credit/Bank Card', 70.1, 4, 'Jeff Bezos', 9, 'Mustafa Evren', '2023-05-27 17:27:45'),
(1023, 'Credit/Bank Card', 10, 4, 'Jeff Bezos', 9, 'Mustafa Evren', '2023-05-27 17:37:34'),
(1024, 'Credit/Bank Card', 99.42, 4, 'Jeff Bezos', 9, 'Mustafa Evren', '2023-05-27 17:40:07'),
(1025, 'Credit/Bank Card', 32, 1, 'Jack Sparrow', 9, 'Mustafa Evren', '2023-05-27 18:25:50'),
(1026, 'Credit/Bank Card', 31, 1, 'Jack Sparrow', 10, 'Özgür Ömer Gülsoy', '2023-05-27 19:08:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `password` text NOT NULL,
  `profile_photo_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `password`, `profile_photo_url`) VALUES
(1, 'Jack Sparrow', 'PirateJack', 'pirate.killer@gmail.com', '05125912', '$5$rounds=535000$Xquvza0nCx6u9HKJ$1NiHeqnZtdvZh275kYrDn7KhVPlDF6sZWmwXPOfDnK3', 'https://i.etsystatic.com/31292064/r/il/90dbb9/3243771512/il_fullxfull.3243771512_pgtl.jpg'),
(3, 'admin', 'admin', 'admin@hotmail.com', '124124241142', '$5$rounds=535000$GPaIU4q1FDWC86Zd$jXhw3zpq4IVyElkuylwrnLiUPP/rqsG3WplEjHY5GPC', ''),
(4, 'Jeff Bezossssss', 'Amazon', 'rich.bitch@hotmail.com', '124412124124', '$5$rounds=535000$Q2qMZSweRrebcTBz$jGgSmNjRGEqbT0FP2BSCobEOKZxhOxeUx.fwrD7U0H8', '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `childs`
--
ALTER TABLE `childs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `childs`
--
ALTER TABLE `childs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1027;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
