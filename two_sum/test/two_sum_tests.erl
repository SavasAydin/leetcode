-module(two_sum_tests).
-include_lib("eunit/include/eunit.hrl").

find_indices_of_two_numbers_in_two_elements_list_that_add_up_to_10_test() ->
    L = [3, 7],
    Target = 10,
    Res = two_sum:find_indices(L, Target),
    ?assertEqual([1,2], Res).

indices_of_two_numbers_in_six_elements_list_that_add_up_to_10_test() ->
    L = [3, 10, 20, 6, 8, 0],
    Target = 10,
    Res = two_sum:find_indices(L, Target),
    ?assertEqual([2, 6], Res).
