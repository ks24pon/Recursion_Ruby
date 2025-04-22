# 2つの数を足してtargetになる組み合わせを探す関数
def canMakeTargetVal(arr,target)
  # 配列の中から1つずつ[a]として取り出しつつ、インデックスも使う
  arr.each_with_index do |a, i|
      # 自分より後ろの要素だけをループ
      # i+1から配列の最後までインデックスjで返す
      (i + 1...arr.length).each do |j|
          # j番目の要素をb変数に入れる
          b = arr[j]
          # a + bがtargetに一致するかチェック
          if a + b == target
              # 見つかればtrue
              return true
          end
      end
  end
  # 最後まで見つからなければfalse
  false
end

