def minAndMax(intArr)
  # 全体の合計
  total = intArr.sum
  # 高額商品を無料にした時に合計値から高額商品を引く
  min_free = total - intArr.max
  # 最安商品を無料にした時に合計値から最安商品を引く
  max_free = total - intArr.min
  # 配列で出力
  [min_free, max_free]
end