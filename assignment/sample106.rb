def evenRange(a,b)
  # 範囲オブジェクトを使って各値をループ
  # n.even?がtrueのものだけ選ぶ
  (a..b).select { |n| n.even? }
end

