def sumOfAllPrimes(n)
  (2..n).select do |i|
    (2..Math.sqrt(i)).none? { |j| i % j == 0 }
  end.sum
end
