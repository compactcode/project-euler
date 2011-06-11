-module(p004).
-export([answer/0]).

answer() -> solve(lists:seq(100, 999)).

solve(Seq) -> solve(Seq, lists:max(Seq), 0).
solve([], _, Largest) -> Largest;
solve([H | T], Max, Largest) -> 
  Palindromes = [palindrome(X * H) || X <- lists:seq(H, Max)],
  solve(T, Max, max(Largest, lists:max(Palindromes))).

palindrome(N) when is_integer(N) -> palindrome(integer_to_list(N));
palindrome(N)                    -> palindrome(N, N == lists:reverse(N)).
palindrome(_, false)             -> 0;
palindrome(N, true)              -> list_to_integer(N).  