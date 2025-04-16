# 偶数かどうか判定関数
def isEven(n)
    # 2で割って余りが0なら偶数
    n % 2 == 0
end

# 整数の配列から偶数の数をカウント関数
def total_even(list_of_ints)
    # 偶数の数をカウントするための変数を初期化
    count = 0

    # 配列の各要素に対して処理を行う
    list_of_ints.each do |num|
        # 偶数だったらカウント1増加
        count += 1 if isEven(num)
    end
    # カウント結果を返す
    count
end
# テスト用の配列
list1 = [3, 43, 5, 4, 2, 100, 6]

# 結果を表示
puts total_even(list1)