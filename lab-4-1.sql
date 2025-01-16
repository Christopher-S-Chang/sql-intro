-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935


select sum(hits)
FROM stats INNER JOIN players on players.id = stats.player_id
where players.first_name = "Barry"
and players.last_name = "Bonds"
;