
-- *** The Lost Letter ***
SELECT * FROM addresses
WHERE address = "900 Somerville Avenue";

SELECT * FROM addresses
WHERE address LIKE  "2 fin%";

SELECT * FROM packages
WHERE from_address_id = (SELECT id FROM addresses
WHERE address = "900 Somerville Avenue") AND to_address_id = (SELECT id FROM addresses
WHERE address LIKE  "2 fin%");

SELECT * FROM scans
WHERE package_id = (SELECT id FROM packages
WHERE from_address_id = (SELECT id FROM addresses
WHERE address = "900 Somerville Avenue") AND to_address_id = (SELECT id FROM addresses
WHERE address LIKE  "2 fin%"));

-- *** The Devious Delivery ***
SELECT *  FROM packages
WHERE 	"from_address_id" IS NULL;

SELECT * FROM addresses
WHERE "id" = 50;

SELECT * FROM scans
WHERE package_id = 5098;

SELECT * FROM addresses
WHERE "id" = 348;

-- *** The Forgotten Gift ***
SELECT * FROM addresses
WHERE address in ("728 Maple Place", "109 Tileston Street");

SELECT * FROM packages
WHERE  from_address_id = 9873 AND to_address_id = 4983;

SELECT * FROM scans
WHERE "package_id" = 9523;

SELECT * FROM drivers
WHERE "id" = 17;
