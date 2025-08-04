-- Season's six episodes that released in 2007.
SELECT "title" FROM "episodes" WHERE "season" = 6 AND "air_date" < date('2008-01-01');
