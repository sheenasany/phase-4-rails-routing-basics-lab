class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.all.order(grade: :desc)
        render json: grades
    end

    def highest_grade
        grade = Student.all.find_by(grade: 105)
        render json: grade
    end

end
