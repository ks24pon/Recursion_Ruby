def swapPosition(s)
    # 文字列の長さが1以下ならそのまま返却
    return s if s.length <= 1
    # 偶数番目と奇数番目を交換して残りを再帰処理
    s[1] + s[0] + swapPosition(s[2..])
end

