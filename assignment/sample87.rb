class Dog
    # ゲッター&セッター(読み書きできるようにする)
    attr_accessor :name, :size, :age

    # コンストラクタ
    def initialize(name, size, age)
        # 名前
        @name = name
        # サイズ
        @size = size
        # 年齢
        @age = age
    end

    # 犬の鳴き声
    def bark
        return "Wooof! Woof!" if size >= 50
        return "Ruff! Ruff!" if size >= 20
        "Yip! Yip! "
    end

    # 人間年齢に換算
    def humanAge
        12 + (@age - 1) * 7
    end
end

# インスタンス変数

# テスト1
goldenRetriever = Dog.new("Golden Retriever", 60, 10)
puts goldenRetriever.bark
puts goldenRetriever.humanAge

# テスト2
siberianHusky = Dog.new("Siberian Husky", 55, 6)
puts siberianHusky.bark
puts siberianHusky.humanAge

# テスト3
poodle = Dog.new("poodle", 10, 1)
puts poodle.bark
puts poodle.humanAge

# テスト4
shibaInu = Dog.new("shibaInu", 35, 4)
puts shibaInu.bark
puts shibaInu.humanAge