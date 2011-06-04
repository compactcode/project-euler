candidates = []

20.downto(1).each do |x|
  candidates << x unless candidates.count { |candidate| candidate % x == 0 } > 0
end

match = 0
current = 0
while match == 0
  match = current if candidates.take_while { |x| current.modulo(x) == 0 }.size == candidates.size
  current += 1
  p current if current % 100000 == 0
end

p match
