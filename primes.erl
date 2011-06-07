-module(primes).
-export([is_prime/1]).

is_prime(2) -> true;
is_prime(3) -> true;
is_prime(N) when N rem 2 =:= 0 orelse N rem 3 =:= 0 -> false;
is_prime(N) -> scan(N, 5, round(math:sqrt(N))).

scan(N, X, _)   when N rem X == 0     -> false;
scan(N, X, _)   when N rem X + 2 == 0 -> false;
scan(N, X, Max) when X < Max          -> scan(N, X + 6, Max);
scan(_, _, _)                         -> true.