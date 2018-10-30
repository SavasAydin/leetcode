-module(palindrome_number_tests).
-include_lib("eunit/include/eunit.hrl").

integer_121_is_palindrome_test() ->
    ?assert(palindrome_number:is_palindrome(121)).


integer_minus_121_is_palindrome_test() ->
    ?assertNot(palindrome_number:is_palindrome(-121)).


integer_121_is_palindrome_2_test() ->
    ?assert(palindrome_number:is_palindrome_2(121)).


integer_minus_121_is_palindrome_2_test() ->
    ?assertNot(palindrome_number:is_palindrome_2(-121)).
