class Animal
    attr_accessor :name, :weight_kg, :height_m, :is_predator, :speed_kph
  
    ACTIVITY_MULTIPLIER = 1.2
  
    def initialize(name, weight_kg, height_m, is_predator, speed_kph)
      @name = name
      @weight_kg = weight_kg
      @height_m = height_m
      @is_predator = is_predator
      @speed_kph = speed_kph
    end
  
    # BMIを小数第2位で返す
    def bmi
      round2(@weight_kg / (@height_m ** 2.0))
    end
  
    # 毎日の必要カロリーを計算して返す（小数第2位まで）
    def daily_calories
      round2((70 * (@weight_kg ** 0.75)) * ACTIVITY_MULTIPLIER)
    end
  
    # 危険かどうかを判定
    def dangerous?
      @is_predator || @height_m >= 1.7 || @speed_kph >= 35
    end
  
    private
  
    # 小数第2位までに切り捨てる共通処理
    def round2(value)
      (value * 100).floor / 100.0
    end
  end

rabbit = Animal.new("rabbit", 10, 0.3, false, 20)
puts rabbit.bmi
puts rabbit.dangerous?

snake = Animal.new("snake", 30, 1, true, 30)
puts snake.dangerous?
puts snake.daily_calories

elephant = Animal.new("elephant", 300, 3, false, 5)
puts elephant.bmi
puts elephant.daily_calories

gazelle = Animal.new("gazelle", 50, 1.5, false, 100)
puts gazelle.daily_calories
puts gazelle.dangerous?
