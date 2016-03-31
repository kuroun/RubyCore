def sum_terms(n)
  # your code here
   (1..n).reduce(0) {|x, number| x + (number ** 2 + 1)}
end
puts sum_terms(25)
