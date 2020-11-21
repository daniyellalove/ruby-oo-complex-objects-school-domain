class School 

    attr_accessor :roster, :name 

    def initialize(name)
        @name = name 
        @roster = {}
    end 

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end 

    def grade(number)
        @roster[number]
    end 


    def sort 
        @roster.each do |grade, name|
            @roster[grade] = name.sort 
        end 
    end 
end 