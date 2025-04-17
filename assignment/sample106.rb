def evenRange(a,b)
  # 範囲オブジェクトを使って各値をループ
  #selectで条件に合う要素だけ抽出
  # n.even?がtrueのものだけ選ぶ
  (a..b).select { |n| n.even? }
end

