# 商品リストを受け取り、各商品の計算して合計金額を返す
def get_total_for_product_list(product_2d_price_list)
  # 全体の合計金額を初期化
  final_total = 0

  # 各商品の価格リスト(1次元配列)に対して処理
  product_2d_price_list.each do |price_list|
      # 価格リストの最初の要素は基本価格
      price = price_list[0]
      # 合計にベース価格設定
      total = price
      # 2番目以降の(係数や割蔵・割引)を1つずつ取り出して処理
      price_list[1..].each do |multiplier|
          # ベース価格 * 係数をかさん
          total += price * multiplier
      end
      # 各商品の合計を出力
      puts "Total for current item is: #{total}"

      # 各商品の合計を全体合計に加算
      final_total += total
  end
  # 最終的な合計を返す
  final_total
end

# 商品ごとの価格情報
product1 = [100, 0.1, 0.02, 0.03, 0.02]
product2 = [50, -0.5, 0.1, 0.05, 0.02]
product3 = [34, 0.05, 0.2, 0.03, 0.1]
product4 = [10, -0.2, 0.3, 0.05, 0.03]

# 買い物かごとして全商品をまとめた二次元配列
shopping_cart_array = [product1, product2, product3, product4]

# 関数を実行して最終的な合計金額を出力
puts get_total_for_product_list(shopping_cart_array)
