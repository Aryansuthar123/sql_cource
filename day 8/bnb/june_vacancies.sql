create view june_vacancies as
select
    l.id,
    l.property_type,
    l.host_name,
    count(a.date) as days_vacant
from
    listings as l
inner join
    availabilities as a
    on l.id = a.listing_id
where
    cast(strftime('%Y', a.date) as int) = 2023 and
    cast(strftime('%m', a.date) as int) = 6 and
    a.available = 'TRUE'
group by
    l.id,
    l.property_type,
    l.host_name;
