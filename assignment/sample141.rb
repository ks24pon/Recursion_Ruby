# 配列のシャッフル後のインデックスを求める関数
def shuffledPositions(arr, shuffledArr)
  # shuffledArrの値とインデックスをハッシュに格納
  index_map = {}
  shuffledArr.each_with_index do |num, i|
      index_map[num] = i
  end

  # オリジナル配列arrの各要素が、shuffledArrでどのインデックスか探す
  arr.map { |num| index_map[num]}
end

