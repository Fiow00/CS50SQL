
-- *** The Lost Letter ***
SELECT "address", "type" FROM "addresses" WHERE "id" IN (
    SELECT "to_address_id" FROM "packages" WHERE "contents" = 'Congratulatory letter'
);

-- *** The Devious Delivery ***
SELECT "id", "contents", "to_address_id" FROM "packages" WHERE "packages" WHERE "from_address_id" IS NULL;

SELECT "action" FROM "scans" WHERE "package_id" IN (
    SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
);

SELECT * FROM "addresses" WHERE "id" IN (
    SELECT "address_id" FROM "scans" WHERE "package_id" IN (
        SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
    ) AND "action" = 'Drop'
);
-- *** The Forgotten Gift ***
SELECT * FROM "packages" WHERE "from_address_id" IN (
    SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Stree'
);

SELECT "timestamp" FROM "scans" WHERE "package_id" = 9523 ORDER BY "timestamp" DESC;

SELECT "name" FROM "drivers" WHERE "id" = (
    SELECT "driver_id" FROM "scans" WHERE "package_id" = 9523 ORDER BY "timestamp" DESC
);
