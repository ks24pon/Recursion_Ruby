def videosToWatch(time,daily_goal)
  # 累計の視聴時間
  total = 0
  # 見た動画の本数
  count = 0

  # time配列の中の各動画を1つずつループ
  time.each do |t|
  # 累計時間に追加
  total += t
  # 動画本数を1本追加
  count += 1

  # 累計時間が目標時間に達成したらその時点で出力
  return count if total >= daily_goal
  end
  # 最後まで見ても目標に届かなかった場合
  -1
end

# videosToWatch([1,2,1,3,4],5)