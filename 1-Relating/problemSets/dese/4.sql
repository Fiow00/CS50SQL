SELECT "city", COUNT("id") FROM "schools"
WHERE "type" LIKE 'Public %'
GROUP BY "city"
ORDER BY COUNT("id") DESC, "city"
LIMIT 10;
