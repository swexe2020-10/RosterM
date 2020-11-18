class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end
  
  def create
    @teacher = Teacher.new(name: params[:teacher][:name],pass: params[:teacher][:pass])
    if @teacher.save
      redirect_to '/'
    else
      @teacher.pass = ""
      render :new
    end
  end
end
