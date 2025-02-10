# 最後の桁チェック
def checkLastDigits(x,y,z)
    # (x * y)の最後の桁とzの最後の桁と比較して同じならtrue
    return (x * y) % 10 == z % 10
end

# 出力
puts checkLastDigits(12,14,68)
puts checkLastDigits(1,1,1)
puts checkLastDigits(15,15,90)
puts checkLastDigits(710,365,304)
puts checkLastDigits(185,178,666)
