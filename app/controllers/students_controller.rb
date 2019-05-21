class StudentsController < ApplicationController
	before_action :set_student, only: [:show, :edit, :update, :destroy]

	def index
		@students = Student.all
	end

	def show
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(permit_params)
		if @student.save
			redirect_to student_path(@student)
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @student.update(permit_params)
			redirect_to student_path
		else
			render :edit
		end
	end

	def destroy
		@student.destroy
		redirect_to students_path
	end

	private

	def set_student
		@student = Student.find(params[:id])
	end

	def permit_params
		params.require(:student).permit(:first_name, :last_name)
	end
end
