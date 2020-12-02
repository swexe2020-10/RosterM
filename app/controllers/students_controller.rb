class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(
    students_id: params[:student][:students_id],
    name: params[:student][:name]
   )
    if @student.save
      flash[:info] = "生徒を登録しました"
      redirect_to root_path
    else
      @student.name = ""
      render :new
    end
  end

  def edit
  end

  def show
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    redirect_to students_path
  end
end
