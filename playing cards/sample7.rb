# カードを1枚表すクラス
class Card
  attr_accessor :value, :suit, :int_value # 読み取り専用の属性

  # カードの初期化(例：♠K(13))
  def initialize(value, suit, int_value)
    @value = value
    @suit = suit
    @int_value = int_value
  end

  # カードの情報を文字列で返す("♠K(13)")
  def get_card_string
    return "#{@suit}#{@value}(#{@int_value})"
  end
end


# 52枚のカードを持つデッキを表すクラス
class Deck
  attr_accessor :deck # カードの配列を外部からもアクセス可能

  # デッキ生成時に52枚のカードを準備
  def initialize
    @deck = Deck.generate_deck
  end

  # すべてのカードを生成するクラスメソッド
  def self.generate_deck
    new_deck = [] # 空の配列を用意
    values = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["♣", "♦", "♥", "♠"]

    # すべてのマークと値の組み合わせでカードを生成(13*4=52枚)
    suits.each do |suit|
      values.each_with_index do |value, i|
        new_deck << Card.new(value, suit, i + 1)
      end
    end

    new_deck # 52枚のカードを返す
  end

  # デッキの一番した(末尾)からカードを1枚引く
  def draw
    @deck.pop
  end

  # デッキ全体を出力(確認用)
  def print_deck
    puts "Displaying cards..."
    @deck.each do |card|
      puts card.get_card_string
    end
  end

  # デッキをシャッフル
  def shuffle_deck
    # デッキの末尾から先頭に向かって走査
    (@deck.length - 1).downto(1) do |i|
      j = rand(i..@deck.length - 1) # i~末尾の間からランダムに1つ選ぶ
    end
  end
end