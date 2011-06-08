fibonacci = Enumerator.new { |y|
   a, b = 1, 2
   loop {
     y << a
     a, b = b, a + b
   }
}
p fibonacci.take_while { |x| x < 4000000 }.select { |x| x.even? }.reduce(:+)
