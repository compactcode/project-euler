-module(p004).
-export([answer/0, combinations/1, largest_palindrome/1]).

answer() -> largest_palindrome(combinations(lists:seq(100, 999))).

combinations(List) -> combinations(List, []).
combinations([], Out) -> Out;
combinations([H | T], Out) -> combinations(T, Out ++ [X * H || X <- T]).

largest_palindrome(List) -> 
  lists:max(lists:filter(fun(N) -> is_palindrome(N) end, List)).
  
is_palindrome(N) when is_integer(N) -> is_palindrome(erlang:integer_to_list(N));
is_palindrome(N) -> N == lists:reverse(N).
