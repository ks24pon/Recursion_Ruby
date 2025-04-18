# 1つのメールアドレス正しいか判定関数
def isEmailVaild(email)
  # スペースがないこと(include?で要素が含まれているかチェック)
  return false if email.include?(" ")

  # @が1つ以外
  return false if email.count("@") != 1

  # @から始まらない
  return false if email.start_with?("@")

  # @がどの位置にあるか
  at_index = email.index("@")
  # @の後の部分から最後まで取り出す
  domain = email[(at_index + 1)..]
  # .が含まれているかチェック.がなければfalse
  return false unless domain.include?(".")

  # 全て条件満たしている場合
  true
end

# 有効なメールアドレスだけを返す関数
# 条件に合うものだけ出力
def validEmailList(emailList)
  emailList.select { |email| isEmailVaild(email) }
end
