# 解雇される従業員を除いた新しい従業員リストを返す関数
def fireEmployees(employees, unemployed)
  # 解雇リストを高速のために Hashに変換
  fire_list = {}
  unemployed.each do |name|
      # 解雇対象者の名前をハッシュに記録
      fire_list[name] = true
  end

  # 残る従業員を格納
  remaining_employees = []

  # 元の従業員のリストを1ずつ確認
  employees.each do |employee|
      # 解雇リストに含まれていない場合のみ。残留リストに追加
      if fire_list[employee] == nil
          remaining_employees << employee
      end
  end
  # 残った従業員の配列を返す
  remaining_employees
end

