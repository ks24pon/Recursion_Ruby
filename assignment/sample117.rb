# 動物クラス
class Animal
  # ゲッター/セッター
  attr_accessor :species, :weightKg, :heightM, :predator

  # 初期化
  def initialize(species, weightKg, heightM, predator)
      @species = species
      @weightKg = weightKg
      @heightM = heightM
      @predator = predator
  end

  # 捕食者状態をfalse
  def domesticate
      @predator = false
  end
end

# ハンタークラス
class Hunter
  # ゲッター/セッター
  attr_accessor :name, :weightKg, heightM, :strength, :cageCubicMeters

  # 初期化
  def initialize(name, :weightKg, heightM, strength, cageCubicMeters)
      @name = name
      @weightKg = weightKg
      @heightM = heightM
      @strength = strength
      @cageCubicMeters = cageCubicMeters
  end

  # ハンターの強さ(ハンターの力 * ハンターの体重)
  def strengthKg
      @strength * @weightKg
  end

  # ハンターの強さ >= 動物の体重、②檻のサイズ >= 動物の身長、③動物が捕食者ではない 
  def canCaptureAnimal
      strengthKg >= animal.weightKg && @cageCubicMeters >= && !animal.predator
  end

  # 動物を家畜として飼い慣らせるかチェック(体重の2倍以上の力はあるか)
  def attemptToDomesticate
      return false canCaptureAnimal <= animal.weightKg * 2

      animal.domesticate
      true
  end
end

# 捕まえられる動物表示
def capturedAnimals(hunter, animals)
  animals.each do |animal|
      puts animal.spceies if hunter.canCaptureAnimal(animal)
  end
end

# 全ての動物に対して飼い慣らす処理を試す
def domesticateTheAnimals(hunter, animals)
  animals.each do |animal|
      hunter.attemptToDomesticate(animal)
  end
end

# テストケース実行
tiger = Animal.new("Tiger", 290, 2.6, true)
cow   = Animal.new("Cow", 1134, 1.5, false)
snake = Animal.new("Snake", 100, 1.2, true)
cat   = Animal.new("Cat", 10, 0.5, false)

hunternator = Hunter.new("Hunternator", 124.73, 1.85, 15, 3)

animals = [tiger, cow, snake, cat]

captured_animals(hunternator, animals)

domesticate_the_animals(hunternator, animals)

captured_animals(hunternator, animals)

# ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
# Animalクラス
class Animal
attr_accessor :species, :weight_kg, :height_m, :predator

def initialize(species, weight_kg, height_m, predator)
  @species = species
  @weight_kg = weight_kg
  @height_m = height_m
  @predator = predator
end

# 捕食者をおとなしい動物にする
def domesticate
  @predator = false
end
end

# Hunterクラス
class Hunter
attr_accessor :name, :weight_kg, :height_m, :strength, :cage_cubic_meters

def initialize(name, weight_kg, height_m, strength, cage_cubic_meters)
  @name = name
  @weight_kg = weight_kg
  @height_m = height_m
  @strength = strength
  @cage_cubic_meters = cage_cubic_meters
end

# ハンターの持ち上げ力を返す（体重 × 力）
def strength_kg
  @weight_kg * @strength
end

# 捕まえられる条件：①力、②ケージサイズ、③捕食者じゃない
def can_capture_animal(animal)
  strength_kg >= animal.weight_kg &&
    @cage_cubic_meters >= animal.height_m &&
    !animal.predator
end

# 動物を手懐けられるか（体重の2倍以上の力があるか）
def attempt_to_domesticate(animal)
  return false if strength_kg <= animal.weight_kg * 2

  animal.domesticate
  true
end
end

# 捕まえられる動物を表示
def captured_animals(hunter, animals)
animals.each do |animal|
  puts animal.species if hunter.can_capture_animal(animal)
end
end

# 全ての動物に対して飼いならす処理を試す
def domesticate_the_animals(hunter, animals)
animals.each do |animal|
  hunter.attempt_to_domesticate(animal)
end
end

# テストケース実行
tiger = Animal.new("Tiger", 290, 2.6, true)
cow   = Animal.new("Cow", 1134, 1.5, false)
snake = Animal.new("Snake", 100, 1.2, true)
cat   = Animal.new("Cat", 10, 0.5, false)

hunternator = Hunter.new("Hunternator", 124.73, 1.85, 15, 3)

animals = [tiger, cow, snake, cat]

captured_animals(hunternator, animals)

domesticate_the_animals(hunternator, animals)

captured_animals(hunternator, animals)
# ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー