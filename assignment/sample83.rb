# 定数として切り出す
WEIGHT = 85.5
MET_VALUE = {
        "running" => 8,
        "walking" => 3,
        "tennis" => 5,
        "rope jump" => 9
}

def hoursToLose1KgByExercise(exercise)
    # 運動名に対応する強度を取得
    met = MET_VALUE[exercise]

    # 1分あたりのカロリー消費量
    calorie_oneminute = met * 3.5 * WEIGHT / 200

    # 1時間で計算
    calorie_hour = calorie_oneminute * 60

    # 7700kcal 分運動するのにかかる時間
    hour = 7700 / calorie_hour

    # 小数第2位以下を切り捨てて、小数第1位まで残す
    (hour * 10).floor / 10.0
end
