def winnerBlackjack(playerCards,houseCards)
  # カードの値を定義(インデックス + 1 が得点)
  num_arr =["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

  # 手札のカード配列から合計店を計算
  # cardsは手札、valuesは得点表の配列
  def score(cards, values)
      # 各カードの点数を求めて合計
      cards.sum do |card|
          # カードの2文字以降(マークなど削除して値だけを取り出す)
          val = card[1..]
          # 値がvalues配列を探す(1を足して点数化)
          values.find_index(val) + 1
      end
  end

  # プレイヤーとディーラのスコアを計算
  player_score = score(playerCards, num_arr)
  house_score = score(houseCards, num_arr)

  # 勝利判定ルールに従って出力
  # プレイヤーの手札の合計値が 21 を超えている場合はプレイヤーの敗北
  if player_score > 21
      false
  # ディーラーの手札の合計値が 22 未満でかつプレイヤーのカードの合計値より大きければ、プレイヤーの敗北
  elsif house_score < 22 && house_score >= player_score
      false
  else
      true
  end
end