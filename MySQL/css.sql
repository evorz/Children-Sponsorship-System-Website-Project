-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 27 May 2023, 22:22:14
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
  `about` text NOT NULL,
  `bank` text NOT NULL,
  `iban` text NOT NULL,
  `money` float NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `childs`
--

INSERT INTO `childs` (`id`, `name`, `age`, `about`, `bank`, `iban`, `money`, `created_date`) VALUES
(9, 'Mustafa Evren', 12, 'In the quiet corners of an ancient library, dust danced in the dim light, whispering secrets of forgotten tales. Books stood tall, guardians of knowledge, their worn pages holding lifetimes of wisdom. Words, like delicate brushstrokes, painted vivid landscapes of imagination. Across time and space, ideas mingled and collided, giving birth to new realms of possibility. From the depths of the imagination, characters emerged, dancing between reality and dreams. Their stories wove intricate tapestries, capturing hearts and minds in their enchanting embrace. In this realm of limitless creativity, the written word transcended boundaries, inviting readers to embark on extraordinary journeys of the mind and soul.', 'İş Bankası', '125451125211', 212.52, '2023-05-26 21:16:29'),
(10, 'Özgür Ömer Gülsoy', 12, 'In a world where technology and imagination collide, possibilities are endless. From the depths of the ocean to the far reaches of outer space, discoveries await. In the bustling city streets, diverse cultures intertwine, creating a tapestry of vibrant stories. From whispered secrets in ancient ruins to the symphony of laughter in a crowded park, every moment holds a treasure. Life\'s journey is filled with twists and turns, challenges and triumphs. Embrace the unexpected, for it is in the unexpected that true magic lies. Embrace the unknown, for it is in the unknown that we find ourselves. Adventure awaits, so let your spirit soar.', 'Ziraat Bankası', '12412412421412', 31, '2023-05-26 21:17:01'),
(11, 'Birol Uzun', 7, 'In the heart of a bustling city, hidden among the towering skyscrapers, lies a forgotten alleyway. Its cobblestone path winds like a secret labyrinth, echoing whispers of forgotten stories. Graffiti-covered walls bear witness to the dreams and frustrations of countless passersby. A solitary streetlamp flickers, casting an ethereal glow on the worn facades. The air is heavy with anticipation, as if the alley holds secrets untold. It\'s a haven for dreamers and seekers of magic, where ordinary lives transform into extraordinary tales. In this enchanting place, possibilities abound, waiting for those willing to step off the beaten path and embrace the unknown.', 'Garanti Bankası', '12412412124241124', 0, '2023-05-26 21:17:52'),
(12, 'Jeff Kaplan', 1, 'In the quiet depths of a secluded forest, a solitary cottage stood amidst towering trees. Its wooden exterior, weathered and adorned with climbing ivy, blended harmoniously with the natural surroundings. Inside, the flickering glow of a fireplace embraced the cozy interior. Books lined the walls, their pages filled with tales of adventure and mystery. A worn armchair beckoned visitors to sink into its comforting embrace. The scent of freshly brewed tea mingled with the faint hint of lavender, creating an atmosphere of tranquility. In this enchanted abode, time seemed to pause, allowing weary souls to find solace and embrace the beauty of simplicity.', 'Şeker Bankası', '124241142412412', 0, '2023-05-26 21:19:05'),
(13, 'Şehvetcan Kemal', 11, 'oaekfsjklljkasfasfjk', 'Ziraat Bankası', '1244124211212', 0, '2023-05-27 16:15:12');

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
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `password`) VALUES
(1, 'Jack Sparrow', 'PirateJack', 'pirate.killer@gmail.com', '05125912', '$5$rounds=535000$Xquvza0nCx6u9HKJ$1NiHeqnZtdvZh275kYrDn7KhVPlDF6sZWmwXPOfDnK3'),
(3, 'admin', 'admin', 'admin@hotmail.com', '124124241142', '$5$rounds=535000$GPaIU4q1FDWC86Zd$jXhw3zpq4IVyElkuylwrnLiUPP/rqsG3WplEjHY5GPC'),
(4, 'Jeff Bezossssss', 'Amazon', 'rich.bitch@hotmail.com', '124412124124', '$5$rounds=535000$Q2qMZSweRrebcTBz$jGgSmNjRGEqbT0FP2BSCobEOKZxhOxeUx.fwrD7U0H8');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1027;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
