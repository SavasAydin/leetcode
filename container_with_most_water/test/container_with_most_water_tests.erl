-module(container_with_most_water_tests).
-include_lib("eunit/include/eunit.hrl").

find_max_container_area_of_two_points_test() ->
    Res = container_with_most_water:find([1, 2]),
    ?assertEqual(1, Res).

find_max_container_area_of_three_points_test() ->
    Res = container_with_most_water:find([2, 3, 8]),
    ?assertEqual(4, Res).

find_max_container_area_of_many_points_test() ->
    Res = container_with_most_water:find([1,8,6,2,5,4,8,3,7]),
    ?assertEqual(49, Res).
