def listIntersection(target_list,search_list)
  # 配列同士の共通部分を取得(重複を除く)
  intersection = target_list & search_list

  # 昇順にソートして返す
  intersection.sort
end

# 要件
# targetListとsearchList共通部分の値だけ取り出す
# 重複は除く
#昇順(小さい順で返す)