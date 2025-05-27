def twoSum(intArr,sumInt)
  # 値とそのインデックスを記録するハッシュ
  index_map = {}
  candidates = []

  # 配列を走査してペアを探す
  intArr.each_with_index do |num, i|
      # もう一つの必要な補数を求めている
      # 例：intArr = [1, 2, 3, 4]sumInt = 5
      # 現在、num = 2ならもう一つの数字は３が必要(complement = 5 - 2)
      complement = sumInt - num
      
      # その値がすでにハッシュに存在していればペア成立
      if index_map.has_key?(complement)
          candidates << [index_map[complement], i] # 小さいインデックスから返せるようになってる
      end
      
      # 現在の値とそのインデックスを登録
      # 同じ値がある場合、最初に出たインデックスを保持
      index_map[num] ||= i
  end
  # ペアが見つからなかったら空の配列を返す
  candidates.min || []
end

