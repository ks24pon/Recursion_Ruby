def infectedPeople(day)
    # 0日目の感染者は一人
    if day == 0
        return 1
    end
    # 再帰処理：前の日の感染者を取得して、それを2倍にする
    2 * infectedPeople(day - 1)
end