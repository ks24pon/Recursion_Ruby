def countDivisibleByK(n,k)
    # ベースケース：nがkを割り切れなくなったら0を返す
    return 0 if n % k != 0
    # 再帰 (割り算が成功するたびにカウント1を増やす)
    return 1 + countDivisibleByK(n / k, k)
end