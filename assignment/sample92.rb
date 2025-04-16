# Pointクラス作成
class Point
    attr_accessor :x, :y

    # コンストラクタでx,y座標を受け取り、少数として保持
    def initialize(x, y)
        @x = x.to_f
        @y = y.to_f
    end
end

# Lineクラス作成
class Line
    attr_accessor :start_point, :end_point

    def initialize(start_point, end_point)
        @start_point = start_point
        @end_point = end_point
    end

    # 線の長さをピタゴラスの定義で計算
    def get_length
        dx = @end_point.x - @start_point.x
        dy = @end_point.y - start_point.y
        Math.sqrt(dx**2 + dy**2).round
    end
end
  # テストケース1: 長さ5の線（3-4-5の直角三角形）
  p1 = Point.new(0, 0)
  p2 = Point.new(3, 4)
  line1 = Line.new(p1, p2)
  puts line1.get_length  # => 5
  
  # テストケース2: 長さ13の線（5-12-13の直角三角形）
  p3 = Point.new(0, 0)
  p4 = Point.new(5, 12)
  line2 = Line.new(p3, p4)
  puts line2.get_length  # => 13
  