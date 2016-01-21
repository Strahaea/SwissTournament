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





