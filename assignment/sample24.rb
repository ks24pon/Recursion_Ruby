def whoIsWinner(hisCard)
    ## 大富豪の強さ配列で定義
    strength_order = [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2]

    ## 自分のカードの強さ
    my_strength = strength_order.index(10)

    ## 相手カードの強さ
    his_strength = strength_order.index(hisCard)

    ## 強さを比較
    if my_strength > his_strength
        "you win"
    elsif my_strength < his_strength
        "you lose"
    else
        "draw"
    end
end


puts whoIsWinner(1)
puts whoIsWinner(2)
puts whoIsWinner(3)
puts whoIsWinner(9)
puts whoIsWinner(10)
puts whoIsWinner(11)