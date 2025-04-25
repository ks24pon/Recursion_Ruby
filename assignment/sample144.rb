def searchList(num_list,value)
  # ハッシュマップ初期化
  hash_map = {}

  num_list.each_with_index do |num, index|
      # まだ登録されていない場合だけ登録(最初のインデックス優先)
      hash_map[num] ||= index
  end

  # 探しているハッシュに含まれていればインデックスを返す
  # なければ-1を返す
  hash_map.fetch(value, -1)
end

