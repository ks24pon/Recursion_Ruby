def perfectNumberList(n)
    # 完全数を格納する配列を用意
    result = []

    # 2 からnまで調べる
    (2..n).each do |i|
        # i の自分自身を除いた正の約数を取り出して合計する
        sum = (1...i).select { |x| i % x == 0}.sum
        # 合計が元の数iと同じなら「完全数」なので配列に追加
        result << i if sum == i
    end

    # リストが空なら"none"、それ以外は"-"で統合して出力する
    result.empty? ? "none" : result.join("-")
end

