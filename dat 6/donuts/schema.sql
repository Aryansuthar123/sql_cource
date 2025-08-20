create table Ingredients(
    "id" integer,
    "name" text,
    "pay_per_unit" integer,
    "unit" text,
    PRIMARY KEY("id")

);
create table Donuts(
    "id" integer,
    "name" text,
    "price" real,
    "is_gluten_free" boolean,
    PRIMARY KEY("id")
);
create table DonutsIngredients(
    "donut_id" integer,
    "Ingredients_id" integer,
    PRIMARY KEY("donut_id", "Ingredients_id"),
    foreign key("donut_id") references "donuts"(id),
    foreign key("Ingredients_id") references "Ingredients"(id)


);
create table Orders(
    "id" integer,
    "coustomer_id" integer,
    "order_time" date,
    PRIMARY KEY("id"),
    foreign key("coustomer_id") references "coustomer"("id")
);

create table orderitems(
    "order_id" integer,
    "donut_id" integer,
    "quantity" integer,
    PRIMARY KEY("order_id", "donut_id"),
    foreign key("order_id") references "order"("id"),
    foreign key("donut_id") references "donut"("id")
);
create table Customers(
    "id" integer,
    "first_name" text,
    "last_name" text,
    PRIMARY KEY("id")
);
