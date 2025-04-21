# ランダム関数
def random_int(min, max)
  rand(min..max)
end

# 配列を"[]"のようなフォーマットで出力
def print_array(int_arr)
  string = "["
  # 配列の各要素に対してループ
  int_arr.each do |num|
      string += "#{num}"
  end
  # stripで末尾のスペース削除
  puts string.strip + "]"
end

# ラウンドロビン方式でn個の数字をバックの中から選ぶ
def choose_n_from_bags_2d(n, list_of_bags)
  # バッグの総数(バッグ配列サイズ)
  total_bags = list_of_bags.length
  # 選ばれた数字を入れるための配列
  chosen_numbers = []
  # 何個選んだかを数えるカウンター
  counter = 0

  # n 選ぶまで繰り返す
  while counter < n
      # ラウンドロビン
      current_bag = list_of_bags[counter % total_bags]
      # 現在の配列の中からランダムに1つ選んでchosen_numbersに追加
      chosen_numbers << current_bag[random_int(0, current_bag.length-1)]
      # counterを1増やして次のループへ
      counter += 1
  end
  # 選ばれた数値を返す
  chosen_numbers
end


# それぞれのバッグは4つの数字を含む
lucky_array_of_bags = [
  [21, 5, 12, 25],
  [100, 88, 354, 643],
  [122, 145, 825, 4],
  [228, 674, 777, 77]
]

# 実行
print_array(choose_n_from_bags_2d(10, lucky_array_of_bags))