def fibonacci(limit)
  sequence = [1, 2]
  begin 
    sequence << sequence.last(2).reduce(:+)
  end while sequence.last < limit
  sequence.pop
  sequence
end

p fibonacci(4000000).select{|x| x.even?}.reduce(:+)
