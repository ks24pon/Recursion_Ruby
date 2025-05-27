# 0以上1未満のランダムな数
puts rand

# 0以上10未満のランダムな数
puts rand * 10

# 0以上10未満のランダムな整数(0~9)
puts rand(10)

# 配列を作成
int_arr = (0..10).to_a
puts "元の配列：#{int_arr.inspect}"

# Fisher-Yatesアルゴリズムでシャッフル
(int_arr.length - 1).downto(1) do |i|
  j = rand(i + 1)
  # 要素の入れ替え
  int_arr[i], int_arr[j] = int_arr[j], int_arr[i]
end

# シャッフル後の配列
puts "シャッフル後：#{int_arr.inspect}"