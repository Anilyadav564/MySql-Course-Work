CREATE DATABASE south_music_db;
USE south_music_db;

-- =========================================
-- 2. Create Tables
-- =========================================

CREATE TABLE singers (
    singer_id INT PRIMARY KEY,
    singer_name VARCHAR(100),
    language VARCHAR(20),
    followers INT
);

CREATE TABLE songs (
    song_id INT PRIMARY KEY,
    title VARCHAR(150),
    movie VARCHAR(150),
    singer_id INT,
    language VARCHAR(20),
    plays INT,
    likes INT,
    release_year INT,
    FOREIGN KEY (singer_id) REFERENCES singers(singer_id)
);

-- =========================================
-- 3. Insert Real Singers
-- =========================================

INSERT INTO singers VALUES
(1, 'Sid Sriram', 'Telugu', 3200000),
(2, 'S. P. Balasubrahmanyam', 'Telugu', 5000000),
(3, 'Shreya Ghoshal', 'Telugu', 4100000),
(4, 'Anirudh Ravichander', 'Tamil', 4800000),
(5, 'A. R. Rahman', 'Tamil', 7000000),
(6, 'K. S. Chithra', 'Tamil', 3600000);

-- =========================================
-- 4. Insert Real Songs
-- =========================================

INSERT INTO songs VALUES
(101, 'Samajavaragamana', 'Ala Vaikunthapurramuloo', 1, 'Telugu', 8500000, 600000, 2020),
(102, 'Inkem Inkem Inkem Kaavaale', 'Geetha Govindam', 1, 'Telugu', 7800000, 550000, 2018),
(103, 'Tere Mere Beech Mein', 'Ek Duuje Ke Liye', 2, 'Hindi', 4000000, 250000, 1981),
(104, 'Neeve Neeve', 'Darling', 3, 'Telugu', 5200000, 300000, 2010),

(105, 'Why This Kolaveri Di', '3', 4, 'Tamil', 9000000, 700000, 2011),
(106, 'Arabic Kuthu', 'Beast', 4, 'Tamil', 8800000, 650000, 2022),
(107, 'Munbe Vaa', 'Sillunu Oru Kaadhal', 5, 'Tamil', 6100000, 420000, 2006),
(108, 'Kannalane', 'Bombay', 6, 'Tamil', 4500000, 280000, 1995);

-- 5. single row subquries

-- most played song


SELECT singer_name, followers FROM singers
WHERE followers = (SELECT MAX(followers) FROM singers);


SELECT singer_name, followers FROM singers
WHERE followers = (SELECT MAX(followers) FROM singers);


