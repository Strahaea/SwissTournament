-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
create table players(
	id serial primary key,
	name text,
	ranking integer);
	
create table matches(
	winner integer,
	loser integer);

create view for_wins as select players.name, players.id,
count(matches.winner) as wins from players left join matches
on matches.winner = players.id group by players.name, players.id;

-- create view to keep track of matches
    
create view for_matches as select players.name, players.id,
count(matches.winner) as matches from players left join matches
on matches.winner = players.id or matches.loser = players.id 
group by players.name, players.id;
    
-- join the views so we have player_name, wins, and matches in one table

create view player_standings as select for_wins.id, for_wins.name, for_wins.wins, for_matches.matches 
from for_wins, for_matches where for_wins.name = for_matches.name order by for_wins.wins desc;


