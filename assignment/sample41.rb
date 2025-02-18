def lastFourHint(string)
    # 文字列の長さが6未満の場合、There is no Hintを返す
    if string.length < 6
        return "There is no Hint"
    end

    # 文字列の4番目から最後の末尾まで取り出す(Rubyでは-4は末尾から4番目の意味で-1は末尾)
    hint = string[-4..-1]

    # 最後の4文字以外をHint is:で置き換えるので"Hint is: + hint"を出力
    return "Hint is:#{hint}"

end