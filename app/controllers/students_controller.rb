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
    name: params[:student][:name],
    name_furi: params[:student][:name_furi],
    grade: params[:student][:grade],
    course: params[:student][:course],
    message: params[:student][:message]
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
    @student = Student.find(params[:id])
  end
  
  def update
    student = Student.find(params[:id])
    student.update(students_id: params[:student][:students_id],
    name: params[:student][:name],
    name_furi: params[:student][:name_furi],
    grade: params[:student][:grade],
    message: params[:student][:message])
    redirect_to students_path
  end

  def show
  end
  
  def destroy
    student = Student.find(params[:id])
    student.destroy
    redirect_to root_path
  end
end
