# 素数チェック関数
def is_prime?(n)
  # 2未満は素数ではない
  return false if n < 2
  # 2~nまでの平方根を整数でチェック
  (2..Math.sqrt(n).to_i).each do |i|
      # 割り切れたら素数ではない
      return false if n % i == 0
  end
  # 割り切れなかった場合、素数
  true
end

# 1~nまでの素数を配列で返す
def primeArray(n)
  (1..n).select {|num| is_prime?(num)}
end