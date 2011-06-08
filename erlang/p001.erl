-module(p001).
-export([answer/0]).

answer() -> sum_multiples(3) + sum_multiples(5) - sum_multiples(15). 
  
sum_multiples(Of) -> lists:sum(lists:seq(0, 999, Of)).