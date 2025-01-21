-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

select t.name, p.first_name as 'First', p.last_name as "Last", max(s.home_runs)
FROM stats s  
    INNER JOIN players p ON s.player_id = p.id
    INNER JOIN teams t ON t.id = s.team_id
WHERE t.year = 2019
