def planetGravityMpss(planet)
    # 惑星ごとの重力加速度をハッシュで定義
    gravity = {
        "Earth" => 9.8,
        "Jupiter" => 24.79,
        "Mercury" => 3.7
    }
    # 該当する惑星の重力加速度を返却
    gravity.fetch(planet, 0)
end

def metersToMiles(meters)
    # メートルをマイルに変換
    (meters * 0.000621371).floor
end

def fallingDistance(planet, time)
    # 落下距離 (h = 1/2 * g * t^2)
    g = planetGravityMpss(planet)
    meters = 0.5 * g * time ** 2
    # メートルをマイルに変換して返却
    metersToMiles(meters)
end