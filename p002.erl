-module(p002).
-export([answer/0]).

answer() -> fib(0, 1, 2, 4000000).

fib(Sum, L, R, Max) when R < Max ->
  case R rem 2 == 0 of
    true  -> fib(Sum + R, R, L + R, Max);
    false -> fib(Sum, R, L + R, Max)
  end;
fib(Sum, _, _, _) -> Sum.