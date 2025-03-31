def hammingDistanceInString(string1,string2)
    # ハミング距離の文字数数える
    count = 0
    # 文字列の長さ分ループ
    for i in 0..string1.length
        # string1とstring2が異なればカウントを増加
        count += 1 if string1[i] != string2[i]
    end
    count
end

