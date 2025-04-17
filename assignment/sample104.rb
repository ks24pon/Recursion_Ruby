class Card
  # ゲッター/セッター
  attr_accessor :suit, :value, :intValue

  def initialize(suit, value, intValue)
      @suit = suit
      @value = value
      @intValue = intValue
  end
  # 出力形式を定義
  def to_s
      "#{@suit}#{@value}(#{@intValue})"
  end
end

# 配列カードを出力
def printCardArray(cards_arr)
  # to_sが自動で呼ばれる
  cards_arr.each { |card| puts card}
end


# カード配列を作成
cards = [
  Card.new("♣", "A", "1"),
  Card.new("♦", "K", "13"),
  Card.new("♥", "Q", "12"),
  Card.new("♠", "J", "11")
]

# 出力
printCardArray(cards)