-module(p001).
-import(lists, [seq/3, sum/1]).
-export([answer/0]).

answer() -> sum_multiples(3) + sum_multiples(5) - sum_multiples(15). 
  
sum_multiples(Of) -> sum(seq(0, 999, Of)).