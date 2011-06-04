require 'prime'

factors = Hash.new(0)

(2..20).map { |x| Prime.prime_division(x) }.flatten(1).each { |prime_factors|
  factors[prime_factors.first] = [prime_factors.last, factors[prime_factors.first]].max
}

p factors.map { |factor, occurrances| factor ** occurrances }.reduce(:*)