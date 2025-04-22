def characterLocation(commands)
  # 各、進行方向を連想配列
  moves = {
      "N" => [0, 1],
      "E" => [1, 0],
      "W" => [-1, 0],
      "S" => [0, -1]
  }

  # 初期設定(原点)
  x, y = 0,0

  # コマンド文字列を1文字ずつ処理
  commands.each_char do |command|
      # コマンド定義されていれば、移動を加算
      if moves.key?(command)
          dx, dy = moves[command]
          x += dx
          y += dy
      end
  end
  [x, y]
end

