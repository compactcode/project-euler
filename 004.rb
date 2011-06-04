largest = 0
100.upto(999) do |first_factor|
  first_factor.upto(999) do |second_factor|
    product = first_factor * second_factor
    largest = product if product > largest && product.to_s == product.to_s.reverse
  end
end
p largest