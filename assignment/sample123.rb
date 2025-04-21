# 生徒クラス
class Student
  # 生徒の識別番号
  attr_accessor :student_id, :first_name, :last_name, :grade_level

  def initialize(student_id, first_name, last_name, grade_level)
      @student_id = student_id
      @first_name = first_name
      @last_name = last_name
      @grade_level = grade_level
  end

  # 生徒情報
  def get_student_info
      "#{@student_id}: #{@first_name} #{@last_name}(#{@grade_level}gr)"
  end
end


# クラスルーム
class Classroom
  attr_accessor :students, :course_name, :teacher

  def initialize(students, course_name, teacher)
      @students = students
      @course_name = course_name
      @teacher = teacher
  end

  # 教室情報
  def get_class_denitity
      "#{@course_name} managed by #{@teacher}"
  end

  # 生徒の数
  def get_number_students
      @students.length
  end
end
# 成績優秀者だけを出力
def print_honors_students(classrooms)
  # 全ての教室を1つずつ取り出す
  classrooms.each do |classroom|
      # 各教室の生徒を1人ずつ確認
      classroom.students.each do |student|
          # 学年10以上の生徒を(成績優秀者)をチェック
          if student.grade_level >= 10
              # 優秀者の情報を出力
              puts "#{student.get_student_info} from #{classroom.teacher}'s class"
          end
      end
  end
end


# テストケース
classroom1 = Classroom.new([Student.new("AC-343424", "James", "Smith", 6),Student.new("AC-343428", "Maria", "Garcia", 5),Student.new("AC-343434", "Robert", "Johnson", 3),Student.new("AC-343454","Danny", "Robertson",10)], "Algebra II", "Emily Theodore")

classroom2 = Classroom.new([Student.new("AC-340014","Kent", "Carter",9),Student.new("AC-340024","Isaiah", "Chambers",10),Student.new("AC-340018","Leta", "Ferguson",7)], "English", "Daniel Pherb")

school = [classroom1, classroom2]
# 出力
print_honors_students(school)