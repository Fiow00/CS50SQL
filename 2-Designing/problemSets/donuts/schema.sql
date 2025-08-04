CREATE TABLE "ingrediants" (
    "id" INTEGER,
    "ingrediant" TEXT NOT NULL UNIQUE,
    "price" NUMERIC NOT NULL,
    "unit" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "donuts" (
    "id" INTEGER,
    "ingrediant_id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "gluten-free" TEXT NOT NULL CHECK("gluten-free" IN ('yes', 'no')),
    "price" NUMERIC NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("ingrediant_id") REFERENCES "ingrediants"("id")
);

CREATE TABLE "orders" (
    "id" INTEGER,
    "donut_id" INTEGER,
    "order_number" INTEGER NOT NULL UNIQUE,
    "customer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut_id") REFERENCES "dounts"("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "customers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "order_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id")
);
