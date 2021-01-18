-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `concerts`
--

DROP TABLE IF EXISTS `concerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concerts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `artist` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `date` varchar(10) NOT NULL,
  `tickets` integer NOT NULL,
  `info` text(1000) NOT NULL,
  `img1` varchar(50) NOT NULL,
  `img2` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concerts`
--
LOCK TABLES `concerts` WRITE;
/*!40000 ALTER TABLE `concerts` DISABLE KEYS */;
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Alabama Shakes','Blues-Jazz','Madison Square Garden','08/07/2021','100','Alabama 
Shakes is an American blues rock band formed in Athens, Alabama in 2009. The band currently consists of lead singer and guitarist Brittany Howard, guitarist Heath Fogg, 
bassist Zac Cockrell, and drummer Steve Johnson. The group rose to prominence in the early 2010s and have sold over 1.5 million albums in the US. The band began its 
career touring and performing at bars and clubs around the Southeast for two years while honing their sound and writing music. They recorded their debut album Boys & 
Girls with producer Andrija Tokic in Nashville while still unsigned. Online acclaim led ATO Records to sign the band, which released Boys & Girls in 2012 to critical 
success. The album’s hit single "Hold On" was nominated for three Grammy Awards. After a long touring cycle, the band recorded its second record Sound & Color, which was 
released in 2015 and debuted at number one on the Billboard 200, and won four Grammy Awards.','al-shakes.png','al-shakes.png', 'https://www.youtube.com/embed/nin-fiNz50M');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Black Pumas','Blues-Jazz','Stadium Arcadium','27/05/2021','100','Black Pumas is an American 
psychedelic soul band based in Austin, Texas, led by singer/songwriter Eric Burton and guitarist/producer Adrian Quesada. The group received its first Grammy Award nomination in 2020 for Best 
New Artist at the 62nd awards.','black_pumas.png','black_pumas.png','https://www.youtube.com/embed/0G383538qzQ');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Binker and Moses','Blues-Jazz','Stadium Arcadium','22/06/2021','100','Binker and Moses are one of 
the most dynamic and creative ensembles of the new generation on the modern British jazz scene. Influenced by the richness of 60s jazz, hard bop and free jazz, saxophonist Binker Golding  and 
drummer Moses Boyd  create their own aesthetics in today’s plethora of different musical sounds, with a saxophone that is reminiscent of the historic sound of John Coltrane and Sonny Rollins, 
and a drum set that travels beyond time. With two critically acclaimed albums already out (Dem Ones and Journey to the Mountain of Forever) and a third (Children of the Ultra Blacks) in 
production, Binker and Moses’ music is the best example of the creativity and artistic level of contemporary British jazz.','binkerandmoses.png','binkerandmoses.png','https://www.youtube.com/embed/BtxqKVbKhYU');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Jazzmeia Horn','Blues-Jazz','Red Rocks Amphitheater','09/06/2021','100','Jazzmeia Horn 
(born April 16, 1991) is an American jazz singer and songwriter of African ancestry. She won the Thelonious Monk Institute International Jazz Competition in 2015. Horn''s repertoire includes 
jazz standards and covers of songs from other genres, including by artists such as Stevie Wonder. She has been compared to jazz vocalists such as Betty Carter, Sarah Vaughan, and Nancy Wilson. 
By the age of 23, Jazzmeia ''Jazz'' Horn had earned a reputation in New York City as a dynamic music artist.','jazzmeiahorn.png','jazzmeiahorn.png','https://www.youtube.com/embed/gBH2dlVxXww');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Beyonce','Pop','Stadium Arcadium','01/07/2021','100','Beyoncé Giselle Knowles-Carter 
(born September 4, 1981) is an American singer, songwriter, actress, and record producer. Born and raised in Houston, Texas. Beyoncé performed in various singing and dancing competitions as a 
child. She rose to fame in the late 1990s as the lead singer of Destiny''s Child, one of the best-selling girl groups of all time. Beyoncé is often cited as an influence by other 
artists.','beyonce.png','beyonce.png','https://www.youtube.com/embed/ViwtNLUqkMY');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Lady Gaga','Pop','Hollywood Bowl','11/07/2021','100','Stefani Joanne Angelina Germanotta 
(born March 28, 1986), known professionally as Lady Gaga, is an American singer, songwriter, and actress. She is known for her consistent image reinventions and versatility in both music and 
entertainment. Gaga began performing as a teenager, singing at open mic nights and acting in school plays. She studied at Collaborative Arts Project 21, through New York University''s Tisch School 
of the Arts, before dropping out to pursue a career in music. When Def Jam Recordings canceled her contract, she worked as a songwriter for Sony/ATV Music Publishing, where she signed a joint deal 
with Interscope Records and Akon''s label, KonLive Distribution, in 2007. Gaga rose to prominence the following year with her debut studio album, The Fame, and its chart-topping 
singles ''Just Dance'' and ''Poker Face''. The album was later reissued to include the EP, The Fame Monster (2009), which yielded the successful singles ''Bad Romance'', ''Telephone'', 
and ''Alejandro''.','lady_gaga.png','lady_gaga.png','https://www.youtube.com/embed/niqrrmev4mA');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Ed Sheeran','Pop','Madison Square Garden','08/08/2021','100','Edward Christopher Sheeran MBE 
(born 17 February 1991) is an English singer, songwriter, musician, record producer, actor, and businessman. After first recording music in 2004, he began gaining attention through YouTube. 
In early 2011, Sheeran independently released the extended play, No. 5 Collaborations Project. He signed with Asylum Records the same year. Sheeran''s debut album, + (pronounced ''plus''), 
was released in September 2011 and topped the UK Albums Chart.','ed_sheeran.png','ed_sheeran.png','https://www.youtube.com/embed/_dK2tDK9grQ');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Justin Bieber','Pop','Hollywood Bowl','30/07/2021','100','Justin Drew Bieber (born March 1, 1994) is 
a Canadian singer, songwriter and multi-instrumentalist. Discovered at age 13 by talent manager Scooter Braun after he had watched Bieber''s YouTube cover song videos, Bieber was signed to RBMG 
Records in 2008. With Bieber''s debut EP My World, released in late 2009, Bieber became the first artist to have seven songs from a debut record chart on the Billboard Hot 
100.','justin_bieber.png','justin_bieber.png','https://www.youtube.com/embed/kffacxfA7G4');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Deep Purple','Rock','Red Rocks Amphitheater','08/08/2021','100','Deep Purple are an English rock 
band formed in Hertford, Hertfordshire, in 1968. They are considered to be among the pioneers of heavy metal and modern hard rock, although their musical approach has changed over the years. 
Originally formed as a psychedelic rock and progressive rock band, they shifted to a heavier sound with their 1970 album Deep Purple in Rock. Deep Purple, together with Led Zeppelin and Black 
Sabbath, have been referred to as the ''unholy trinity of British hard rock and heavy metal in the early to mid-seventies''. They were listed in the 1975 Guinness Book of World Records as 
''the globe''s loudest band'' for a 1972 concert at London''s Rainbow Theatre and have sold over 100 million albums worldwide.','deep_purple.png','deep_purple.png','https://www.youtube.com/embed/ikGyZh0VbPQ');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Bon Jovi','Rock','Madison Square Garden','10/08/2021','100','Bon Jovi is an American rock band formed
 in 1983 in Sayreville, New Jersey. It consists of singer Jon Bon Jovi, keyboardist David Bryan, drummer Tico Torres, guitarist Phil X, and bassist Hugh McDonald. Previous bassist Alec John Such 
 was dismissed in 1994, and longtime guitarist and co-songwriter Richie Sambora left in 2013. In 1984 and 1985, Bon Jovi released their first two albums and their debut single ''Runaway'' 
 managed to crack the Top 40. In 1986, the band achieved widespread success and global recognition with their third album, Slippery When Wet, which sold over 20 million copies and included three 
 Top 10 singles, two of which reached No. 1 (''You Give Love a Bad Name'' and ''Livin'' on a Prayer''). Their fourth album, New Jersey (1988), was also very successful, selling over 10 
 million copies and featuring five Top 10 singles (a record for a hard rock album), two of which reached No. 1 (''Bad Medicine'' and ''I''ll Be There for You''). After the band toured and 
 recorded extensively during the late 1980s, culminating in the 1988–1990 New Jersey Tour, Jon Bon Jovi and Richie Sambora released successful solo albums in 1990 and 1991, respectively.','bonjovi.png','bonjovi.png','https://www.youtube.com/embed/vx2u5uUu3DE');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Guns n Roses','Rock','Red Rocks Amphitheater','09/08/2021','100','Guns N'' Roses, often abbreviated 
as GNR, is an American hard rock band from Los Angeles, California, formed in 1985. When they signed to Geffen Records in 1986, the band comprised vocalist Axl Rose, lead guitarist Slash, rhythm 
guitarist Izzy Stradlin, bassist Duff McKagan, and drummer Steven Adler. The current lineup consists of Rose, Slash, McKagan, guitarist Richard Fortus, drummer Frank Ferrer and keyboardists Dizzy Reed and Melissa Reese.
Guns N'' Roses'' debut album, Appetite for Destruction (1987), reached number one on the Billboard 200 a year after its release, on the strength of the top 10 singles ''Welcome to the Jungle'', 
''Paradise City'', and ''Sweet Child o'' Mine'', the band''s only single to reach number one on the Billboard Hot 100.','gunsnroses.png','gunsnroses.png','https://www.youtube.com/embed/Rbm6GXllBiw');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Bryan Adams','Rock','Madison Square Garden','20/08/2021','100','Bryan Guy Adams OC OBC (born 5 
November 1959) is a Canadian guitarist, singer, composer, record producer, photographer, and philanthropist. With several number 1 singles and albums in various countries, Adams has sold between 
75 and 100 million records worldwide. According to Nielsen Music Canada''s 2019 Year-End Report, Adams was the most played artist on Canadian radio stations between 2010 and 2019. Adams joined 
his first band at age 15, and in 1980 at age 20, his eponymous debut album was released.','bryan_adams.png','bryan_adams.png','https://www.youtube.com/embed/eFjjO_lhf9c');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('David Guetta','Electronic','Coachela Stage','12/07/2021','100','Pierre David Guetta (born 7 November
, 1967) is a French DJ, record producer and songwriter. He has sold over nine million albums and 30 million singles worldwide.  In 2011 and 2020, Guetta was voted as the number one DJ in the DJ 
Mag Top 100 DJs poll. In 2013, Billboard crowned ''When Love Takes Over'' as the number one dance-pop collaboration of all time. Born and raised in Paris, he released his first album, Just a 
Little More Love, in 2002. Later, he released Guetta Blaster (2004) and Pop Life (2007). Guetta achieved mainstream success with his 2009 album One Love which included the hit singles ''When Love 
Takes Over'', ''Gettin'' Over You'', ''Sexy Bitch'', and ''Memories'', the first three of which reached number one in the United Kingdom. The 2011 follow-up album, Nothing but the Beat, continued 
this success, containing the hit singles "Where Them Girls At", "Little Bad Girl", "Without You", "Titanium", and ''Turn Me On''. He has been called the ''grandfather of EDM''.
Guetta''s accolades include two Grammy Awards, an American Music Award, and a Billboard Music Award.','davidguetta.png','davidguetta.png','https://www.youtube.com/embed/EVr__5Addjw');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Deadmau5','Electronic','Brick by Brick','18/07/2021','100','Joel Thomas Zimmerman (born January 5, 
1981), known professionally as Deadmau5 (stylized as deadmau5; pronounced ''dead mouse''), is a Canadian electronic music producer, DJ, and musician. Zimmerman mainly produces progressive house 
music, though he also produces and DJs other genres of electronic music, including techno under the alias Testpilot.  Zimmerman has received six Grammy Award nominations for his work.','deadmau5.png','deadmau5.png','https://www.youtube.com/embed/tKi9Z-f6qX4');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Steve Aoki','Electronic','Wayfarer','08/07/2021','100','Steven Hiroyuki Aoki (born November 30, 
1977) is an American entertainer, DJ, record producer and music executive. In 2012, Pollstar designated Aoki as the highest grossing dance artist in North America from tours. He has collaborated 
with artists such as will.i.am, Afrojack, LMFAO, Linkin Park, Iggy Azalea, Lil Jon, blink-182, Laidback Luke, BTS, Monsta X, Louis Tomlinson, Backstreet Boys, Rise Against, Vini Vici, Lauren 
Jauregui, and Fall Out Boy and is known for his remixes of artists such as Kid Cudi. Aoki has released several Billboard-charting studio albums as well, notably Wonderland, which was nominated 
for Grammy Award for Best Dance/Electronica Album in 2013. He is the founder of the Steve Aoki Charitable Fund, which raises money for global humanitarian relief organizations.  In 2019, Aoki 
published a memoir, Blue: The Color of Noise.','steveaoki.png','steveaoki.png','https://www.youtube.com/embed/gl2p4G3CUrI');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Eminem','Hip Hop','Greek Theater','30/05/2021','100','Marshall Bruce Mathers III (born October 
17, 1972), known professionally as Eminem (often stylized as EMINƎM), is an American rapper, songwriter, and record producer. Credited with popularizing hip hop in Middle America, he is considered 
one of the greatest rappers of all time. Eminem''s global success and acclaimed works are widely regarded as having broken racial barriers for the acceptance of white rappers in popular music. 
While much of his transgressive work during the early 2000s made him hugely controversial, he came to be a representation of popular angst of the American underclass. He has been influential for 
many artists of various genres. After his debut album Infinite (1996) and the extended play Slim Shady EP (1997), Eminem signed with Dr. Dre''s Aftermath Entertainment and subsequently achieved 
mainstream popularity in 1999 with The Slim Shady LP. His next two releases The Marshall Mathers LP (2000) and The Eminem Show (2002) were worldwide successes and were both nominated for the 
Grammy Award for Album of the Year. After the release of his next album, Encore (2004), Eminem went on hiatus in 2005 partly due to a prescription drug addiction. He returned to the music industry 
four years later with the release of Relapse (2009), and Recovery was released the following year. Recovery was the best-selling album worldwide of 2010, making it Eminem''s second album, after 
The Eminem Show in 2002, to be the best-selling album of the year worldwide. In the following years, he released the US number one albums The Marshall Mathers LP 2, Revival, Kamikaze and Music to 
Be Murdered By.','eminem.png','eminem.png', 'https://www.youtube.com/embed/eJO5HU_7_1w');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('YG','Hip Hop','Stadium Arcadium','28/05/2021','100','Keenon Dequan Ray Jackson (born March 9, 1990), 
better known by his stage name YG, is an American rapper and actor from Compton, California. In 2010, he released his debut single, "Toot It and Boot It" featuring Ty Dolla Sign, which peaked at 
number 67 on the Billboard Hot 100. The single''s success resulted in him signing to Def Jam Recordings.  In the following years, YG released mixtapes such as The Real 4Fingaz, Just Re''d Up, 
Just Re''d Up 2, 4 Hunnid Degreez, and many others.','yg.jpeg','yg.jpeg', 'https://www.youtube.com/embed/MSrTnWDTdwI');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('12pithikos','Hip Hop','Lab Art','22/06/2021','100','Iakovos “Akis” Tsinidis better known by his stage 
name 12os Pithikos (born March ,1984), is a Greek rapper from Kalamaria, Thessaloniki. He was member of Funky Dusk from 1996 until 2002. His first personal album released in 2004 with the title 
“Poios to perimene”.','12pithikos.png','12pithikos.png', 'https://www.youtube.com/embed/vkQ5PxyrUL4');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Bloody Hawk','Hip Hop','Lab Art','30/08/2021','100','Nikolaos Kitsos (born November 4, 1995), also 
known as Bloody Hawk is a hip-hop singer from Xanthi, Greece. He has already released 7 LPs and a collection with non-released tracks from 2013 to 2015 with title “BF Red”. His song “Heroes” has 
streamed over 400.000 times in Spotify.','bloodyhawk.png','bloodyhawk.png', 'https://www.youtube.com/embed/oJBm8zpssVU');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Red Hot Chilly Peppers','Alternative Rock','Stadium Arcadium','08/05/2021','100','The Red Hot Chili 
Peppers are an American rock band formed in Los Angeles in 1983. Their music incorporates elements of alternative rock, funk, punk rock and psychedelic rock. The band consists of vocalist Anthony 
Kiedis, bassist Flea, drummer Chad Smith, and guitarist John Frusciante. With over 80 million records sold worldwide, the Red Hot Chili Peppers are one of the best-selling bands of all time. 
They are the most successful band in the history of alternative rock, with the records for most number-one singles (13), most cumulative weeks at number one (85) and most top-ten songs (25) on 
the Billboard Alternative Songs chart. They have won six Grammy Awards, and in 2012 were inducted into the Rock and Roll Hall of Fame.','rhcp.png','rhcp.png', 'https://www.youtube.com/embed/a9eNQZbjpJk');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('MUSE','Alternative Rock','Stade de France','24/05/2021','100','Muse are an English rock band from 
Teignmouth, Devon, formed in 1994. The band consists of Matt Bellamy (lead vocals, guitar, keyboards), Chris Wolstenholme (bass guitar, backing vocals), and Dominic Howard (drums). Muse released 
their debut album, Showbiz, in 1999, showcasing Bellamy''s falsetto and a melancholic alternative rock style. Their second album, Origin of Symmetry (2001), incorporated wider instrumentation and 
romantic classical influences, featured their acclaimed cover of "Feeling Good", and earned them a reputation for energetic live performances. Absolution (2003) saw further classical influence, 
with strings on tracks such as "Butterflies and Hurricanes", and was the first of six consecutive UK number-one albums.','muse.png','muse.png', 'https://www.youtube.com/embed/EcCvwn3jdyM');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Arctic Monkeys','Alternative Rock','Stadium Arcadium','14/08/2021','100','Arctic Monkeys are an 
English rock band formed in Sheffield in 2002. The group consists of Alex Turner (lead vocals, guitar, keyboards), Jamie Cook (guitar, keyboards), Nick O''Malley (bass guitar, backing vocals), 
and Matt Helders (drums, backing vocals). Former band member Andy Nicholson (bass guitar, backing vocals) left the band in 2006 shortly after their debut album was released. Arctic Monkeys were 
heralded as one of the first bands to come to public attention via the Internet, with commentators suggesting they represented the possibility of a change in the way in which new bands are 
promoted and marketed. Their debut album, Whatever People Say I Am, That''s What I''m Not (2006), became the fastest selling debut album in UK chart history, and has been hailed as one of the 
greatest debut albums.  It won Best British Album at the 2007 Brit Awards. The band''s second album, Favourite Worst Nightmare (2007), also won Best British Album at the 2008 BRIT Awards. They 
went on to release Humbug (2009) and Suck It and See (2011). The band''s global recognition increased with their fifth album AM (2013), which was supported by the global hit "Do I Wanna Know?".  
AM became their second top 10 album on the US Billboard 200, topped four Billboard charts, and was certified platinum in the US.','arcticmonkeys.png','arcticmonkeys.png', 'https://www.youtube.com/embed/iV5VKdcQOJE');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Killers','Alternative Rock','Greek Theater','05/08/2021','100','The Killers are an American rock band 
formed in Las Vegas in 2001 by Brandon Flowers (lead vocals, keyboards, bass) and Dave Keuning (lead guitar, backing vocals). Since 2002, the band''s official lineup has consisted of Flowers, 
Keuning, Mark Stoermer (bass, rhythm guitar, backing vocals) and Ronnie Vannucci Jr. (drums, percussion), the latter two having joined the band that year. The band''s name is derived from a logo 
on the bass drum of a fictitious band portrayed in the music video for the New Order song "Crystal".','killers.png','killers.png', 'https://www.youtube.com/embed/gGdGFtwCNBE');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('J Balvin','Latin','Stade de France','01/08/2021','100','José Álvaro Osorio Balvín (born May 7, 1985), 
better known as J Balvin, is a Colombian reggaeton singer and songwriter. He has been referred to as the "Prince of Reggaeton" (from Spanish: "Príncipe del Reggaetón"), and is one of the 
best-selling Latin music artists with sales of more than 35 million records (albums and singles) worldwide. Balvin was born in Medellín, Colombia. age 17, he moved to the United States to learn 
English, where he lived in both Oklahoma and New York. He then returned to Medellín and gained popularity performing at clubs in the city. Throughout his career, Balvin has won five Billboard 
Latin Music Awards, four Latin Grammy Awards, two MTV Video Music Awards and four Latin American Music Awards and received two Grammy Award nominations.','jbalvin.png','jbalvin.png', 'https://www.youtube.com/embed/wnJ6LuUFpMo');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Enrique Iglesias','Latin','Stadium Arcadium','02/07/2021','100','Enrique Miguel Iglesias Preysler 
(Spanish pronunciation: [enˈrike miˈɣel iˈɣlesjas ˈpɾejzleɾ]; born 8 May 1975) is a Spanish singer, songwriter, actor, and record producer who is known as the King of Latin Pop. He began his career 
during the mid-1990s on American Spanish-language record label Fonovisa Records under the stage name Enrique Martinez, before switching to his notable surname Iglesias. His father Julio Iglesias 
was a very successful singer and Iglesias wanted to make it on his own without receiving benefits from his family name. By the turn of the millennium, after becoming one of the biggest stars in 
Latin America and the Hispanic market in the United States, he made a successful crossover into the US mainstream market. He signed a multi-album deal with Universal Music Group for US$68 million 
with Universal Music Latino to release his Spanish albums and Interscope Records to release English albums.','enriqueiglesias.png','enriqueiglesias.png', 'https://www.youtube.com/embed/NUsoVlDFqZg');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Aventura','Latin','Stadium Arcadium','11/07/2021','100','Aventura was an American bachata group that 
broke into the mainstream with their 2002 hit "Obsesión (featuring Judy Santos)". With a line-up comprising Romeo Santos, Lenny Santos (Len Melody), Henry Santos and Max Santos (Max Agende), they 
are regarded as one of the most influential Latin groups of all time. The group were integral to the evolution of bachata music and are the pioneers of the modern bachata sound. Aventura released 
five studio albums in a decade, spawning many top 10 hits like "Cuando Volverás", "Un Beso", "Mi Corazoncito", "Los Infieles", "El Perdedor", "Por Un Segundo", "Dile Al Amor", among others. They 
have sold out many arenas including the world famous Madison Square Garden. Aventura has been nominated for awards such as American Music Awards, the Latin Grammy Awards, Billboard Latin Music 
Awards, and Premio Lo Nuestro. Aventura is one of the most internationally recognized Latin groups of the last two decades and frequently refer to themselves as "K.O.B.", or "Kings of Bachata".','aventura.png','aventura.png', 'https://www.youtube.com/embed/0XCot42qTvA');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Maluma','Latin','Greek Theater','07/08/2021','100','Juan Luis Londoño Arias (born 28 January 1994), 
known professionally as Maluma, is a Colombian singer, songwriter, and actor signed to Sony Music Colombia, Sony Latin and Fox Music. Musically, Maluma''s songs have been described as reggaeton, 
Latin trap, and pop. Born and raised in Medellín, he developed an interest in music at a young age, and began recording songs at the age of 16.He released his debut album, Magia, a year later in 
2012. However, his breakthrough album was 2015''s Pretty Boy, Dirty Boy, which led to successful collaborations with several artists. He released F.A.M.E. in 2018, to further commercial success. 
He followed it up with 11:11 in 2019, and Papi Juancho, released without further announcement in 2020. His single "Hawái" reached number three on the Billboard Global 200, and became the first 
number one single on the Billboard Global Excl. U.S. chart.','maluma.png','maluma.png', 'https://www.youtube.com/embed/4j725wScY0E');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Metallica','Metal','Stade de France','19/05/2021','100','Metallica is an American heavy metal band. 
The band was formed in 1981 in Los Angeles by vocalist/guitarist James Hetfield and drummer Lars Ulrich, and has been based in San Francisco for most of its career. The band''s fast tempos, 
instrumentals and aggressive musicianship made them one of the founding "big four" bands of thrash metal, alongside Megadeth, Anthrax and Slayer. Metallica''s current lineup comprises founding 
members and primary songwriters Hetfield and Ulrich, longtime lead guitarist Kirk Hammett, and bassist Robert Trujillo. Guitarist Dave Mustaine (who went on to form Megadeth after being fired from 
the band) and bassists Ron McGovney, Cliff Burton (who died in a bus accident in Sweden in 1986) and Jason Newsted are former members of the band.','metallica.png','metallica.png', 'https://www.youtube.com/embed/tAGnKpE4NCI');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Slayer','Metal','Greek Theater','26/06/2021','100','Slayer was an American thrash metal band from 
Huntington Park, California. The band was formed in 1981 by guitarists Kerry King and Jeff Hanneman, drummer Dave Lombardo, and bassist and vocalist Tom Araya. Slayer''s fast and aggressive 
musical style made them one of the "big four" bands of thrash metal, alongside Metallica, Megadeth, and Anthrax. Slayer''s final lineup comprised King, Araya, drummer Paul Bostaph (who replaced 
Lombardo in 1992 and again in 2013) and guitarist Gary Holt (who replaced Hanneman in 2011). Drummer Jon Dette was also a member of the band.','slayer.png','slayer.png', 'https://www.youtube.com/embed/DECp8LKurKs');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Slipknot','Metal','Brick by Brick','26/05/2021','100','Slipknot is an American heavy metal band from Des Moines, 
Iowa. The band was founded in 1995 by percussionist Shawn Crahan, drummer Joey Jordison and bassist Paul Gray. After several lineup changes in its early years, the band settled on nine members 
for more than a decade: Crahan, Jordison, Gray, Craig Jones, Mick Thomson, Corey Taylor, Sid Wilson, Chris Fehn, and Jim Root. Gray died on May 24, 2010, and was replaced during 2011–2014 by 
guitarist Donnie Steele. Jordison was dismissed from the band on December 12, 2013. Steele left during the recording sessions for .5: The Gray Chapter. The band found replacements in Alessandro 
Venturella on bass and Jay Weinberg on drums. After the departure of Jordison, as of December 2013 the only founding member in the current lineup is percussionist Crahan. Fehn was also dismissed 
from the band in March 2019 prior to the writing of We Are Not Your Kind.','slipknot.png','slipknot.png', 'https://www.youtube.com/embed/5abamRO41fE');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Iron Maiden','Metal','Stadium Arcadium','18/07/2021','100','Iron Maiden are an English heavy metal 
band formed in Leyton, East London, in 1975 by bassist and primary songwriter Steve Harris. The band''s discography has grown to 40 albums, including 16 studio albums, 13 live albums, four EPs, 
and seven compilations. Pioneers of the new wave of British heavy metal, Iron Maiden achieved initial success during the early 1980s. After several line-up changes, the band went on to release a 
series of UK and US platinum and gold albums, including 1982''s The Number of the Beast, 1983''s Piece of Mind, 1984''s Powerslave, 1985''s live release Live After Death, 1986''s Somewhere in 
Time, and 1988''s Seventh Son of a Seventh Son. Since the return of lead vocalist Bruce Dickinson and guitarist Adrian Smith in 1999, the band has undergone a resurgence in popularity, with a 
series of new albums and tours. Their 2010 studio offering, The Final Frontier, peaked at No. 1 in 28 countries and received widespread critical acclaim. The sixteenth studio album, The Book of 
Souls, was released on 4 September 2015 to similar success, topping the charts in 24 countries.','ironmaiden.png','ironmaiden.png', 'https://www.youtube.com/embed/J0N1yY937qg');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('BTS','K-Pop','Greek Theater','08/06/2021','100','BTS (RR: Bangtan Sonyeondan), also known as the 
Bangtan Boys, is a seven-member South Korean boy band that began formation in 2010 and debuted in 2013 under Big Hit Entertainment. The septet—composed of RM, Jin, Suga, J-Hope, Jimin, V, and 
Jungkook—co-writes and co-produces much of their own output. Originally a hip hop group, their musical style has evolved to include a wide range of genres. Their lyrics, often focused on personal 
and social commentary, touch on the themes of mental health, troubles of school-age youth, loss, the journey towards loving oneself, and individualism. Their work features references to literature 
and psychological concepts and includes an alternative universe storyline. The group has released several albums and performed on several world tours.','bts.png','bts.png', 'https://www.youtube.com/embed/gdZLi9oWNZg');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('BlackPink','K-Pop','Hollywood Bowl','25/06/2021','100','Blackpink (commonly stylized as BLACKPINK or 
BLΛƆKPIИK) is a South Korean girl group formed by YG Entertainment, consisting of members Jisoo, Jennie, Rosé, and Lisa. The group debuted in August 2016 with their single album Square One, which 
featured "Whistle" and "Boombayah", their first number-one entries on South Korea''s Gaon Digital Chart and the Billboard World Digital Song Sales chart, respectively. Blackpink is the 
highest-charting female Korean act on the Billboard Hot 100, peaking at number 13 with "Ice Cream" (2020), and on the Billboard 200, peaking at number two with The Album (2020), the first-ever 
album by a Korean girl group to sell more than one million copies. They were the first Korean girl group to enter and top Billboard''s Emerging Artists chart and to top the Billboard World Digital 
Song Sales chart three times.','blackpink.png','blackpink.png', 'https://www.youtube.com/embed/vRXZj0DzXIA');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('EXO','K-Pop','Stadium Arcadium','20/08/2021','100','Exo (stylized in all caps) is a South 
Korean-Chinese boy band based in Seoul, consisting of nine members: Xiumin, Suho, Lay, Baekhyun, Chen, Chanyeol, D.O., Kai and Sehun. The band was formed by SM Entertainment in 2011 and debuted 
in 2012. Their music—released and performed in Korean, Mandarin, and Japanese—primarily incorporates pop, hip-hop, and R&B, including elements of electronic dance music genres such as house and 
trap. The band ranked as one of the top five most influential celebrities on the Forbes Korea Power Celebrity list from 2014 to 2018 and have been labeled "Kings of K-pop" and the "Biggest 
boyband in the world" by various media outlets.','exo.png','exo.png', 'https://www.youtube.com/embed/pSudEWBAYRE');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Zouganelh','Entexno','Melina Merkouri','12/05/2021','100','Eleonora Zouganeli (Greek: Ελεωνόρα 
Ζουγανέλη) is a Greek singer. Zouganeli was born in 1983 in Athens and is the daughter of Yannis Zouganelis and Isidora Sideris. From a very young age she was involved as an actress in children''s 
theatrical performances and as a singer in children''s songs.','zouganeli.png','zouganeli.png', 'https://www.youtube.com/embed/ev_sQGJXuyI');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Mpofiliou','Entexno','Plateia Nerou','06/06/2021','100','Natassa Bofiliou was born in Athens in 1983, 
where she grew up and graduated from Douka schools. She comes also from Sicily and the Lantern of Istanbul. He studied at the Law School of EKPA. She has a degree in piano and theory from the 
Hellenic Conservatory.','bofiliou.png','bofiliou.png', 'https://www.youtube.com/embed/ruNXuh_Ql4g');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Maravegias','Entexno','Plateia Nerou','21/06/2021','100','Kostis Maraveyas or Kostis Maravegias 
(Greek: Κωστής Μαραβέγιας), also known by his stage name Maraveyas ilegál or just Maraveyas, is a Greek singer-songwriter, composer, performer, director, TV presenter and writer. He plays the 
accordion, piano, guitar, hammond, farfisa and he sings in Greek, English, Spanish and Italian. Although he began his musical career in the underground and alternative music scene of Italy and 
Greece,  as of 2015 Maraveyas has reached wider audiences and is considered as a well known songwriter-performer in Greece. From 2017 to 2019 he has been one of the four judges of the TV show The 
Voice of Greece, winning all three seasons with his team.','maravegias.png','maravegias.png', 'https://www.youtube.com/embed/KbhbwIhKuiA');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2, url) VALUES ('Giannis Xaroulis','Entexno','Texnopolis','08/05/2021','100','Giannis Haroulis (Greek: Γιάννης 
Χαρούλης; born January 13, 1981) is a Greek singer, songwriter and lute player. He plays a mixture of Greek folk and traditional Cretan music infused with rock elements and modern sounds. He was 
born and raised in Crete, where he learned to play the lute and gave his first live performances at local festivals. In 2002, he traveled to Athens to take part in a concert, dedicated to Nikos 
Xilouris, which was recorded and released as an album entitled When My Friends Come, Mother in 2003.  He has released the solo albums Around Me and Within in 2003, Winter Flower in 2006, 
Witchcrafts in 2012 and Twelve Lays of the Gypsy in 2016. Witchcrafts received the Golden Album award,  while his 2015 live album A Thousand Times Welcome – Live entered the Greek music charts at 
the number one slot.','haroulis.png','haroulis.png', 'https://www.youtube.com/embed/WBtx1IvWbQk');


/*!40000 ALTER TABLE `concerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `user_id` varchar(20) NOT NULL,
  `concert_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`concert_id`),
  KEY `concert_id` (`concert_id`),
  CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`username`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`concert_id`) REFERENCES `concerts` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `user_id` varchar(20) NOT NULL,
  `concert_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`concert_id`),
  KEY `concert_id` (`concert_id`),
  CONSTRAINT `history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`username`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `history_ibfk_2` FOREIGN KEY (`concert_id`) REFERENCES `concerts` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email`    varchar(100) NOT NULL,
  `phone`    varchar(20)  NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','admin','admin@gmail.com','1234567890');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-19 21:29:59
