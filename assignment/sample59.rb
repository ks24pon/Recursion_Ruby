def totalSquareArea(x)
    # ベースケース
    return 1 if x == 1
    # 再帰
    return totalSquareArea(x - 1) + x ** 3
end