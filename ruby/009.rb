max = 1000

def is_triplet?(a, b, c)
  a ** 2 + b ** 2 == c ** 2
end

3.upto(max) do |a|
  a.upto(max) do |b|
    c = max - a - b
    p a * b * c if is_triplet?(a, b, c)
  end
end
