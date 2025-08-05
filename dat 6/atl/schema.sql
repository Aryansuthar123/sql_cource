CREATE TABLE passengers(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY("id")
);
CREATE TABLE airlines(
    "id" INTEGER,
    "name" text,
    "concourses" text,
    PRIMARY KEY("id")
);
CREATE TABLE flights(
    "id" INTEGER,
    "flight_number" INTEGER,
    "air_lines_id" INTEGER,
    "from_airport_code" text,
    "to_airport_code" text,
    "departure" datetime,
    "arrival" datetime,
    PRIMARY KEY("id"),
    FOREIGN KEY("air_lines_id") references "air_lines"("id")
);
CREATE TABLE check_ins(
    "id" INTEGER,
    "datetime" datetime,
    "flight_id" bigint,
    "passenger_id" bigint,
    PRIMARY KEY("id"),
    FOREIGN KEY("passenger_id") references "passengers"("id"),
    FOREIGN KEY("flight_id") references "flights"("id")
);
