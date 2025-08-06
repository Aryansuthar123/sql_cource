CREATE VIEW frequently_reviewed AS
SELECT l.id,
       l.property_type,
       l.host_name,
       COUNT(r.id) as reviews
from listings as l
inner join
    reviews as r
    on l.id = r.listing_id
group by
    l.id,
    l.property_type,
    l.host_name
order by
    reviews desc,
    property_type
limit 100;
