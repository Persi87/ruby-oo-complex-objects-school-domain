# code here!
require 'pry'

class School 

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
            @roster[grade] ||= []          #roster[grade] is true (has a value), add student, or (if not,) create new array
            @roster[grade] << student_name      # then add student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, names|
            names.sort!
        end
    end

end