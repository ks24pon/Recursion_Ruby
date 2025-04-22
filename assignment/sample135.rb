# 文字列の各文字をUTF-16コードポイントに変換して合計する関数
def simple_hash(input_string)
  number_representation = 0
  input_string.each_char do |char|
      # ordはUnicodeの整数に変換
      number_representation += char.ord
  end
  number_representation
end

puts simple_hash("myawesomestring")