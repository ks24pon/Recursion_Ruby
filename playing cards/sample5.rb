# カードを1枚表すクラス
class Card
  # インスタンス変数を読み書き可能
  attr_accessor :suit, :value, :int_value

  # インスタンス生成のためのコンストラクタ
  def initialize(suit, value, int_value)
    @suit = suit
    @value = value
    @int_value = int_value
  end

  # インスタンス化されたカード情報を返す関数
  def get_card_string
    return "#{@suit}#{@value}#{@int_value}"
  end
end

# デッキ全体を表す方法
class Deck
  # インスタンス変数を読み書き可能
  attr_accessor :deck

  # インスタンス生成のためのコンストラクタ
  def initialize
    @deck = Deck.generate_deck # クラスメソッドを呼び出し、52枚のカードを生成
  end

  # クラスメソッド：すべてのカードを生成し、配列で渡す
  def self.generate_deck
    new_deck = [] # デッキ格納用の配列
    values = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"] # カードの表示値
    suits = ["♣", "♦", "♥", "♠"] # マーク

    # 各マークに対して
    suits.each do |suit|
      # 各値とインデックスを使ってカードを生成
      values.each_with_index do |value, i|
        card = Card.new(suit, value, i + 1)
        puts card.get_card_string # カード情報を出力
        new_deck.push card
      end
    end

    new_deck # 生成したデッキを返す
  end

  def print_deck
    puts "Displaying cards..."
    @deck.each do |card|
      puts card.get_card_string
    end
  end

  # デッキをシャッフルをするインスタンスメソッド
  def shuffle_deck
    # デッキのサイズを取得
    deck_size = @deck.length

    # 配列の最後の要素から1番目までループ(逆順)
    (deck_size - 1).downto(1) do |i|
      # 0からiまでの範囲でランダムなインデックス
      j = rand(i + 1)

      # i番目とj番目のカードを入れ替える
      @deck[i], @deck[j] = @deck[j], @deck[i]
    end
  end
end

# 実行(シャッフル前)
deck1 = Deck.new
deck1.print_deck

# シャッフル後
deck1.shuffle_deck
deck1.print_deck
