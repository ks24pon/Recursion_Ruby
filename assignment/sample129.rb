def maxOfPairSum(arr1,arr2,x)
  # 合計の最大値を入れる変数
  max_sum = nil

  # arr1の要素とarr2の要素を組み合わせ
  arr1.each do |a|
      arr2.each do |b|
          # 2つを足した値
          sum = a + b

          # x未満かつ現在のmax_sumより大きければ更新
          if sum < x && (max_sum.nil? || sum > max_sum)
              max_sum = sum
          end
      end
  end
  # max_sumが見つかれば文字列にして返す、なければ　"no pair"
  max_sum ? max_sum.to_s : "no pair"
end