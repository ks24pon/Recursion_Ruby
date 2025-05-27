# カードを1枚表すクラス
class Card
  attr_accessor :suit, :value, :int_value

  def initialize(suit, value, int_value)
    @suit = suit
    @value = value
    @int_value = int_value
  end

  # 例: ♣Q(12)
  def get_card_string
    "#{@suit}#{@value}(#{@int_value})"
  end
end

# デッキ全体を表すクラス
class Deck
  attr_accessor :deck

  def initialize
    @deck = Deck.generate_deck
  end

  def self.generate_deck
    new_deck = []
    values = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["♣", "♦", "♥", "♠"]

    suits.each do |suit|
      values.each_with_index do |value, i|
        new_deck << Card.new(suit, value, i + 1)
      end
    end

    new_deck
  end

  def draw
    @deck.pop
  end

  def print_deck
    puts "Displaying cards..."
    @deck.each do |card|
      puts card.get_card_string
    end
  end

  def shuffle_deck
    (@deck.length - 1).downto(1) do |i|
      j = rand(i + 1)
      @deck[i], @deck[j] = @deck[j], @deck[i]
    end
  end
end

# ===== 実行 =====

deck1 = Deck.new
deck1.shuffle_deck

# シャッフル後の最後のカードを表示
puts deck1.deck[-1].get_card_string

# カードを1枚引いて表示
drawn_card = deck1.draw
puts drawn_card.get_card_string if drawn_card
