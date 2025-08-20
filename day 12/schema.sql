create database "LinkedIn";
use LinkedIn;

create table Users(
    "id" integer AUTO_INCREMENT,
    "first_name" text,
    "last_name"text,
    "username" text,
    "password" varchar,
    PRIMARY KEY("id")
)
create table Schools(
    "id" integer AUTO_INCREMENT,
    "schools_name" varchar,
    "school_type"varchar,
    "founding_year" integer,
    "location" varchar,
    PRIMARY KEY("id") 
)
create table Companies(
    "id" integer AUTO_INCREMENT
    "companie_name" varchar,
    "industry" varchar,
    "location" varchar,
    PRIMARY KEY("id")
)
create table userConnections(
    "id" integer,
    "user1_id" integer,
    "user2_id" integer,
    PRIMARY KEY("id"),
    FOREIGN KEY("user1_id") references "user1"."id"
    FOREIGN KEY("user2_id") references "user2"."id" 
)
create table userSchools(
    "id" integer,
    "user_id" integer,
    "school_id" integer,
    "starting_date" date,
    "end_date" date,
    "degree" text,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") references "user"."id"
    FOREIGN KEY("school_id") references "schoole"."id"
)
create table userCompanies(
    "id" integer,
    "user_id" integer,
    "Companie_id" integer,
    "start_date" date,
    "end_date" date,
    PRIMARY KEY("id")
    FOREIGN KEY("user_id") references "user"."id"
    FOREIGN KEY("Companie_id") references "Companie"."id"
)

