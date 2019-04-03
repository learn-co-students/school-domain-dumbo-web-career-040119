class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    # We need to create an empty array as the value for the key "grade"
    # roster[grade] ||= [] means if roster[grade] is nil, set it equal to an array
    # Then we add the students name to that empty array.
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(grade)
    # This will output the array of students in the grade passed in.
    roster[grade]
  end

  def sort
    # First create an empty hash to store the sorted roster
    sorted_roster = {}
    # Then iterate over each grade in the roster and set the grade key
    # equal to the array of students in that grade, sorted alphabetically.
    roster.each do |grade, all_students_in_grade|
      sorted_roster[grade] = all_students_in_grade.sort
    end
    # Return sorted roster at end b/c we used each.
    sorted_roster
  end

end
