def sumOfOddElement(arr)
  arr.select(&:odd?).sum
end