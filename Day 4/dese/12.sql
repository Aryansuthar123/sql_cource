SELECT d.name, e.per_pupil_expenditure, s.exemplary FROM districts as d
inner join expenditures as e on d.id = e.district_id
inner join staff_evaluations as s on d.id = s.district_id
where d.type = 'Public School District' and
   e.per_pupil_expenditure > (
        SELECT avg(per_pupil_expenditure)
        FROM expenditures
    ) AND
    s.exemplary > (
        SELECT avg(exemplary) FROM staff_evaluations
    )
ORDER BY
    s.exemplary DESC,
    e.per_pupil_expenditure DESC;
