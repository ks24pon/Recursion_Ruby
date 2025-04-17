class Card
  # ゲッター/セッター
  attr_accessor :suit, :value, :intValue

  # 初期値(インスタンスが呼ばれると実行)
  def initialize(suit, value, intValue)
      @suit = suit
      @value = value
      @intValue = intValue
  end
end

# 配列内のカードオブジェクトを出力
def printCardArray(cards_arr)
  cards_arr.each do |card|
      puts "#{card.suit}#{card.value}(#{card.intValue})"
  end
end

# テストケース

# カード配列
cards = []
cards << Card.new("♣","A","1")
cards << Card.new("♦","K","13")
cards << Card.new("♥","Q","12")
cards << Card.new("♠","J","11")


# 全て出力
printCardArray(cards)