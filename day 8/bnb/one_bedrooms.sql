CREATE VIEW one_bedrooms AS
select
    "id",
    "property_type",
    "host_name",
    "accommodates"
FROM listings
where
    bedrooms = 1;
