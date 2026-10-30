DROP DATABASE IF EXISTS instagram_demo;
CREATE DATABASE instagram_demo;
USE instagram_demo;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE posts (
    post_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    caption VARCHAR(255),
    likes INT NOT NULL DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE post_likes (
    like_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    post_id INT NOT NULL,
    UNIQUE (user_id, post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id)
);

CREATE TABLE post_history (
    history_id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT NOT NULL,
    old_caption VARCHAR(255),
    new_caption VARCHAR(255),
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES posts(post_id)
);

CREATE TABLE deleted_likes (
    like_id INT,
    user_id INT,
    post_id INT,
    deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (name)
VALUES ('Rahul'), ('Priya'), ('Arun');

INSERT INTO posts (user_id, caption)
VALUES
    (1, 'My First Post'),
    (1, 'My Travel Photo'),
    (1, 'My New Bike');

DELIMITER //

CREATE TRIGGER before_post_insert
BEFORE INSERT ON posts
FOR EACH ROW
BEGIN
    IF NEW.likes < 0 THEN
        SET NEW.likes = 0;
    END IF;
END //

CREATE TRIGGER after_like
AFTER INSERT ON post_likes
FOR EACH ROW
BEGIN
    UPDATE posts
    SET likes = likes + 1
    WHERE post_id = NEW.post_id;
END //

CREATE TRIGGER after_unlike
AFTER DELETE ON post_likes
FOR EACH ROW
BEGIN
    UPDATE posts
    SET likes = GREATEST(likes - 1, 0)
    WHERE post_id = OLD.post_id;
END //

CREATE TRIGGER after_post_update
AFTER UPDATE ON posts
FOR EACH ROW
BEGIN
    IF NOT (OLD.caption <=> NEW.caption) THEN
        INSERT INTO post_history (post_id, old_caption, new_caption)
        VALUES (OLD.post_id, OLD.caption, NEW.caption);
    END IF;
END //

DELIMITER ;

-- Add a like
INSERT INTO post_likes (user_id, post_id)
VALUES (2, 1);

SELECT * FROM posts;
SELECT * FROM post_likes;

-- Remove the like
DELETE FROM post_likes
WHERE user_id = 2 AND post_id = 1;

SELECT * FROM posts;
SELECT * FROM post_likes;

-- Update a caption; the trigger records the change
UPDATE posts
SET caption = 'My Updated Bike'
WHERE post_id = 3;

SELECT * FROM post_history;

-- Test the before-insert trigger; the stored likes value should be 0
INSERT INTO posts (user_id, caption, likes)
VALUES (2, 'Test Post', -5);

SELECT * FROM posts;