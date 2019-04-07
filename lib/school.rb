require 'pry'

class School
  attr_reader :name, :roster



  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def roster
    @roster
  end

  def sort
    self.roster.transform_values{|grade| grade.sort}
  end
end
