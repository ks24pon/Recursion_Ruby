# グローバルスコープ

$x = 34
$y = $x * 10

def my_fun
  # 関数のスコープ

  # グローバル変数$xを出力
  puts $x

  # グローバル変数の$xを上書き
  $x = 56

  puts $x

  puts $y
end

my_fun
puts $x
