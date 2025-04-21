# 文字列リストから、ASCII合計値が最大の文字列のインデックスを返す関数
def maxAscilString(string_list)
  # 最初の文字列を初期値として、最大インデックスと合計値を設定
  max_index = 0

  # string_list[0]の文字ごとのASCII値を合計
  # each_char:文字を1つずつ取り出す、map(&:ord)：各文字をASCII値に変換、sumで合計
  max_value = string_list[0].each_char.map(&:ord).sum

  # 配列の各要素をインデックスを使ってループ処理
  string_list.each_with_index do |str, i|
      #配列の文字列をASCII合計値を計算
      ascii_sum = str.each_char.map(&:ord).sum

      # もし現在の合計がこれまでの最大より大きければ、値とインデックスを更新
      if ascii_sum > max_value
          max_value = ascii_sum
          max_index = i
      end
  end
  # 最大のASCII合計値を持つ文字列インデックスを返す
  max_index
end

