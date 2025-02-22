def calculateInterestRate(capital)
    # evenで偶数であれば0.02、奇数なら0.03
    capital.even? ? 0.02 : 0.03
end



def calculateGoalMoney(capital, year)
    # 年率を取得
    rate = calculateInterestRate(capital)
    amount = capital * (1 + rate) ** year
    amount.to_i
end