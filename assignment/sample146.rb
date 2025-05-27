def appearTheMost(levels)
  # 出現回数を記録するハッシュ
  counts = Hash.new(0)

  # レベルごとに出現回数をカウント
  levels.each do |level|
      counts[level] += 1
  end

  # 最大出現回数を取得
  max_count = counts.values.max

  # 出現回数が最大のレベルだけ選び、昇順にソート
  counts.select { |level, count| count == max_count }
      .keys
      .sort
end

