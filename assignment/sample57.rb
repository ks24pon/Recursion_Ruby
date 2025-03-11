def commonPrefix(s1,s2)
    # いずれかの文字が空、対応する文字が異なる場合
    return "" if s1.empty? || s2.empty? || s1[0] != s2[0]
    # 再帰：最初の文字に一致する場合、その文字を結果に加えて文字を比較
    return s1[0] + commonPrefix(s1[1..], s2[1..])
end

