-module(quicksort).
-export([sort/1]).

sort([]) ->
    [];
sort([H|T]) ->
    sort([X || X <- T, X =< H]) ++ [H] ++ sort([X || X <- T, X > H]).
