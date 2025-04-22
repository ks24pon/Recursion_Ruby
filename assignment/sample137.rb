# ヘルパー関数：末尾再帰でn番目のフィボナッチ数を計算
def fibonacci_number_tail_helper(fn1, fn2, n)
  if n < 1
      return fn1
  end
  # 再帰的に次のステップへ
  fibonacci_number_tail_helper(fn2, fn1 + fn2, n - 1)
end


# 外部用の呼び出しn番目のフィボナッチ数を表示
def fibonacci_number_tail(n)
  # 最初の２つの値0,1をセットして呼び出す
  fibonacci_number_tail_helper(0, 1, n)
end


# 例：20番目のフィボナッチ数を表示
puts fibonacci_number_tail(20)