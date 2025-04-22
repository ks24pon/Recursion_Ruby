# Studentクラス定義
class Student
  # ゲッター/セッター
  attr_accessor :first_name, :last_name, :age, :grade, :id

  # new呼び出し行うと自動的に呼ばれる
  def initialize(first_name, last_name, age, grade)
      @first_name = first_name
      @last_name = last_name
      @age = age
      @grade = grade
      @id = nil
  end
end

# 各生徒にIDを割り当て
# 引数studentsはstudentオブジェクトの配列
def set_student_ids(students)
  # each_with_indexで各生徒とそのインデックス(i)を取得
  students.each_with_index do |student, i|
      # IDをインデックス + 1に設定
      student.id = i + 1
      # 割り当てたIDと生徒の名前を出力
      puts "Student #{student.first_name} has an in of #{student.id}"
  end
end

# インデックスO(1) で生徒を検索する関数
# id：探したい生徒ID
# list_of_students：Studentオブジェクトの配列
def search_for_student(id, list_of_students)
  # IDは1からだが、配列のインデックスは0から
  correct_id = id -1

  # correct_idが0未満または配列のサイズ以上なら不正アクセス"Not Found!"を返す
  return "Not FOUND!" if correct_id < 0 || correct_id >= list_of_students.length

  # 有効なIDがあれば、該当するStudentオブジェクトを取得
  student = list_of_students[correct_id]

  # 生徒のフルネームを文字で返す
  "#{student.first_name} #{student.last_name}"
end

# 線形探索(0(n))で生徒を検索する関数
def search_for_student_linear(student_id, list_of_students)
  # 生徒リストを1人ずつ順番に調べる
  list_of_students.each do |student|
      # 生徒のIDが探しているIDと一致したら
      if student.id == student_id
          # フルネームを文字列で返す
          return "#{student.first_name} #{student.last_name}"
      end
  end
  # 最後まで見つからなければNot FOUND!を返す
  "Not FOUND!"
end



# 学生の配列作成
students = []
students.push(Student.new("Paula", "Cooper", 15, 10))
students.push(Student.new("Daniel", "Roger", 14, 10))
students.push(Student.new("Trevor", "Nishi", 14, 9))
students.push(Student.new("Kei", "Hideyoshi", 16, 11))

# IDを設定
set_student_ids(students)

# 検索実行
puts "Search for id of 3 constant time - #{search_for_student(3, students)}"
puts "Search for id of 3 linear time - #{search_for_student_linear(3, students)}"

puts "Search for id of 10 constant time - #{search_for_student(10, students)}"
puts "Search for id of 10 linear time - #{search_for_student_linear(10, students)}"