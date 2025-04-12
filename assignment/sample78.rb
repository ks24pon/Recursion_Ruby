def notDivisibleNumbers(x,y)
    # x == 1 かつ y == 1はあまりないので除外
    return "" if x == 1 && y == 1

    # 出力を格納する配列
    array_preparation = []

    #　1 から x までの整数を y で割った時に余りがある処理
    (1..x).each do |num|
        # yで割って余がある場合
        if num % y != 0
            # 配列に追加
            array_preparation << num
        end
    end

    # 配列を"-"で繋いで文字列に返す
    array_preparation.join("-")
end