def howMuchIsYourDebt(year)
    # 初期の借金額
    principal = 10000
    # 年利20%なので、毎年1.2倍になる
    interest_rate = 1.2
    # 計算(初期の借金額が年率1.2倍になるので累乗計算する)
    debt = principal * (interest_rate ** year)
    # 小数点以下を切り捨てる
    debt.floor
end

## 出力
puts howMuchIsYourDebt(2)
puts howMuchIsYourDebt(5)
puts howMuchIsYourDebt(10)