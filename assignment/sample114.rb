def generateAlphabet(firstAlphabet,secondAlphabet)
  # 小文字に変換
  first = firstAlphabet.downcase
  second = secondAlphabet.downcase

  # 文字を数値値に変換
  # 乗車
  start_code = [first.ord, second.ord].min
  # 降車
  end_code = [first.ord, second.ord,].max

  # 範囲を.chrで文字列に戻し配列にする
  (start_code..end_code).map { |str| str.chr}
end

