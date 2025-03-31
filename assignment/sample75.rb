def fibonacci(num)
    # ベースケース
    return num if num < 2
    # 初期設定
    a, b = 0, 1
    # 2 から numまでの範囲でループを回してフィボナッチ数を計算
    (2..num).each { a, b = b, a + b }
    # num番目のフィボナッチ数を返す
    b
end