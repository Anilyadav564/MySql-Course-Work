-- =========================================
-- STRING FUNCTIONS
-- =========================================

-- CHAR_LENGTH(str) / CHARACTER_LENGTH(str)
SELECT CHAR_LENGTH('Hello');

-- CONCAT(str1, str2, ...)
SELECT CONCAT('My', 'SQL');
SELECT CONCAT('Python', ' ', 'Programming', ' ','Language');

-- CONCAT_WS(seperator, str1, str2, ...)
SELECT CONCAT_WS('-', 'My', 'SQL');

-- UPPER(str)
SELECT UPPER('hello');

-- LOWER(str)
SELECT LOWER('HELLO');

-- LEFT (str, len)
SELECT LEFT('Database', 5);

-- RIGHT (str, len)
SELECT RIGHT('Database', 5);

-- SUBSTRING(str, start, length)
SELECT SUBSTRING('Database', 2);
SELECT SUBSTRING('Database Storage', 6, 2);

-- LOCATE(substr, str)
SELECT LOCATE('e', 'Database');

-- REPLACE(str, old, new)
SELECT REPLACE('Visit Microsoft.com', 'Microsoft', 'Oracle');

-- TRIM(str)
SELECT TRIM('   Hello   World  ');

-- LTRIM(str)
SELECT LTRIM('  Hello');

-- RTRIM(str)
SELECT RTRIM('  Hello');

-- REVERSE(str)
SELECT REVERSE('MySQL');

-- LPAD(str, len, char)
SELECT LPAD('1238', 10, '-');

-- RPAD(str, len, char)
SELECT RPAD('1238', 10, '*');

-- REPEAT(str, num)
SELECT REPEAT('MySQL', 10);