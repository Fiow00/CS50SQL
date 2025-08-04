CREATE TABLE "passengers"(
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NUll,
    "age" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "airlines"(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL CHECK ("concourse" IN ('A, B, C, D, E, F, T')),
    PRIMARY KEY("id")
);

CREATE TABLE "flights"(
    "id" INTEGER,
    "flight_number" INTEGER NOT NULL UNIQUE,
    "airline_id" INTEGER,
    "from_airport_code" TEXT NOT NULL UNIQUE,
    "to_airport_code" TEXT NOT NULL UNIQUE,
    "departure_time" NUMERIC NOT NULL,
    "arrival_time" NUMERIC NOT NULL CHECK ("arrival_time" != "departure_time"),
    PRIMARY KEY("id"),
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")
);

CREATE TABLE "check_ins"(
    "id" INTEGER,
    "date" NUMERIC NOT NULL,
    "from_flight_id" INTEGER,
    "to_flight_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("from_flight_id") REFERENCES "flights"("id"),
    FOREIGN KEY("to_flight_id") REFERENCES "flights"("id")
);
