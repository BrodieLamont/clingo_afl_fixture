% constants.
#const rounds = 1. % number of rounds in the season.
#const times = 9. % number of game times per round.

% Add a game between hometeam and awayteam to the answer set.
game(Home, Away) :-
	team(Home,_,_,_),
	team(Away,_,_,_),
	Home != Away.
