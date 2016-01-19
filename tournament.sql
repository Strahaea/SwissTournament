-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
create table players(
	id serial,
	player_name text,
	ranking integer);
	
create table matches(
	player1 text,
	player2 text,
	outcome text);





