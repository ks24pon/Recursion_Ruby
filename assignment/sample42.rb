def isValidEmail(email)
    # emailから取得した@が一つ以外の場合はfalse返却
    return false if email.count("@") != 1

    # emailからindexで@の位置を取得してatに格納
    at = email.index("@")

    # @が先頭の場合またはemailの中にincludeで空白があれfalseを返す
    return false if at == 0 || email.include?(" ")

    # email@の次のため+1で次の文字から末尾は-1を取得しbackatに返却
    backat = email[at + 1..-1]

    # @の後に.が含まれていなければfalse
    return false if !backat.include?(".")

    # 全て合致した場合はtrue返却
    return true
end