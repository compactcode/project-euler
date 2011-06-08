-module(p002).
-export([answer/0]).

answer() -> fib(0, 1, 2, 4000000).

fib(Sum, L, R, Max) when R < Max -> fib(Sum + (R - R rem 2 * R), R, L + R, Max);
fib(Sum, _, _, _) -> Sum.