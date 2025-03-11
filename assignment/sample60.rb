def sheeps(count)
    # ベースケース
    return "" if count == 0
    # 再帰
    return sheeps(count - 1) + "#{count} sheep ~ "
end

