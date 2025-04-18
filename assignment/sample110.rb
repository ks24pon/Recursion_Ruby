def isFirstStringLarger(s1,s2)
  # s1を小文字に変換して、1文字ずつ配列に分解し、各文字をASCIIコードに変換し、合計を計算
  s1_sum = s1.downcase.chars.map(&:ord).sum
  # s2もs1と同様
  s2_sum = s2.downcase.chars.map(&:ord).sum
  # s1の合計がs2より大きいか判定(true/false)
  s1_sum > s2_sum
end