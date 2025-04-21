# 配列 ids を右に n 回 ローテーションする
# 配列idsを右にn回ローテーション
def rotateByTimes(ids,n)
  # 配列の長さを取得
  len = ids.length

  # 余りを回す
  n = n % len

  # nが0なら回転せず、そのまま返す
  return ids if n == 0

  # 最後の n個 + 最初から残りを足して、新しい配列を返す
  ids[-n..-1] + ids[0...-n]
end

