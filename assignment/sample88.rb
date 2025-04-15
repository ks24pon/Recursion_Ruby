class Animal
    # ゲッター&セッター
    attr_accessor :name, :weightKg, :heightM, :isPredator, :speedKph

    # 定数(活動指数を1.2で固定)
    ACTIVITY_MULTIPLIER = 1.2

    # コンストラクタ(Animalインスタンス作成するときに呼ばれる)
    def initialize(name, weightKg, heightM, isPredator, speedKph)
        # 名前
        @name = name
        # 体重
        @weightKg = weightKg
        # 身長
        @heightM = heightM
        # 捕食者かどうか
        @isPredator = isPredator
        # 時速
        @speedKph = speedKph
    end

    # BMIを計算
    def getBmi
        # BMI = 体重 / (身長の2条)
        bmi = @weightKg / (heightM ** 2.0)
        # 小数点第 3 位以下を切り捨て
        ((bmi * 100).floor) / 100.0
    end

    # 毎日必要なカロリー計算
    def getDailyCalories
        # 計算式：70 × 体重^0.75 × 活動指数
        calories = (70 * (@weightKg ** 0.75)) * ACTIVITY_MULTIPLIER
        # 小数点第3位以下を切り捨て
        ((calories * 100).floor) / 100.0
    end

    # 動物が危険かどうか判定(true or false)
    def isDangerous?
        # 捕食者なら危険、または身長が1.7m以上、またはスピードが35km/h以上でも危険
        @isPredator || @heightM >= 1.7 || @speedKph >= 35
    end
end

# インスタンス変数

# テスト1(ウサギ)
rabbit = Animal.new("rabbit", 10, 0.3, false, 20)
puts rabbit.getBmi
puts rabbit.isDangerous?

# テスト2(ヘビ)
snake = Animal.new("snake", 30, 1, true, 30)
puts snake.isDangerous?
puts snake.getDailyCalories

# テスト3(ゾウ)
elephant = Animal.new("elephant", 300, 3, false, 5)
puts elephant.getBmi
puts elephant.getDailyCalories

# テスト4(ガゼル)
gazelle = Animal.new("gazelle", 50, 1.5, false, 100)
puts gazelle.getDailyCalories
puts gazelle.isDangerous?