SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;


-- let's try to filter on the avg age using where

SELECT gender, AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40
GROUP BY gender
;
-- this doesn't work because of order of operations. On the backend Where comes before the group by. So you can't filter on data that hasn't been grouped yet
-- this is why Having was created

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT gender, AVG(age) as AVG_age
FROM employee_demographics
GROUP BY gender
HAVING AVG_age > 40
;