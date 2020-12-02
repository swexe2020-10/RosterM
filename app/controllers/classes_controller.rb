class ClassesController < ApplicationController
    
    def main
        @students = Student.all
    end
 
end
