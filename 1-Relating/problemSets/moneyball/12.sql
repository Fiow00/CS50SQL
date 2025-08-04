SELECT "first_name", "last_name"
FROM "players"
WHERE "id" IN (
    SELECT "salaries"."player_id"
    FROM "salaries"
    JOIN "performances" ON "salaries"."player_id" = "performances"."player_id"
    WHERE "salaries"."year" = "performances"."year" AND "salaries"."year" = 2001 AND "performances"."H" > 0
    ORDER BY ("salaries"."salary" / "performances"."H")
    LIMIT 10
)
AND "id" IN (
    SELECT "salaries"."player_id"
    FROM "salaries"
    JOIN "performances" ON "salaries"."player_id" = "performances"."player_id"
    WHERE "salaries"."year" = "performances"."year" AND "salaries"."year" = 2001 AND "performances"."RBI" > 0
    ORDER BY ("salaries"."salary" / "performances"."RBI")
    LIMIT 10
)
ORDER BY id;
