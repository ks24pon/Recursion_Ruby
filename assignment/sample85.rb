# 満タンで何マイル走れるか
def milesWithoutStop(fuelEconomy, tankCapacity)
    fuelEconomy * tankCapacity
end

# 速度(マイル/秒)を時速(マイル/時)に変換(getDistance)
def getDistance(velocity)
    velocity * 3600
end

# メイン関数
def hoursToEmpty(velocity,fuelEconomy,tankCapacity)
    # 満タンで走れる距離
    full_tank = milesWithoutStop(fuelEconomy, tankCapacity)

    # 1時間あたりの距離を取得
    distance = getDistance(velocity)

    # 走れる時間 = 距離 / 早さ
    hours = full_tank / distance

    # 小数第2以下を切り捨て
    (hours * 10).floor / 10.0
end