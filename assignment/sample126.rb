def websitePagination(urls,page_size,page)
  # 開始インデックスを計算(0始まり)
  start_index = (page - 1) * page_size
  urls[start_index, page_size]
end