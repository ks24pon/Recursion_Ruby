def reverseString(s)
    # ベースケース
    return s if s.length <= 1
    return reverseString(s[1..]) + s[0]
end

