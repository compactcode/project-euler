largest = [0]
current = [0]

digits = IO.read("008.input").chars.each { |x|
  current.shift if current.size > 4
  current.push(x.to_i)
  largest.replace(current) if current.reduce(:+) > largest.reduce(:+)
} 

p largest.reduce(:*)
