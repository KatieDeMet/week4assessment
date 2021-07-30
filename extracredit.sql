--ARTIST TABLE
--Question 1
SELECT name FROM artist
ORDER BY name DESC
LIMIT 10;

--Question 2
SELECT name FROM artist
WHERE name LIKE 'Black%';

--Question 3
SELECT name FROM artist
WHERE name LIKE '%Black%';

--EMPLOYEE TABLE
--Question 1
SELECT MAX(birth_date) FROM employee;

--Question 2
SELECT MIN(birth_date) FROM employee;

--INVOICE TABLE
--Question 1
SELECT COUNT(billing_state) FROM invoice
WHERE billing_state IN ('AZ', 'CA', 'TX');

--Question 2
SELECT AVG(total) FROM invoice;

--JOIN
--Question 1
SELECT track_id FROM playlist_track pt
JOIN playlist p
ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music';

--Question 2
SELECT name FROM track t
JOIN playlist_track pt
ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5;

--Question 3
SELECT t.name AS track, p.name AS playlist FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id
JOIN playlist p
ON pt.playlist_id = p.playlist_id;

--Question 4
SELECT t.name, a.title FROM track t
JOIN album a
ON t.album_id = a.album_id
JOIN genre g
ON t.genre_id = g.genre_id
WHERE g.name = 'Alternative & Punk';
