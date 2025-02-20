# 緯度から方向を判定する関数、正なら北(north)、負なら南(south)、それ以外は赤道(equator)
def getLatitudeDirection(latitude)
    if latitude > 0
        "north"
    elsif latitude < 0
        "south"
    else
        "equator"
    end
end

# 経度から方向を判定する関数、経度より正なら北(north)、負なら(south)、それ以外は(equator)
def getLongitudeDirection(longitude)
    if longitude > 0
        "east"
    elsif longitude < 0
        "west"
    else
        "prime meridian"
    end
end

# 緯度と経度を受け取り、位置情報を「緯度/経度」の形式の関数
def calculateLocation(latitude, longitude)
    # 経度の方向を取得
    lat_direction =  getLatitudeDirection(latitude)
    # 経度の方向を取得
    long_direction = getLongitudeDirection(longitude)
    # 出力
    return "#{lat_direction}/#{long_direction}"
end











