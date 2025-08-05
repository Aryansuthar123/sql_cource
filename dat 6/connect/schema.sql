CREATE TABLE Users(
    "id" INTEGER,
    "first_name" text,
    "last_name" text,
    "username" text,
    "password" text,
    PRIMARY KEY("id")
);

CREATE TABLE Schools(
    "id" INTEGER,
    "name" text,
    "school_type" text,
    "location" text,
    "founding" text,
    PRIMARY KEY("id")

);
CREATE TABLE Companies(
    "id" INTEGER,
    "name" text,
    "industry" text,
    "location" text,
    PRIMARY KEY("id")
);

CREATE TABLE userSchools(
    "id" integer,
    "user_id" integer,
    "schoole_id" text,
    "start_date" date,
    "end_date" date,
    "degree" text,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") references "user"("id")
    FOREIGN KEY("schoole_id") references "schoole"("id")

);

CREATE TABLE userCompanies(
    "id" integer,
    "user_id" integer,
    "Companies_id" text,
    "start_date" date,
    "end_date" date,
    "title" text,
    PRIMARY KEY("id")
    FOREIGN KEY("user_id") references "user"("id")
    foreign key("Companies_id") references "Companies"("id")
);
create table userConnection(
    "id" integer,
    "user1_id" integer,
    "user2_id" integer,
    PRIMARY KEY("id")
    FOREIGN KEY ("user1_id") REFERENCES "user"("id"),
    FOREIGN KEY ("user2_id") REFERENCES "user"("id"),
    CHECK ("user1_id"!="user2_id"),
    UNIQUE ("user1_id","user2_id")
);
