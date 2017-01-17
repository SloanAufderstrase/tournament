-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.



--Players table record the basic information of registered players.

--player_id: the player's unique id (assigned by the database)
--player_name: the player's full name (as registered)
--wins: the number of matches the player has won 
--matches: the number of matches the player has played

CREATE TABLE Players (
	player_id serial not null,
	player_name text not null,
	wins integer not null default(0),
	matches integer not null default(0),
	primary key (player_id)
	);


--Matches table records the pairings of players and who won,who lost.

--match_id:  the id number of the match they played
--winner_id: the id number of the player who won
--loser_id:  the id number of the player who lost

create table Matches(
	match_id   serial not null,
	winner_id integer not null,
	loser_id integer not null,
	primary key (match_id),
	foreign key (winner_id) references Players(player_id),
	foreign key (loser_id) references Players(player_id)
	);

