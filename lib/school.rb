# code here!

class School 

    attr_accessor :name, :roster

    def initialize(name, roster={})
        @name = name
        @roster = roster
    end

    def add_student(student, grade)
       roster[grade] ||= []
       roster[grade] << student
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_students = {}
        roster.map do |grade, students|
            sorted_students[grade] = students.sort
        end
        sorted_students

    end



end