-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Haz 2023, 15:55:35
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
(1, 'Child Games: Development and Benefits', 'admin', '<p><img alt=\"\" src=\"https://www.parentingforbrain.com/wp-content/uploads/importance-of-play.jpg\" /></p>\r\n\r\n<p><br />\r\nIntroduction: Play is an integral part of a child&#39;s life. It not only brings joy and entertainment but also plays a vital role in their overall development. Child games are not merely recreational activities; they offer numerous benefits that contribute to a child&#39;s cognitive, social, emotional, and physical growth. This article explores the importance of child games and highlights the developmental advantages they offer.</p>\r\n\r\n<p>Cognitive Development: Child games stimulate cognitive development by engaging children in problem-solving, critical thinking, and decision-making activities. Board games, puzzles, and memory games, for instance, enhance their concentration, memory retention, and logical reasoning skills. Through imaginative play, such as pretending to be doctors or teachers, children develop creativity and develop their ability to think beyond conventional boundaries.</p>\r\n\r\n<p>Social Development: Playing games with peers provides children with opportunities to interact, communicate, and collaborate effectively. They learn essential social skills like turn-taking, sharing, cooperation, and empathy. Team sports teach them the value of teamwork, leadership, and sportsmanship. In group activities, children learn to negotiate, resolve conflicts, and develop healthy relationships, which are crucial for their social development.</p>\r\n\r\n<p>Emotional Development: Child games offer an outlet for children to express and regulate their emotions. Pretend play allows them to explore different roles and emotions, helping them understand and manage their feelings. Games involving storytelling or role-playing enable children to express their fears, hopes, and dreams, promoting emotional development and self-expression. Additionally, playing games in a supportive and nurturing environment fosters self-confidence and self-esteem.</p>\r\n\r\n<p>Physical Development: Outdoor games and physical activities contribute significantly to a child&#39;s physical development. Running, jumping, climbing, and playing sports improve motor skills, coordination, and balance. These activities also promote a healthy lifestyle, reducing the risk of obesity and related health issues. Regular physical play helps children develop strong muscles and bones, improves cardiovascular health, and enhances overall physical fitness.</p>\r\n\r\n<p>Educational Benefits: Child games have educational benefits that complement formal learning. Educational games, such as math or language puzzles, enhance numeracy and literacy skills. Educational apps and interactive digital games provide engaging and interactive learning experiences, improving children&#39;s knowledge in various subjects. By integrating learning with fun, child games make education more enjoyable and effective.</p>\r\n\r\n<p>Conclusion: Child games are not simply pastimes but essential tools for a child&#39;s holistic development. They contribute to cognitive, social, emotional, and physical growth, fostering skills and abilities that are crucial for their overall well-being. Parents, caregivers, and educators should recognize the importance of child games and provide ample opportunities for children to engage in play. By encouraging and facilitating play, we can ensure that children experience the multitude of benefits that child games have to offer.</p>\r\n', '2023-06-04 12:38:41'),
(2, 'Understanding Children: A Glimpse into Their World', 'admin', '<p><img alt=\"\" src=\"https://www.zerotothree.org/wp-content/uploads/2022/05/24-36-Months-Social-Emotional-Development.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Introduction: Children are a fascinating group of individuals who possess a unique perspective on the world around them. Their thoughts, behaviors, and experiences offer valuable insights into their development and the intricacies of their inner world. This article provides a glimpse into the world of children, shedding light on their emotions, cognitive processes, social interactions, and the importance of nurturing their growth.</p>\r\n\r\n<p>The Complexity of Emotions: Children experience a wide range of emotions, often with intensity and purity. While they can be joyful and exuberant, they are also susceptible to sadness, fear, anger, and frustration. Understanding children&#39;s emotions is crucial for caregivers and parents to provide the necessary support and guidance. By acknowledging and validating their feelings, adults can help children develop emotional intelligence and build resilience.</p>\r\n\r\n<p>The Wonder of Imagination: Children possess a vivid imagination that knows no bounds. Through play, storytelling, and make-believe scenarios, they create elaborate worlds and characters. Imagination is not only a source of entertainment but also a powerful tool for cognitive development. It nurtures creativity, problem-solving skills, and abstract thinking, enabling children to explore possibilities and think outside the box.</p>\r\n\r\n<p>The Curiosity for Learning: Children are innately curious beings, constantly seeking knowledge and understanding. They possess a natural thirst for learning and make sense of the world through exploration and discovery. As caregivers, it is essential to foster this curiosity by providing stimulating environments, engaging activities, and encouraging questions. By nurturing their inquisitive nature, we empower children to become lifelong learners.</p>\r\n\r\n<p>The Importance of Social Interactions: Social interactions play a crucial role in a child&#39;s development. Interacting with peers, siblings, and adults helps children develop social skills, empathy, and communication abilities. It is through these interactions that they learn to cooperate, negotiate, and navigate social dynamics. Encouraging healthy relationships and providing opportunities for social engagement is vital for their social and emotional growth.</p>\r\n\r\n<p>The Power of Resilience: Children possess an incredible capacity for resilience, bouncing back from setbacks and challenges with remarkable strength. They learn resilience through experiencing and overcoming difficulties, with the support and guidance of caring adults. By fostering a safe and nurturing environment, we enable children to develop resilience, adaptability, and the confidence to face life&#39;s ups and downs.</p>\r\n\r\n<p>Conclusion: Understanding children requires us to step into their world, appreciating their unique perspectives, emotions, and needs. By recognizing their complexity, nurturing their imagination, supporting their curiosity, fostering social interactions, and promoting resilience, we empower children to thrive and reach their full potential. As adults, we have the privilege and responsibility to guide and shape the lives of these remarkable individuals, ensuring a brighter future for them and society as a whole.</p>\r\n', '2023-06-04 12:44:14'),
(3, 'The Power of Play: Unleashing Children\'s Potential', 'admin', '<p><img alt=\"\" src=\"https://novakdjokovicfoundation.org/wp-content/uploads/2017/02/child-boy-together-mother-playing-educational.jpg\" /><br />\r\nIntroduction: Play is a fundamental aspect of childhood that goes far beyond mere entertainment. It is a powerful tool that unlocks children&#39;s potential, facilitating their development in various domains. This article explores the transformative power of play and its impact on children&#39;s cognitive, social, emotional, and physical growth.</p>\r\n\r\n<p>Cognitive Growth: Play stimulates cognitive growth by engaging children in activities that promote problem-solving, critical thinking, and creativity. Whether it&#39;s building with blocks, solving puzzles, or engaging in imaginative play, children actively construct knowledge, develop spatial awareness, enhance their memory, and refine their decision-making abilities. Through play, they learn to experiment, explore possibilities, and develop a thirst for learning.</p>\r\n\r\n<p>Social Development: Play serves as a social laboratory where children learn to navigate relationships, develop empathy, and enhance their communication skills. Whether it&#39;s engaging in pretend play, collaborating on a project, or participating in team sports, children learn to share, take turns, negotiate, and resolve conflicts. Play provides a safe space for them to practice social roles, develop a sense of identity, and build meaningful connections with others.</p>\r\n\r\n<p>Emotional Well-being: Play offers children a means to express and process their emotions in a natural and healthy way. Through play, children can explore different roles, experiences, and scenarios, which helps them understand and manage their feelings. Whether it&#39;s engaging in dramatic play, playing with dolls, or engaging in art activities, children learn to identify and regulate their emotions, fostering emotional intelligence and resilience.</p>\r\n\r\n<p>Physical Development: Active play and physical activities contribute to children&#39;s physical development and overall well-being. Running, jumping, climbing, and engaging in sports not only strengthen muscles and bones but also improve coordination, balance, and motor skills. Outdoor play also exposes children to fresh air and sunlight, promoting a healthy lifestyle and reducing the risk of sedentary behavior and related health issues.</p>\r\n\r\n<p>Imagination and Creativity: Play fuels imagination and creativity, allowing children to think beyond boundaries and come up with innovative solutions. Whether it&#39;s creating stories, engaging in pretend play, or experimenting with art materials, children unleash their imagination and tap into their creative potential. Play encourages them to think abstractly, connect ideas, and see the world from different perspectives, fostering innovation and problem-solving skills.</p>\r\n\r\n<p>Conclusion: Play is a catalyst for children&#39;s holistic development. It empowers them to explore, discover, and make sense of the world around them. Through play, children develop cognitive abilities, social skills, emotional intelligence, and physical prowess. As parents, educators, and caregivers, it is our responsibility to provide opportunities for play and create environments that support and nurture children&#39;s natural inclination to learn and grow. By recognizing and harnessing the power of play, we can unlock children&#39;s potential and lay the foundation for a bright and successful future.</p>\r\n', '2023-06-04 12:47:17'),
(4, 'Child Abuse: Understanding, Preventing, and Addressing the Issue', 'admin', '<p><img alt=\"\" src=\"https://nationaltoday.com/wp-content/uploads/2022/09/26-Global-Day-to-End-Child-Sexual-Abuse-1200x834.jpg\" /></p>\r\n\r\n<p>Introduction: Child abuse is a deeply concerning and distressing issue that affects millions of children worldwide. It is essential to raise awareness about this problem, understand its causes, and work towards preventing and addressing child abuse effectively. This article aims to provide insight into child abuse, its types, signs, prevention strategies, and the importance of supporting victims and their families.</p>\r\n\r\n<p>Understanding Child Abuse: Child abuse refers to any form of mistreatment or harm inflicted upon a child, whether it is physical, sexual, emotional, or neglectful in nature. It is a violation of a child&#39;s rights and can have severe and long-lasting consequences on their physical and psychological well-being. Understanding the different types of child abuse is crucial for identifying and intervening in such cases.</p>\r\n\r\n<p>Types and Signs of Child Abuse: Child abuse can manifest in various forms. Physical abuse involves the infliction of physical harm or injury, leaving visible marks or bruises. Sexual abuse involves any form of sexual exploitation, including inappropriate touching, molestation, or exposure to sexual content. Emotional abuse involves belittling, humiliation, or consistently ignoring a child&#39;s emotional needs. Neglect refers to the failure to provide basic necessities such as food, shelter, clothing, or medical care. It is important to recognize the signs of abuse, such as unexplained injuries, sudden changes in behavior, withdrawal, fearfulness, or inappropriate sexual knowledge.</p>\r\n\r\n<p>Prevention Strategies: Preventing child abuse requires a multi-faceted approach involving individuals, families, communities, and society as a whole. Education and awareness programs should be implemented to help individuals recognize and report child abuse. Parents and caregivers can benefit from parenting classes and support networks to enhance their understanding of child development, positive discipline techniques, and stress management. Creating safe environments, promoting positive parent-child relationships, and implementing policies and laws that protect children are critical in preventing abuse.</p>\r\n\r\n<p>Addressing Child Abuse: Addressing child abuse requires a coordinated response from various stakeholders. Child protective services, law enforcement agencies, healthcare professionals, and social workers play a vital role in investigating reports of abuse, providing support to victims, and ensuring their safety. Therapy and counseling services are essential for children who have experienced abuse, helping them heal from trauma and rebuild their lives. Support services for families, including parenting support and financial assistance, can help address underlying issues that contribute to abuse.</p>\r\n\r\n<p>Supporting Victims and Families: Supporting victims of child abuse and their families is essential for their recovery and well-being. Providing access to counseling services, advocacy, and support groups can help victims process their trauma and build resilience. Collaborating with community organizations and professionals to offer comprehensive support systems is crucial in helping families navigate the challenges associated with abuse.</p>\r\n\r\n<p>Conclusion: Child abuse is a grave societal issue that requires collective action. By raising awareness, implementing prevention strategies, and providing support to victims and their families, we can work towards eradicating child abuse and creating a safer environment for children. It is our responsibility to prioritize the protection and well-being of children, ensuring that they grow up in a nurturing and supportive society.</p>\r\n', '2023-06-04 12:50:04'),
(5, 'Building Strong Parent-Child Relationships: Nurturing Bonds that Last', 'admin', '<p><img alt=\"\" src=\"https://www.familyservicesnew.org/wp-content/uploads/2019/10/shutterstock_1486364633-small.jpg\" /></p>\r\n\r\n<p>Introduction: The parent-child relationship is one of the most significant and influential bonds in a child&#39;s life. A strong and positive relationship with parents lays the foundation for a child&#39;s emotional, social, and cognitive development. This article explores the importance of parent-child relationships, provides tips for building strong connections, and highlights the lifelong benefits of nurturing these bonds.</p>\r\n\r\n<p>Quality Time and Active Listening: Spending quality time with your child is crucial for building a strong relationship. Set aside dedicated time each day to engage in activities that your child enjoys. Whether it&#39;s playing games, reading books together, or simply having meaningful conversations, these moments create opportunities for connection. Active listening is also vital; give your child your full attention, demonstrate empathy, and validate their feelings. This fosters trust and shows your child that their thoughts and emotions are valued.</p>\r\n\r\n<p>Open and Effective Communication: Maintaining open and effective communication is essential for a healthy parent-child relationship. Encourage your child to express themselves freely, listen without judgment, and respond in a supportive manner. Create an environment where your child feels comfortable sharing their thoughts, concerns, and experiences. By fostering open communication, you establish a strong foundation of trust and understanding.</p>\r\n\r\n<p>Setting Boundaries with Love: Setting boundaries is a crucial aspect of parenting and contributes to the development of a secure parent-child relationship. Establish clear and consistent rules that are age-appropriate, and explain the reasons behind them. However, it is equally important to enforce boundaries with love and understanding. Balance discipline with warmth and empathy, emphasizing that boundaries are in place to ensure your child&#39;s safety and well-being.</p>\r\n\r\n<p>Positive Reinforcement and Encouragement: Positive reinforcement plays a significant role in building a strong parent-child relationship. Acknowledge and praise your child&#39;s efforts, accomplishments, and positive behaviors. Encourage their interests and passions, providing support and guidance along the way. Celebrate their successes, no matter how small, to boost their self-esteem and confidence. This fosters a sense of security and strengthens the bond between parent and child.</p>\r\n\r\n<p>Modeling Respect and Empathy: Parents serve as powerful role models for their children. Model respect and empathy in your interactions with your child and others. Demonstrate kindness, patience, and understanding in your daily interactions. Teach your child the value of empathy and the importance of treating others with respect. By modeling these behaviors, you nurture empathy and compassion in your child, fostering a positive and caring relationship.</p>\r\n\r\n<p>Flexibility and Adaptability: Parent-child relationships require flexibility and adaptability. Recognize that each child is unique and may have different needs and preferences. Be willing to adjust your parenting approach to meet your child&#39;s evolving developmental stages. Remain open to learning from your child and embracing their individuality. Flexibility and adaptability strengthen the parent-child bond and contribute to a harmonious relationship.</p>\r\n\r\n<p>Conclusion: Building a strong parent-child relationship is a lifelong journey that requires time, effort, and nurturing. By prioritizing quality time, open communication, setting boundaries with love, offering positive reinforcement, modeling respect and empathy, and being flexible, parents can create deep and meaningful connections with their children. These strong relationships provide a solid foundation for children to grow, thrive, and develop into confident and well-rounded individuals.</p>\r\n', '2023-06-04 12:52:34'),
(6, 'The Benefits of Reading for Children: Unlocking the Power of Books', 'admin', '<p><img alt=\"\" src=\"https://www.scholastic.com/content/dam/parents/migrated-assets/blogs/header-images-6/african-american-child-reading-library-ages-6-8.jpg\" /><br />\r\nIntroduction: Reading is a fundamental skill that opens the door to a world of knowledge, imagination, and personal growth. For children, developing a love for reading not only enhances their language and literacy skills but also provides numerous cognitive, emotional, and social benefits. This article explores the importance of reading for children and highlights the transformative power of books in their lives.</p>\r\n\r\n<p>Language and Literacy Development: Reading is a key factor in developing strong language and literacy skills in children. By exposing them to a variety of texts, stories, and vocabulary, reading expands their vocabulary, improves their comprehension abilities, and enhances their communication skills. Regular reading also helps children develop grammar and sentence structure, leading to improved writing abilities as they grow.</p>\r\n\r\n<p>Cognitive Development: Reading stimulates cognitive development in children by engaging their brains and encouraging critical thinking skills. As they follow storylines, predict outcomes, and make connections between characters and events, children enhance their problem-solving abilities and logical reasoning. Reading also boosts memory and concentration, as children must remember characters, plot details, and story arcs.</p>\r\n\r\n<p>Imagination and Creativity: Books are a gateway to imagination and creativity. Through reading, children can explore different worlds, cultures, and time periods, expanding their horizons and broadening their understanding of the world. By envisioning characters and settings in their minds, children develop their creativity and learn to think outside the box. Reading also inspires children to create their own stories and express their ideas through writing or art.</p>\r\n\r\n<p>Empathy and Social Skills: Reading exposes children to diverse characters and perspectives, fostering empathy and understanding. As they relate to characters&#39; experiences, emotions, and challenges, children develop a greater sense of empathy and compassion towards others. Books also serve as conversation starters, allowing children to discuss themes, moral dilemmas, and societal issues, which helps them develop their social and emotional intelligence.</p>\r\n\r\n<p>Academic Success: A strong foundation in reading correlates with academic success in other subjects. Reading comprehension skills are essential for understanding textbooks, instructions, and assignments across various subjects. Children who read regularly also develop stronger analytical thinking and problem-solving skills, which are valuable in math, science, and other academic disciplines.</p>\r\n\r\n<p>Bonding and Parent-Child Relationships: Reading together provides an excellent opportunity for bonding and strengthening parent-child relationships. Shared reading experiences create special moments of connection and intimacy. Whether it&#39;s reading aloud to younger children or engaging in discussions about books with older children, these interactions foster a love for reading and a strong emotional bond.</p>\r\n\r\n<p>Conclusion: Reading is a powerful tool that unlocks countless benefits for children. It enhances language and literacy skills, stimulates cognitive development, nurtures imagination and creativity, fosters empathy and social skills, and contributes to academic success. Encouraging children to read from an early age and providing access to a wide range of books is essential in unlocking the transformative power of reading and setting them on a path of lifelong learning and personal growth.</p>\r\n', '2023-06-04 12:54:38');

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
(1, 'Ahmet Yılmaz', 13, 'https://media.discordapp.net/attachments/777834731173707796/1114889028353937418/image.png', 'Ahmet is an 13-year-old boy. His family is going through financial difficulties, making it challenging for them to provide for his basic needs. Ahmet is a bright and curious child who loves going to school. He dreams of becoming a doctor one day and helping people in need. Despite the hardships he faces, Ahmet remains resilient and determined. Your support will make a significant impact on his life and help him pursue his dreams.', 'İş Bank', 'TR12 0000 0000 0000 0000 0000 01', 5600, '2023-06-04 12:20:41'),
(2, 'Ali Kaya', 14, 'https://media.discordapp.net/attachments/777834731173707796/1114889068136906924/image.png', 'Ali is a 14-year-old boy who comes from a disadvantaged background. His family struggles to make ends meet, and providing for Ali\'s basic necessities is a constant challenge. Despite the hardships, Ali is a talented young artist who finds solace in drawing and painting. He dreams of becoming a professional artist one day. Your support and encouragement can provide him with the resources he needs to develop his artistic skills and pursue his passion.', 'Garanti Bank', 'TR12 0000 0000 0000 0000 0000 02', 8000, '2023-06-04 12:21:26'),
(3, 'Mehmet Öztürk', 13, 'https://cdn.discordapp.com/attachments/777834731173707796/1114889147119829082/image.png', 'Mehmet is a 13-year-old boy who comes from a disadvantaged family. His parents struggle to provide for their children\'s basic needs due to financial constraints. Despite the circumstances, Mehmet is a cheerful and energetic child who loves playing football with his friends. He dreams of becoming a professional football player and representing his country. Your support can help provide him with opportunities to participate in sports activities and pursue his dreams.', 'Koop Bank', 'TR12 0000 0000 0000 0000 0000 03', 7000, '2023-06-04 12:22:09'),
(4, 'Ayşe Demir', 13, 'https://media.discordapp.net/attachments/777834731173707796/1114889093374021652/image.png', 'Ayşe is a 13-year-old girl who comes from an underprivileged background. Her family faces financial difficulties, making it challenging for them to provide Ayşe with proper education and healthcare. Despite the hardships, Ayşe is a determined and bright student who loves reading books. She dreams of becoming a teacher and making a positive impact in her community. Your support can provide Ayşe with access to education and resources, empowering her to achieve her goals.', 'CreditWest Bank', 'TR12 0000 0000 0000 0000 0000 04', 0, '2023-06-04 12:23:29'),
(5, 'Zeynep Karadeniz', 15, 'https://media.discordapp.net/attachments/777834731173707796/1114889120062378194/image.png', 'Zeynep is an 15-year-old girl from a disadvantaged family. Financial struggles prevent her family from providing her with adequate opportunities and resources. Zeynep is a talented singer with a passion for music. She dreams of becoming a professional singer and sharing her voice with the world. Your support can help Zeynep receive music lessons and cultivate her talent, allowing her to pursue her dreams.', 'Ziraat Bank', 'TR12 0000 0000 0000 0000 0000 05', 16655, '2023-06-04 12:24:04'),
(6, 'Elif Yıldız', 14, 'https://media.discordapp.net/attachments/777834731173707796/1114889188479877207/image.png', 'Elif is an 14-year-old girl who comes from a disadvantaged background. Her family faces financial difficulties, making it challenging to provide for her basic needs and education. Elif is a creative and curious child who loves storytelling and writing. She dreams of becoming a writer and sharing her stories with the world. Your support can provide Elif with access to books and educational resources, empowering her to pursue her passion for writing and achieve her dreams.', 'Koop Bank', 'TR12 0000 0000 0000 0000 0000 06', 8000, '2023-06-04 12:24:42');

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
(1000, 'Credit/Bank Card', 5600, 9, 'Fatma Öztürk', 1, 'Ahmet Yılmaz', '2023-06-04 13:42:56'),
(1001, 'Credit/Bank Card', 7000, 9, 'Fatma Öztürk', 3, 'Mehmet Öztürk', '2023-06-04 13:43:07'),
(1002, 'Credit/Bank Card', 8000, 9, 'Fatma Öztürk', 6, 'Elif Yıldız', '2023-06-04 13:43:25'),
(1003, 'Credit/Bank Card', 8000, 9, 'Fatma Öztürk', 5, 'Zeynep Karadeniz', '2023-06-04 13:44:39'),
(1004, 'Credit/Bank Card', 6000, 8, 'Ahmet Kaya', 2, 'Ali Kaya', '2023-06-04 13:51:28'),
(1005, 'Credit/Bank Card', 8655, 8, 'Ahmet Kaya', 5, 'Zeynep Karadeniz', '2023-06-04 13:52:15'),
(1006, 'Credit/Bank Card', 2000, 8, 'Ahmet Kaya', 2, 'Ali Kaya', '2023-06-04 13:52:46');

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
  `profile_photo_url` text NOT NULL DEFAULT 'https://i.pinimg.com/236x/b8/fe/23/b8fe2363a39908a287e1a29c136202c9.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `password`, `profile_photo_url`) VALUES
(1, 'Jack Sparrow', 'PirateJack', 'pirate.killer@gmail.com', '+90 548 866 5777', '$5$rounds=535000$Xquvza0nCx6u9HKJ$1NiHeqnZtdvZh275kYrDn7KhVPlDF6sZWmwXPOfDnK3', 'https://i.etsystatic.com/31292064/r/il/90dbb9/3243771512/il_fullxfull.3243771512_pgtl.jpg'),
(3, 'admin', 'admin', 'admin@hotmail.com', '0', '$5$rounds=535000$GPaIU4q1FDWC86Zd$jXhw3zpq4IVyElkuylwrnLiUPP/rqsG3WplEjHY5GPC', 'https://upload.wikimedia.org/wikipedia/commons/a/a8/Ataturk1930s.jpg'),
(6, 'Mehmet Yılmaz', 'mehmet.yilmaz', 'mehmet.yilmaz@hotmail.com', '+90 555 123 4567', '$5$rounds=535000$2mpg883u3oTDTV8X$D5NC3hVD06eIdUuRdj5Zv/LyrL0G488IMLPwLQ7/IJ4', 'https://media.discordapp.net/attachments/1096098728739356672/1114908331774050345/indir_1.jpeg?width=676&height=676'),
(7, 'Ayşe Demir', 'aysedemir_123', 'aysedemir_123@gmail.com', '+90 532 987 6543', '$5$rounds=535000$qc7n3WL/yszzQn90$CW4S57yHhuPooA0JREwxNvM4.JFJUK84ht8w.C7pPIC', 'https://cdn.discordapp.com/attachments/1096098728739356672/1114907356225093742/indir.jpeg'),
(8, 'Ahmet Kaya', 'aKaya_34', 'aKaya_34@outlook.com', '+90 532 123 4567', '$5$rounds=535000$YrbqMXayypDy6bWm$77FLi3qU9qPRUmRf8XIZalt/Ur.tnoY/1rnw5ouJnX.', 'https://media.discordapp.net/attachments/1096098728739356672/1114908679276339210/indir_3.jpeg?width=676&height=676'),
(9, 'Fatma Öztürk', 'fatma_ozturk12', 'fatma_ozturk12@hotmail.com', '+90 533 456 7890', '$5$rounds=535000$cIy8d7/Rk1E0rKfS$Xa0zdDr7gexMDJd02dMjR0tVy/MyAbsvCQlZuMUUAD4', 'https://media.discordapp.net/attachments/1096098728739356672/1114909844772753418/indir_6.jpeg?width=676&height=676'),
(10, 'Ali Şahin', 'ali.sahin_97', 'ali.sahin_97@gmail.com', '+90 536 987 6543', '$5$rounds=535000$TSAW04tcA00X5bu3$9dRld1MA3WyTYhUDWrg/MvvRVvu21dknzamWXnymDB4', 'https://media.discordapp.net/attachments/1096098728739356672/1114909594418954282/indir_4.jpeg?width=676&height=676'),
(11, 'Elif Çelik', 'elifcelik_22', 'elifcelik_22@gmail.com', '+90 534 567 8901', '$5$rounds=535000$FHg1PEJJfKEE1ogl$cZQlVQOC4m1soElcr2giZ5O0NqrpHCQX1SfhaztA1d6', 'https://media.discordapp.net/attachments/1096098728739356672/1114910004118552606/indir_7.jpeg?width=676&height=676'),
(12, 'Seda Güler', 'sedaguler_1234', 'sedaguler_1234@gmail.com', '+90 535 678 9012', '$5$rounds=535000$becHGoLr/ZnuQ22g$uK/wMh0IkqidIt/nzRPrgXZNfiU4Q0ME65F7BqzK43C', 'https://media.discordapp.net/attachments/1096098728739356672/1114910209882734652/indir_8.jpeg?width=676&height=676'),
(13, 'Ruhi Çenet', 'ruhi22.cece', 'ruhi22.cece@hotmail.com', '+90 532 485 6163', '$5$rounds=535000$3h21Eye4vWi2cDzM$YLuxAtdE7bJ2aTFvUYoY3u3BfqDYpz466HNbWUHQBl/', 'https://i.pinimg.com/236x/b8/fe/23/b8fe2363a39908a287e1a29c136202c9.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `childs`
--
ALTER TABLE `childs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
