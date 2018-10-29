-module(permutations_tests).
-include_lib("eunit/include/eunit.hrl").

permutations_of_two_integers_test() ->
    Res = permutations:find([1, 2]),
    ?assertEqual([[1,2], [2,1]], Res).

permutations_of_three_integers_test() ->
    Res = permutations:find([1, 2, 3]),
    ?assertEqual([[1,2,3], [1,3,2], [2,1,3], [2,3,1], [3,1,2], [3,2,1]], Res).
