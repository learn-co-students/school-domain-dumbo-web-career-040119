require 'pry'

class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student, grade)
    roster[grade] ||= [] 
    roster[grade] << student
  end
  
  def grade(student_grade)
    roster[student_grade]
  end
  
  def sort
    roster.each { |student_grade, students| roster[student_grade] = students.sort }
    
  end
  
end

