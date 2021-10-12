class StudentsController < ApplicationController
    def index
        render json: Student.all
    end

    def grades
        orderGrades = Student.all.order(:grade).reverse
        render json: orderGrades
       
    end

    def highest_grade
        render json: Student.all.max_by {|student| student.grade}
        
    end
end
