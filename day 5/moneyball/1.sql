SELECT ROUND(AVG(salary), 2), "year" AS "average salary" FROM salaries
GROUP BY "year"
ORDER BY "year" DESC;

