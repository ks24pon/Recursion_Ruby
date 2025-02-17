def getAtLocation(email)
    # `@` の位置を取得
    at_index = email.index('@')
    # `@` が見つからない場合は -1 を返す
    return -1 if at_index.nil?
    # 1始まりの位置を返す
    at_index + 1
end
