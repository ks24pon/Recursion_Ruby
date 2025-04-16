# Product Class作成
class Product
  # getter/setter自動生成
  attr_accessor :title, :price

  # 初期化(newされた時に呼ばれる)
  def initialize(title, price)
    # インスタンス変数@titleに引数title(商品名)を代入
    @title = title
    # @priceに引数price(価格)を代入
    @price = price
  end
end

# テストケース

# インスタンス作成
product1 = Product.new("shampoo", 10)
# productオブジェクトからtitleを取得
puts product1.title
puts product1.price

product2 = Product.new("conditioner", 5)
puts product2.title
puts product2.price
