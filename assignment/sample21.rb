def quadraticEquation(a, b, c)
    # a が 0 の場合、二次方程式ではないので 0 を返す
    return 0 if a == 0
    # 判別式を計算
    discriminant = b**2 - 4*a*c
    # 判別式が正なら実数解が2つ
    return 2 if discriminant > 0
    # 判別式が 0 なら重解（実数解が1つ）
    return 1 if discriminant == 0
    # 判別式が負なら虚数解が2つ
    return -2
end

puts quadraticEquation(0,3,2)
puts quadraticEquation(0,4,5)
puts quadraticEquation(5,10,5)
puts quadraticEquation(4,10,8)
puts quadraticEquation(4,13,5)
puts quadraticEquation(1,6,9)
puts quadraticEquation(1,-8,12)
puts quadraticEquation(1,2,5)