SELECT "city", COUNT("id") FROM "schools"
WHERE "type" LIKE 'Public %'
GROUP BY "city" HAVING COUNT("id") < 3 OR COUNT("id") = 3
ORDER BY COUNT("id") DESC, "city";
