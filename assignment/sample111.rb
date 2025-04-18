# s1とs2の「文字コードの合計値」がどちらが大きいか判定の関数
def isFirstStringLarger(s1, s2)
  # downcaseで小文字に変換してeach_charで文字列を1文字づつ分解しsum(&:ord)で合計を求める
  s1.downcase.each_char.sum(&:ord) > s2.downcase.each_char.sum(&:ord)
end