-module(self_study).
-export([count/1]).
-export([count_to/1]).

%-- Word counter
count(Phrase) ->
  internal_count(string:tokens(Phrase, " ")).

internal_count([]) -> 0;

internal_count(Words) ->
  [_ | Tail] = Words,
  1 + internal_count(Tail).

%-- Count to ten
count_to(N) -> 
  count_to(1, N).

count_to(Counter, Max) when Counter < Max ->
  io:fwrite("~w~n", [Counter]),
  count_to(Counter + 1, Max);

count_to(_, Max) ->
  io:fwrite("~w~n", [Max]).

