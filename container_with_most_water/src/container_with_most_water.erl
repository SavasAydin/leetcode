-module(container_with_most_water).
-export([find/1]).

find(Numbers) when length(Numbers) > 1 ->
    Coordinates = lists:zip(lists:seq(1, length(Numbers)), Numbers),
    find_max(Coordinates, []).

find_max([_], Areas) ->
    lists:max(Areas);
find_max([{X1, Y1} | T], Acc) ->
    Areas = lists:map(fun({X, Y}) -> (X-X1) * lists:min([Y1,Y]) end, T),
    find_max(T, [lists:max(Areas) | Acc]).
