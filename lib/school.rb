require 'pry'

class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each { |grade, name| @roster[grade] = name.sort }
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else !@roster[grade]
            @roster[grade] = []
            @roster[grade] << name
        end
    end
# binding.pry
end