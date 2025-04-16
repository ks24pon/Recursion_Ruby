# 偶数判定
def isEven(n)
  # 2で割れたら偶数
  n % 2 == 0
end


# 整数の配列を取り込み、偶数の個数チェック
def totalEven(listOfInts)
  # 個数の初期値
  count = 0
  listOfInts.each do |num|
    count += 1 if isEven(num)
  end
  count
end

# 配列準備
list1 = [3, 43, 5, 4, 2, 100, 6]
# 出力
puts totalEven(list1)