def vacationRental(people, day)
    # 宿泊料金の計算（泊数による単価の違い）
    if day >= 10
      per_day = 50
    elsif day >= 4
      per_day = 60
    else
      per_day = 80
    end
    # 基本宿泊料金の計算
    base_price = people * day * per_day
  
    # 清掃費の計算（宿泊料金の12%）
    cleaning_fee = base_price * 0.12
  
    # 清掃費込みの合計
    total_with_cleaning = base_price + cleaning_fee
  
    # 税金の計算（清掃費込みの合計に8%）
    total = total_with_cleaning * 1.08
  
    # 小数点以下を切り捨てて整数に変換
    return total.floor
  end
  
  # 動作確認
  puts vacationRental(2, 3)   # => 580
  puts vacationRental(2, 4)   # => 580
  puts vacationRental(2, 8)   # => 1161
  puts vacationRental(4, 5)   # => 1451
  puts vacationRental(12, 10) # => 7257