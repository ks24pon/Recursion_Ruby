# 配列内の全ての文字列の文字数を合計する関数
def countAllChars(arr)
  # 合計文字数を保持する変数を初期化
  total = 0
  # 配列の各要素を(文字列)を1つずづ処理
  arr.each do |str|
      total += str.length
  end
  # 合計値を返す
  total
end