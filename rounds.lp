% constants.
#const rounds = 1. % number of rounds in the season.
#const times = 9. % number of game times per round.

% Add a game between hometeam and awayteam to the answer set.
game(Home, Away) :-
	team(Home,_,_,_),
	team(Away,_,_,_),
	Home != Away.

{ round(Round, Home, Away, Time) : game(Home, Away) } = 1 :-
	Round = 1..rounds,
	Time = 1..times.

% 2 teams cannot play eachother twice in the same round.
:- round(Round, Home, Away, Time1), round(Round, Home, Away, Time2), Time1 != Time2.

% Prevent games against different away teams.
:- round(Round, Home, Away1, Time1), round(Round, Home, Away2, Time2), Time1 != Time2, Away1 != Away2.

% Prevent games against different home teams.
:- round(Round, Home1, Away, Time1), round(Round, Home2, Away, Time2), Time1 != Time2, Home1 != Home2.
