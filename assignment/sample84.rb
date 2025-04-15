WEIGHT = 85.5
MET_KEY_VALUE = {
    "running" => 8,
    "walking" => 3,
    "tennis" => 5,
    "rope jump" => 9
}

def calcWeightByExercise(exercise,minutes)
    # 運動ごとの運動強度を取得
    met = MET_KEY_VALUE[exercise]

    # 1分間に消費するカロリーを計算
    calorie_one_minute = met * 3.5 * WEIGHT / 200

    # 運動時間合計のカロリー計算
    total_calories = calorie_one_minute * minutes

    # 減少した体重
    lost_weight = total_calories / 7700

    # 新しい体重
    current_weight = WEIGHT - lost_weight

    # 小数第2位以下を切り捨てて返す
    return (current_weight * 10).floor / 10.0
end

