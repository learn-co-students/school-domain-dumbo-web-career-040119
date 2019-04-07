class School

 attr_accessor :school_name, :roster, :student_name, :grade

   def initialize(school_name)
     @school_name = school_name
     @roster = {}
   end

   def roster
     @roster
   end


   def add_student(student_name, grade)
     if !@roster[grade]
       @roster[grade] = [student_name]
     else @roster[grade] << student_name
     end
   end

   def grade(grade)
     @roster[grade]
   end

   def sort
    sorted = {}
    @roster.collect do |grade, name|
      sorted[grade] = name.sort #najpierw co ma być na początku, potem co ma być sortowane
    end
    sorted
   end

end
