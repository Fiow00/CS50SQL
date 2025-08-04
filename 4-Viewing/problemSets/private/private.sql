CREATE TABLE "test" (
    "id" INTEGER,
    "phrase" TEXT NOT NULL,
    PRIMARY KEY("id")
);

INSERT INTO "test" ("phrase")
VALUES
((SELECT substr((SELECT "sentence" FROM "sentences" WHERE "id" = 14), 98, 4) LIMIT 1)),
((SELECT substr((SELECT "sentence" FROM "sentences" WHERE "id" = 114), 3, 5) LIMIT 1)),
((SELECT substr((SELECT "sentence" FROM "sentences" WHERE "id" = 618), 72, 9) LIMIT 1)),
((SELECT substr((SELECT "sentence" FROM "sentences" WHERE "id" = 630), 7, 3) LIMIT 1)),
((SELECT substr((SELECT "sentence" FROM "sentences" WHERE "id" = 932), 12, 5) LIMIT 1)),
((SELECT substr((SELECT "sentence" FROM "sentences" WHERE "id" = 2230), 50, 7) LIMIT 1)),
((SELECT substr((SELECT "sentence" FROM "sentences" WHERE "id" = 2346), 44, 10) LIMIT 1)),
((SELECT substr((SELECT "sentence" FROM "sentences" WHERE "id" = 3041), 14, 5) LIMIT 1));

CREATE VIEW "message" AS
SELECT * FROM "test";
