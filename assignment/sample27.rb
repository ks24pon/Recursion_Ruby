# メソッド
def isLeapYear(year)
    # 400で割り切れる数
    return true if year % 400 == 0
    # 100で割り切れる数
    return false if year % 100 == 0
    # 4で割り切れる
    return true if year % 4 == 0
    # いずれにも該当しない場合
    false
end

# 出力
puts isLeapYear(2000)
puts isLeapYear(2011)
puts isLeapYear(2012)
puts isLeapYear(2024)
puts isLeapYear(1900)
puts isLeapYear(2100)

