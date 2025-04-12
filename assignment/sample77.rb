def doYouFail(string)
    # Aのカウントするための初期化
    count = 0

    # 文字列を1文字づつ配列に分解して1文字ずづ処理
    string.chars.each do |attend|
        # 文字がAだったら欠席回数を1増やす
        if attend == "A"
            count += 1
            # 欠席回数が3回以上になったら"fail"を返却
            if count >= 3
                return "fail"
            end
        end
    end
    # ループ終了後、欠席が3回以下であれば”pass”を返却
    return "pass"
end

