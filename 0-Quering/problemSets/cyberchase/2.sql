-- List the first episode of every season.
SELECT "season", "title" FROM "episodes" WHERE "episode_in_season" = 1;
