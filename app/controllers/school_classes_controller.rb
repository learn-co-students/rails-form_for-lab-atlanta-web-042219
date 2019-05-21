class SchoolClassesController < ApplicationController
	before_action :set_sclass, only: [:show, :edit, :update, :destroy]

	def index
		@sclasses = SchoolClass.all
	end

	def show
	end

	def new
		@sclass = SchoolClass.new
	end

	def create
		@sclass = SchoolClass.new(permit_params)
		if @sclass.save
			redirect_to school_class_path(@sclass)
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @sclass.update(permit_params)
			redirect_to school_class_path
		else
			render :edit
		end
	end

	def destroy
		@sclass.destroy
		redirect_to school_classes_path
	end

	private

	def set_sclass
		@sclass = SchoolClass.find(params[:id])
	end

	def permit_params
		params.require(:school_class).permit(:title, :room_number)
	end
end
