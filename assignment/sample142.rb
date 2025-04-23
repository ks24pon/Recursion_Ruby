def shuffleSuccessRate(arr,shuffledArr)
  # 地震前の荷物の並びを記録するハッシュマップを作成
  original_index_map = {}
  # 配列を1つずつ取り出して、要素とインデックスをハッシュに登録
  arr.each_with_index do |item, idx|
      # {2=>0, 32=>1, 45=>2}
      original_index_map[item] = idx
  end

  # 移動した荷物の個数をカウント
  count = 0

  shuffledArr.each_with_index do |item, idx|
      # 元のインデックスと現在のインデックスが違っていたらカウント
      count += 1 if original_index_map[item] != idx
  end

  # 移動した割合を100倍にしてパーセンテージに変換
  ((count.to_f / arr.size) * 100).floor
end

