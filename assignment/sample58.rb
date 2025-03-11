def numberOfDots(x)
    # ベースケース
    return 1 if x == 1
    return numberOfDots(x-1) + x
end

