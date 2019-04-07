# code here!
require 'pry'

class School

    attr_accessor :roster

    def initialize(school)
        @roster = {}
    end

    def add_student(student,grade)
        if roster.keys.include?(grade)
            roster[grade] << student
        else
            roster[grade] = []
            roster[grade] << student
        end
       #binding.pry
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        new_hash = {}
        roster.map do |key,value|

            new_hash[key] = value.sort

        end
        new_hash
    end
end