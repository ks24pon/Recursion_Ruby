def isEven(n)
    # 偶数or奇数判定
    return (n % 2 == 0) ? "The number " + n.to_s + " is even " : "The number " + n.to_s + " is odd"
end

puts isEven(43)
puts isEven(44)
puts isEven(1023)
puts isEven(9992)
