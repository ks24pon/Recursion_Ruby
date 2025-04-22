def isPangram(string)
  # アルファベット26文字を格納するSetを用意
  # この配列から文字を削除していき、最後に空になっていれば全て使ったことになる
  alphabet = ("a".."z").to_a

  # 入力文字を全て小文字に変換して、1文字ずつ取り出す
  string.downcase.each_char do |char|
      # 文字列がアルファベットがあればmalphabet配列から削除
      alphabet.delete(char)
  end
  # alphabet配列が空なら全アルファベットが使われた
  alphabet.empty?
end

# テストケース
is_p1 = isPangram("we promptly judged antique ivory buckles for the next prize")
puts is_p1

is_p2 = isPangram("We promptly judged Antique ivory buckles for the next prize")
puts is_p2

is_p3 = isPangram("a quick brown fox jumps over the lazy dog")
puts is_p3

is_p4 = isPangram("sphinx of black quartz judge my vow")
puts is_p4

is_p5 = isPangram("the five boxing wizards jump quickly")
puts is_p5


is_p6 = isPangram("sheep for a unique zebra when quick red vixens jump over the yacht")
puts is_p6

is_p7 = isPangram("the Japanese yen for commerce is still well-known")
puts is_p7

is_p8 = isPangram("dan took the deep dive down the rabbit hole")
puts is_p8