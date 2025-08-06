CREATE VIEW most_populated AS
SELECT district ,
       SUM(families) ,
       SUM(households),
       SUM(population) AS district_population,
       SUM(male) ,
       SUM(female)
FROM census
GROUP BY district
 order BY district_population DESC;
