def interestsPaid(initialLoan,didPayOnTime)
    service_fee = 2.5
    percent_late = 1.15
    percent_default = 1.02
    total = initialLoan
    total *= didPayOnTime ? percent_default : percent_late
    total + service_fee
end

puts interestsPaid(100,true)
puts interestsPaid(830,false)
puts interestsPaid(100,false)
puts interestsPaid(225,true)
puts interestsPaid(225,false)
