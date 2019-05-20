class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name))
    if @student.save
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(params.require(:student).permit(:first_name, :last_name))
      redirect_to student_path(@student)
    else
      render :new
    end
  end
end
