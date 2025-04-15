class Point
    attr_accessor :x, :y

    def initialize(x, y)
        @x = x
        @y = y
    end

end

# インスタンス作成

# テスト1
a = Point.new(3,1)
puts a.x
puts a.y

# テスト2
b = Point.new(3,6)
puts b.x
puts b.y
