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

student1 = Student.new("AC-343424", "James", "Smith", 6)
puts student1.get_student_info

student2 = Student.new("AC-343428", "Maria", "Garcia", 5)
puts student2.get_student_info

student3 = Student.new("AC-343434", "Robert", "Johnson", 3)
puts student3.get_student_info