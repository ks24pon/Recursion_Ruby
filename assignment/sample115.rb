def generateAlphabet(firstAlphabet, secondAlphabet)
  # firstAlphabet と secondAlphabet を小文字に変換
  # 文字コード（ord）に変換 → 小さい順に並べた配列[min, max]を作成
  range = [firstAlphabet, secondAlphabet].map(&:downcase).map(&:ord).minmax

  # min から max までの文字コードを順に文字に変換（chr）して配列にする
  (range.first..range.last).map(&:chr)
end
