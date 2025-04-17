def countCharactersAfterN(arr)
  # 配列の各要素に対して合計する
  arr.sum do |char|
      # n-z文字のみカウント
      char.count("n-z")
  end
end