CREATE VIEW  rural AS
select * FROM census
where 	locality LIKE "%rural%";
