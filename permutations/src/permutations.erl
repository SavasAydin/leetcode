-module(permutations).
-export([find/1]).

find([]) ->
    [[]];
find(L) ->
    [[H|T] || H <- L, T <- find(L--[H])].
