class Student
  attr_accessor :student_id, :first_name, :last_name, :grade_level

  def initialize(student_id, first_name, last_name, grade_level)
      @student_id = student_id
      @first_name = first_name
      @last_name = last_name
      @grade_level = grade_level
  end

  def get_student_info
      "#{@student_id}: #{@first_name} #{@last_name}(#{@grade_level}gr)"
  end
end

class Classroom
  attr_accessor :students, :course_name, :teacher

  def initialize(students, course_name, teacher)
      @students = students
      @course_name = course_name
      @teacher = teacher
  end

  # 教室の情報を「科目名 managed by 教員名」として返す
  def get_class_identity
      "#{@course_name} managed by #{@teacher}" 
  end

  # 生徒の数
  def get_number_of_students
      "#{@students.length}"
  end
end



# テストケース
classroom1 = Classroom.new([Student.new("AC-343424", "James", "Smith", 6),Student.new("AC-343428", "Maria", "Garcia", 5),Student.new("AC-343434", "Robert", "Johnson", 3),Student.new("AC-343454","Danny", "Robertson",10)], "Algebra II", "Emily Theodore")
puts classroom1.get_class_identity
puts classroom1.get_number_of_students

classroom2 = Classroom.new([Student.new("AC-340014","Kent", "Carter",9),Student.new("AC-340024","Isaiah", "Chambers",10),Student.new("AC-340018","Leta", "Ferguson", 7)], "English", "Daniel Pherb")
puts classroom2.get_class_identity
puts classroom2.get_number_of_students