-module(longest_substring_tests).
-include_lib("eunit/include/eunit.hrl").

length_of_one_character_string_test() ->
    Str = "b",
    Res = longest_substring:find(Str),
    ?assertEqual(1, Res).

length_of_one_repeating_character_string_test() ->
    Str = "bbbbb",
    Res = longest_substring:find(Str),
    ?assertEqual(1, Res).

length_of_three_repeating_character_string_test() ->
    Str = "abcabcbb",
    Res = longest_substring:find(Str),
    ?assertEqual(3, Res).

length_of_long_one_repeating_character_string_test() ->
    Str = "pwwke",
    Res = longest_substring:find(Str),
    ?assertEqual(3, Res).
