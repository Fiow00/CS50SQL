SELECT DISTINCT("name") FROM "teams"
JOIN "performances" ON "teams"."id" = "performances"."team_id"
WHERE "player_id" IN (
    SELECT "id" FROM "players"
    WHERE "first_name" = 'Satchel' AND "last_name" = 'Paige'
);
