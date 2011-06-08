-module(primes).
-export([upto/1, is_prime/1]).

upto(2) -> [2];
upto(Limit) -> upto(Limit, 3, [2]).
upto(Limit, N, Primes) when N < Limit -> 
  case is_prime(N) of
    true  -> upto(Limit, N + 2, [N | Primes]);
    false -> upto(Limit, N + 2, Primes)
  end;
upto(_, _, Primes) -> Primes.

is_prime(2) -> true;
is_prime(3) -> true;
is_prime(N) when N rem 2 =:= 0 orelse N rem 3 =:= 0 -> false;
is_prime(N) -> scan(N, 5, round(math:sqrt(N))).

scan(N, X, _)   when N rem X == 0     -> false;
scan(N, X, _)   when N rem X + 2 == 0 -> false;
scan(N, X, Max) when X < Max          -> scan(N, X + 6, Max);
scan(_, _, _)                         -> true.