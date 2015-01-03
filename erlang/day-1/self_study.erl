-module(self_study).
-export([count/1]).
-export([count_to/1]).
-export([report_result/1]).
-export([report_result/2]).

%-- Word counter
%-- Write a function that uses recursion to return the number of words in a string._
count(Phrase) ->
  internal_count(string:tokens(Phrase, " ")).

internal_count([]) -> 0;

internal_count(Words) ->
  [_ | Tail] = Words,
  1 + internal_count(Tail).

%-- Count to ten
%-- Write a function that uses recursion to count to ten. 
count_to(N) -> 
  count_to(1, N).

count_to(Counter, Max) when Counter < Max ->
  io:fwrite("~w~n", [Counter]),
  count_to(Counter + 1, Max);

count_to(_, Max) ->
  io:fwrite("~w~n", [Max]).

%-- Error reporting
%-- Write a function that uses matching to selectively print "success" or "error: message" given input in the form {error, Message} or success.

report_result(error, Message) ->
  io:fwrite("~s~n", [Message]).

report_result(success) ->
  io:fwrite("Success~n").

