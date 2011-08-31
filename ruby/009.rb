# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
#
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

max = 1000 / 2

def is_triplet?(a, b, c)
  a ** 2 + b ** 2 == c ** 2
end

3.upto(max) do |a|
  a.upto(max) do |b|
    b.upto(max) do |c|
      p a * b * c if is_triplet?(a, b, c) && (a + b + c == 1000)
    end
  end
end
