-- Number of episodes released in last 6 years.
SELECT COUNT("id") FROM "episodes" WHERE "air_date" BETWEEN date('2018-01-01') AND date('2023-12-31');
