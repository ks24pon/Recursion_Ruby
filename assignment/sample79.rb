def fizzBuzz(n)
    # 結果を格納する配列
    result = []

    # １からnまでの数を処理
    (1..n).each do |i|
        # 3 と 5 の両方で割り切れる数は "FizzBuzz"
        if i % 3 == 0 && i % 5 == 0
            result << "FizzBuzz"
        # 3で割り切れる数は "Fizz"
        elsif i % 3 == 0
            result << "Fizz"
        # 5 で割り切れる数は "Buzz"
        elsif i % 5 == 0
            result << "Buzz"
        # 割り切れない場合はその数をそのまま表示
        else
            result << i.to_s
        end
    end
    # 配列の要素をハイフンで統合して文字列を返す
    result.join("-")
end