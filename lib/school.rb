# code here!

require "pry"

class School
    
    attr_accessor :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(grade)
        # binding.pry
        @roster[grade] ||= @roster
    end

    def sort

        new_hash = {}

        @roster.each do |key, value|
            # binding.pry
            new_hash[key] = value.sort
        end        
            new_hash
    end

    # expected: {7=>["Blake Johnson", "Jack Bauer"], 9=>["Bart Simpson", "Homer Simpson"], 10=>["Avi Flombaum", "Jeff Baird"]}


end