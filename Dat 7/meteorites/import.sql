create table meteorites_temp(
    "name" text,
    "id" integer,
    "nametype" text,
    "class" text,
    "mass" real,
    "discovery" text,
    "year" integer,
    "lat" real,
    "long" real,
    PRIMARY KEY("id")
);

.import --csv --skip 1 meteorites.csv meteorites_temp

UPDATE "meteorites_temp"
SET "mass" = NULL
WHERE "id" IN (
    SELECT "id" FROM "meteorites_temp"
    WHERE "mass" = ''
);
UPDATE "meteorites_temp"
SET "year" = NULL
WHERE "id" IN (
    SELECT "id" FROM "meteorites_temp"
    WHERE "year" = ''
);
UPDATE "meteorites_temp"
SET "lat" = NULL
WHERE "id" IN (
    SELECT "id" FROM "meteorites_temp"
    WHERE "lat" = ''
);
UPDATE "meteorites_temp"
SET "long" = NULL
WHERE "id" IN (
    SELECT "id" FROM "meteorites_temp"
    WHERE "long" = ''
);


UPDATE "meteorites_temp"
SET "mass" = (
    SELECT ROUND("mass", 2) FROM "meteorites_temp"
)
WHERE "id" IN (
    SELECT "id" FROM "meteorites_temp"
    WHERE "mass" != ROUND("mass", 2)
);

UPDATE "meteorites_temp"
SET "lat" = (
    SELECT ROUND("lat", 2) FROM "meteorites_temp"
)
WHERE "id" IN (
    SELECT "id" FROM "meteorites_temp"
    WHERE "lat" != ROUND("lat", 2)
);

UPDATE "meteorites_temp"
SET "long" = (
    SELECT ROUND("long", 2) FROM "meteorites_temp"
)
WHERE "id" IN (
    SELECT "id" FROM "meteorites_temp"
    WHERE "long" != ROUND("long", 2)
);
CREATE TABLE "meteorites"(
    "id" integer,
    "name" text,
    "class" text,
    "mass" text,
    "discovery" text  NOT NULL CHECK("discovery" IN ('Fell', 'Found')),
    "year" numeric,
    "lat" numeric,
    "long" numeric,
    PRIMARY KEY("id")
);

INSERT INTO "meteorites" ("name","class","mass","discovery","year","lat","long")
SELECT "name","class","mass","discovery","year","lat","long"
FROM "meteorites_temp"
WHERE nametype != "Relict"
ORDER BY "year", "name";


