# 配列の中からneedleを探し、見つかればインデックスを探す。なければ-1
def needle_in_haystack(haystack, needle)
  # 配列をループ
  haystack.each_with_index do |item, index|
      # 要素がneedleと一致したらインデックスを返す
      return index if item == needle
  end
  # どこにも見つからなければ-1を返す
  -1
end

# 指定されたインデックスが有効なら文字列を表示、無効ならエラー表示
def print_at_index(index, works)
  # indexが0以上かつ配列の長さより小さい場合のみ有効
  if index >= 0 && index < works.length
      puts "Priting: ->#{works[index]}<-at index: #{index}"
  else
      puts "Index out of scope!"
  end
end

# 文字列の配列
works = ["Take", "Restaurant", "Family", "Running", "Tea", "Apples"]


# 出力
print_at_index(needle_in_haystack(works, "Running"), works)
print_at_index(needle_in_haystack(works, "Apples"), works)
print_at_index(needle_in_haystack(works, "Train"), works)