class Card
  # ゲッター/セッター
  attr_accessor :suit, :value, :int_value

  # インスタンス生成のためのコンストラクタ
  def initialize(suit, value, int_value)
    @suit = suit
    @value = value
    @int_value = int_value
  end

  # インスタンス化されたカード情報を返す関数
  def get_card_string
    return "#{@suit}#{@value}(#{@int_value})"
  end
end

# 新しくカードを作成し、カード情報を返す関数
card1 = Card.new("♦︎", "A", 1)

# 出力
puts card1
puts card1.get_card_string