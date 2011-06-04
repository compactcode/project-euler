match = 0
current = 20
while match == 0
  match = current unless (2..10).map { |x| current.modulo(x) == 0 }.include?(false)
  current += 1
end
p match
