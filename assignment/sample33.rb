lastName = "Albert"
sentence = "I will go hiking near a ranch in Oregon."
sentence2 = "The ranch"
bun = "100人近くの人がいたが、ほとんど会ったことのある人たちだった"

# sentence変数の中身をgsubでOregonからCaliforniaに置き換える
puts (sentence.gsub("Oregon", "California"))
# bun変数の中身をgsubで近くからくらいに置き換える
puts (bun.gsub("近く", "くらい"))
# sentence2の中身をgsubでTheをlastNameに置き換えてその後、'sをつける
puts (sentence2.gsub("The", + lastName + "'s"))

# Aaaaahhh the oceanをsubで最初の部分のaをbに置き換える
puts ("Aaaaahhh the ocean".sub("a", "b"))

# Aaaaahhh the oceanをgsub!でaの全ての部分をuに置き換える
puts ("Aaaaahhh the ocean".gsub!("a", "u"))

# 文字列Helloの全てのlをpに置換する
puts ("Hello".gsub("l", "p"))

# sentenceの中身のIを変数lastNameに置換する
puts (sentence.gsub("I", lastName))
