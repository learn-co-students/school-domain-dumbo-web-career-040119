require 'pry'

class School

  attr_reader :school_name, :grade
  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end


  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = [name]
    else @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
    @roster.each do |k, v|
      sorted_hash[k] = v.sort
    end
    sorted_hash
  end



end
