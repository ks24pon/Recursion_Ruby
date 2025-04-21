def hasPenalty(records)
  # 2番目の値からループ(i=1)
  (1...records.length).each do |i|
      # 1つ前の値より小さくなっていたらアウト(減少)
      if records[i] < records[i - 1]
          return true
      end
  end
  # 最後まで減っていなければOK
  false
end

