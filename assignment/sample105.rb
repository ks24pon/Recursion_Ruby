class Book
  # ゲッター/セッター
  attr_accessor :title, :year

  # クラス変数
  @@author = "Stephen Hawkings"

  # 初期化(インスタンス生成時に呼ばれる)
  def initialize(title, year)
      @title = title
      @year = year
  end
  # クラス変数を外から取得するためのクラスメソッド
  def self.author
      @@author
  end
end

# 配列に入ったオブジェクトを出力
def printBookArray(books_arr)
  books_arr.each do |book|
      puts "#{book.title} written by #{Book.author} in #{book.year}"
  end
end

# テストケース
books = [
  Book.new("How Did It All Begin?", "2021"),
  Book.new("The Theory of Everything", "2010"),
  Book.new("God Created the Integers", "2006")
]

# 出力
printBookArray(books)