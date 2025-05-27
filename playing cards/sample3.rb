class Card
  attr_accessor :suit, :value, :int_value

  def initialize(suit, value, int_value)
    @suit = suit
    @value = value
    @int_value = int_value
  end

  def get_card_string
    "#{@suit}#{@value}(#{@int_value})"
  end
end

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
        card = Card.new(suit, value, i + 1)
        new_deck << card
      end
    end

    new_deck
  end

  def print_deck
    puts "Displaying cards..."
    @deck.each do |card|
      puts card.get_card_string
    end
  end
end

# 実行
deck1 = Deck.new
deck1.print_deck
