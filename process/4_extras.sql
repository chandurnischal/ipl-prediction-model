ALTER TABLE extras
ADD COLUMN team_id INTEGER;

ALTER TABLE extras
ALTER COLUMN byes TYPE INTEGER USING byes::INTEGER;

ALTER TABLE extras
ALTER COLUMN leg_byes TYPE INTEGER USING leg_byes::INTEGER;

ALTER TABLE extras
ALTER COLUMN wides TYPE INTEGER USING wides::INTEGER;

ALTER TABLE extras
ALTER COLUMN extras TYPE INTEGER USING extras::INTEGER;

ALTER TABLE extras
ALTER COLUMN innings TYPE INTEGER USING innings::INTEGER;

UPDATE extras SET team = 'Royal Challengers Bengaluru' WHERE team = 'Royal Challengers Bangalore';
UPDATE extras SET team = 'Delhi Capitals' WHERE team = 'Delhi Daredevils';
UPDATE extras SET team = 'Punjab Kings' WHERE team = 'Kings XI Punjab';

UPDATE extras
SET team_id = teams.team_id
FROM teams
WHERE extras.team = teams.team_name;