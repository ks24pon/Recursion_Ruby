# n以降のカウント
def countCharactersAfterN(arr)
  # 変数の初期化
  count = 0
  # 配列の各文字を1つずづ処理
  arr.each do |word|
      # 各文字の中の1文字ずつ処理
      word.each_char do |char|
          # n~zの範囲の文字ならカウント(小文字のみ対象)
          if char >= "n" && char <= "z"
              count += 1
          end
      end
  end
  # カウント結果を返却
  count
end