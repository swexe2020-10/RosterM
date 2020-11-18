class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    students_id = params[:student][:students_id]
    name = params[:student][:name]
    student = Student.new(name: name)
    student.save
    redirect_to'/'
  end

  def edit
  end

  def show
  end

  def destroy
    @student = Student.find(params[:id])
	　student.destroy
	　redirect_to '/'
  end
end
