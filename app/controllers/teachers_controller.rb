class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end
  
  def create
    @teacher = Teacher.new(
      uid: params[:teacher][:uid],
      password: params[:teacher][:password],
      password_confirmation: params[:teacher][:password_confirmation]
                           )
                           
    if @teacher.save
      flash[:info] = "ユーザを登録しました"
      redirect_to top_login_form_path
    else
      @teacher.pass = ""
      render :new
    end
  end
  
  def destroy
    teacher = Teacher.find(params[:id])
    teacher.destroy
    flash[:info] = "ユーザを削除しました"
    redirect_to teachers_path
  end
end
