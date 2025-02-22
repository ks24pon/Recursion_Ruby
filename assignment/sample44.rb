def upperCaseDomain(email)
    # メールアドレスからドメイン部分を抽出して、大文字に変換して返す
    email.split("@").last.upcase
end