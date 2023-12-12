SELECT 
destination ,
passanger ,
Time as 'The Time'
FROM dataset_1
WHERE passanger = 'Alone'
OR destination = 'Home'
OR time = '2pm'
ORDER BY Time Desc;

SELECT destination , time ,
AVG (temperature) ,
SUM (temperature) ,
COUNT(temperature),
COUNT(DISTINCT temperature) 
FROM dataset_1 d 
WHERE time <> '10pm'

Group BY  destination , time
--Having Occupation = 'student'
ORDER BY time;

SELECT *
FROM dataset_1 d 
UNION ALL
SELECT *
FROM table_to_union;

SELECT DISTINCT destination
from dataset_1 d;

SELECT DISTINCT destination
FROM 
(
SELECT *
FROM dataset_1 d 
UNION
SELECT *
FROM table_to_union);

SELECT *
FROM table_to_join ttj; 

SELECT destination, d.time, ttj.part_of_day
FROM dataset_1 d 
LEFT JOIN table_to_join ttj 
ON d.time =ttj.time;

SELECT *
FROM dataset_1 d 
WHERE d.time LIKE '%P%';

SELECT DISTINCT temperature
from dataset_1 d 
WHERE temperature BETWEEN 29 AND 75;

SELECT Occupation
FROM dataset_1 
WHERE Occupation IN ('Sales & Related', 'Management');

SELECT 
destination ,
weather ,
AVG(Temperature) over (PARTITION BY weather) AS 'avg_temp_by'
FROM dataset_1 d 
