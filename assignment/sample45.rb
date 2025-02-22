# 原点から点(x, y)までの距離を計算する関数
def distance(x, y)
    # √(x² + y²) を計算し、結果を返す
    Math.sqrt(x**2 + y**2)
end

# 値 v が小数部分を持つかどうかを判定する関数
def hasDecimal(v)
    # v を 1 で割った余りが 0 でなければ小数部分があるtrue
    v % 1 != 0
end

# 原点から点(x, y)までの距離が自然数かどうかを判定する関数
def isPerfectSquare(x, y)
    # 原点からの距離を求める
    d = distance(x, y)
    # 小数部分がなければ（整数なら）true を返す
    !hasDecimal(d)
end



