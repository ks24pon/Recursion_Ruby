def charInBagOfWordsCount(bagOfWords,keyCharacter)
  # カウントする変数
  count = 0

  bagOfWords.each do |word|
      count += word.count(keyCharacter)
  end
  # 合計値を返す
  count
end