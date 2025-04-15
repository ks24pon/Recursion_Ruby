def isPalindromeInteger(n)
    # 数値を文字列に変換
    palindrome = n.to_s
    # 元の文字列が逆にした文字列と同じか調べる
    palindrome == palindrome.reverse
end