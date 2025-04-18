# 動物クラス
class Animal
  attr_accessor :species, :weight_kg, :height_m, :predator

  def initialize(species, weight_kg, height_m, predator)
    @species = species
    @weight_kg = weight_kg
    @height_m = height_m
    @predator = predator
  end

  def domesticate
    @predator = false
  end
end

# ハンタークラス
class Hunter
  attr_accessor :name, :weight_kg, :height_m, :strength, :cage_cubic_meters

  def initialize(name, weight_kg, height_m, strength, cage_cubic_meters)
    @name = name
    @weight_kg = weight_kg
    @height_m = height_m
    @strength = strength
    @cage_cubic_meters = cage_cubic_meters
  end

  def strength_kg
    @strength * @weight_kg
  end

  def can_capture_animal(animal)
    strength_kg >= animal.weight_kg &&
      @cage_cubic_meters >= animal.height_m &&
      !animal.predator
  end

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

# 全ての動物を手懐ける処理
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
