def primesUpToNCount(n)
  # nが2以下の素数は存在しない
  if n <= 2
      return 0
  end

  # 素数かどうかを記録するキャッシュ配列を作成
  cache = Array.new(n, true)
  # 0と1は素数ではないのでfalse
  cache[0] = false
  cache[1] = false

  # 2から√nまでの数でふるい落とす
  (2..Math.sqrt(n)).each do |i|
      # iが素数ならその倍数を全てfalse
      if cache[i]
          j = i * i
          while j < n
              cache[j] = false
              j += i
          end
      end
  end
  # trueの数が素数の個数
  cache.count(true)
end

