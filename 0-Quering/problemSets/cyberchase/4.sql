-- List episodes that dont have a topic.
SELECT "title" FROM "episodes" WHERE "topic" IS NULL;
