def isRationalNumber(number)
    # Math.sqrtで引数のnumberの平方根を計算し、その結果をsqrt変数に格納
    sqrt = Math.sqrt(number)

    # 平方根が整数かどうか判定
    sqrt == sqrt.to_i
end

# 動作確認
puts isRationalNumber(1)    # true
puts isRationalNumber(2)    # false
puts isRationalNumber(3)    # false
puts isRationalNumber(4)    # true
puts isRationalNumber(9)    # true
puts isRationalNumber(16)   # true
puts isRationalNumber(49)   # true
puts isRationalNumber(225)  # true
