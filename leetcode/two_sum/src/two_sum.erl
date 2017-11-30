-module(two_sum).
-export([find_indices/2]).

find_indices(L, Target) ->
    Indices = lists:zip(L, lists:seq(1, length(L))),
    find_indices(Indices, Indices, Target).

find_indices([{N, Key} | T], Indices, Target) ->
    Diff = Target - N,
    case proplists:lookup(Diff, Indices) of
        none ->
            find_indices(T, Indices, Target);
        {Diff, Index} ->
            [Key, Index]
    end.
            
