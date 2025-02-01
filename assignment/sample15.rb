def weekly7DaysSales(ticketPrice)
    base_price = 250
    base_sales = 150000
    # 差分計算
    diff = ticketPrice - base_price
    # 価格変動に対する人数変化
    change = (diff / 10.0) * 7000
    # 購入人数を返す
    return (base_sales - change).to_i
end

puts(weekly7DaysSales(260))
puts(weekly7DaysSales(255))
puts(weekly7DaysSales(220))