-module(p003).
-export([answer/0]).

answer()  -> answer(600851475143).
answer(N) -> lists:max(lists:filter(factors(N), primes:upto(round(math:sqrt(N))))).

factors(N) -> (fun(X) -> N rem X =:= 0 end).