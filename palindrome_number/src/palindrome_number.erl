-module(palindrome_number).
-export([is_palindrome/1,
         is_palindrome_2/1]).

is_palindrome(N) ->
    Str = integer_to_list(N),
    Str == lists:reverse(Str).

is_palindrome_2(N) ->
    Bin = integer_to_binary(N),
    Bin == reverse(Bin, <<>>).

reverse(<<>>, Res) ->
    Res;
reverse(<<H, T/binary>>, Acc) ->
    reverse(T, <<H, Acc/binary>>).
