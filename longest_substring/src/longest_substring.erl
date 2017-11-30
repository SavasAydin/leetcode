-module(longest_substring).
-export([find/1]).

find(Str) ->
    find(Str, [], 0, 0).

find([], _, L1, L2) when L1 > L2 ->
    L1;
find([], _, _, L2) ->
    L2;
find([C | T], Acc, LenAcc, Max) ->
    case lists:member(C, Acc) of
        true ->
            NewMax = lists:max([LenAcc, Max]),
            find(T, [C], 1, NewMax);
        false ->
            find(T, [C | Acc], LenAcc+1, Max)
    end.
