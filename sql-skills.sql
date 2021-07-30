--ARTIST TABLE
--Question 1
INSERT INTO artist(
	name
)
VALUES(
	'Cher'
),
(
	'Freddy Krueger'
),
(
	'Clark Kent'
);

--Question 2
SELECT name FROM artist
ORDER BY name
LIMIT 5;

--EMPLOYEE TABLE
--Question 1
SELECT e.first_name, e.last_name FROM employee e
WHERE e.city = 'Calgary';

--Question 2
SELECT e.first_name, e.last_name FROM employee e
WHERE e.reports_to = 2;

--Question 3
SELECT COUNT(*) FROM employee e
WHERE e.city = 'Lethbridge';

--INVOICE TABLE
--Question 1
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

--Question 2
SELECT MAX(total) FROM invoice;

--Question 3
SELECT MIN(total) FROM invoice;

--Question 4
SELECT * FROM invoice
WHERE total > 5;

--Question 5
SELECT COUNT(total) FROM invoice
WHERE total < 5;

--Question 6
SELECT SUM(total) FROM invoice;

--JOIN QUERIES
--Question 1
SELECT * FROM invoice i
JOIN invoice_line il
ON i.invoice_id = il.invoice_id
WHERE unit_price > 0.99;

--Question 2
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

--Question 3
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

--Question 4
SELECT album.title, artist.name FROM album
JOIN artist
ON album.artist_id = artist.artist_id;