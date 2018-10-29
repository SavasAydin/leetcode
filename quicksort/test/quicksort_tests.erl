-module(quicksort_tests).
-include_lib("eunit/include/eunit.hrl").

quicksort_test() ->
    Res = quicksort:sort([54,26,93,44, 17,77,31,44,55,20]),
    ?assertEqual([17, 20, 26, 31, 44, 44, 54, 55, 77, 93], Res).
