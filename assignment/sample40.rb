def insertUnderscoreAt(s, i)
    # 数値iがsの文字列のサイズ以上の場合、文字列はそのまま返す
    return s if i >= s.length

    # 0からi番目の手前までの部分を取り出す(i番目は含まない)
    front = s[0...i]
    # i番目以降の部分を取り出す
    back = s[i..-1]

    ## アンダースコアを挿入して出力
    front + "_" + back
end