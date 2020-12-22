class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  

  def new
    @student = Student.new
    @teachers = Teacher.all
  end
  
  

  def create
    @student = Student.new(
    students_id: params[:student][:students_id],
    name: params[:student][:name],
    name_furi: params[:student][:name_furi],
    grade: params[:student][:grade],
    course: params[:student][:course],
    tannin: params[:student][:tannin],
    message: params[:student][:message]
   )
    if @student.save
      flash[:info] = "生徒を登録しました"
      redirect_to classes_main_path
    else
      @student.name = ""
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
    @teachers = Teacher.all
  end
  
  def update
    student = Student.find(params[:id])
    student.update(students_id: params[:student][:students_id],
    name: params[:student][:name],
    name_furi: params[:student][:name_furi],
    grade: params[:student][:grade],
    tannin: params[:student][:tannin],
    message: params[:student][:message])
    redirect_to classes_main_path
  end

  def show
  end
  
  def destroy
    student = Student.find(params[:id])
    student.destroy
    redirect_to classes_main_path
  end
end
