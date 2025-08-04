-- Number of episodes that release in first 6 years.
SELECT COUNT("id") FROM "episodes" WHERE "air_date" BETWEEN date('2002-01-01') AND date('2007-12-31');
