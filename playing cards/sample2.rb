# カード1枚を表すクラス
class Card
  # インスタンス変数を読み書き可能にする
  attr_accessor :suit, :value, :int_value

  # インスタンス生成のためのコンストラクタ
  def initialize(suit, value, int_value)
    @suit = suit
    @value = value
    @int_value = int_value
  end

  # インスタンス化されたカード情報を返す関数(例："♠A(1)"))
  def get_card_string
    return "#{@suit}#{@value}(#{@int_value})"
  end
end

# デッキ全体を表すクラス
class Deck
  # インスタンス変数を読み書き可能にする
  attr_accessor :deck

  # インスタンス生成のためのコンストラクタ
  def initialize
    @deck = Deck.generate_deck # クラスメソッドを呼び出し、52枚のカードを生成
  end

  # クラスメソッド：すべてのカードを生成し、配列で返す
  def self.generate_deck
    new_deck = [] #デッキ格納用の配列
    values = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"] # カードの表示値
    suits = ["♣", "♦", "♥", "♠"] # マーク

    # 各マークに対して
    suits.each do |suit|
      # 各値とインデックスを使ってカードを生成
      values.each_with_index do |value, i|
        card = Card.new(suit, value, i + 1) #インデックス+1でint_value(1~13)
        puts card.get_card_string # カードの情報を出力
        new_deck.push card
      end
    end

    new_deck # 生成したデッキを返す
  end
end

# デッキを生成
Deck.new

