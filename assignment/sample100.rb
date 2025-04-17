# 配列内の文字カウント関数
def countAllChars(arr)
  # flattenでネストした配列があれば平らにする
  # ※(flattenは入れなくても実行可だがネストの可能性を考慮して)
  # joinで配列の要素を1つの文字列として連携
  # 連結された文字列の文字数を返す
  arr.flatten.join.length
end