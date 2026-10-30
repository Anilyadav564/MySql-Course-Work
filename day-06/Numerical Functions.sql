-- Absoulte values
SELECT ABS(-25), ABS(30);

-- Ceiling / Round up
SELECT CEIL(12.3), CEIL(-12.7);

-- Floor / Round Down
SELECT FLOOR(12.9), FLOOR(-12.3);

-- Round
SELECT ROUND(12.4527, 2), ROUND(12.4567, 3);

-- Truncate
SELECT TRUNCATE(123.4567, 2), TRUNCATE(123.4567, 3);

-- Power / Exponent
SELECT POW(2,3), POWER(5,2);

-- SQUARE ROOT
SELECT SQRT(16), SQRT(2);

-- Modulo / Remainder
SELECT MOD(10, 3);

-- Random Number
SELECT RAND(), RNAD(10);

-- Pi Constant
SELECT PI();

-- Sign
SELECT SIGN(-25), SIGN(0), SIGN(30);

-- Greatest value
SELECT GREATEST(10, 25, 7, 100, 56);

-- Least Value
SELECT LEAST(10, 25, 7, 100, 56);