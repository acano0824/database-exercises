SELECT 'Albums released after 1991' AS 'Caption';
DELETE
FROM albums
WHERE release_date > '1991';

SELECT 'Albums with the genre disco' AS 'Caption';
DELETE
FROM albums
WHERE genre = 'disco';

SELECT 'Albums by Whitney Houston' AS 'Caption';
DELETE
FROM albums
WHERE artist = 'Whitney Houston';

