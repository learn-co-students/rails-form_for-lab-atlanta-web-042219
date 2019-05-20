class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(s_params)
    if @school_class.save
      redirect_to school_class_path(@school_class)
    else
      render :new
    end
  end

  def edit
    @school_class = SchoolClass.find(params[:id]) 
  end

  def update
    @school_class = SchoolClass.find(params[:id]) 
    if @school_class.update(s_params)
      redirect_to school_class_path(@school_class)
    else
      render :edit
    end
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  private
    def s_params
      params.require(:school_class).permit(:title, :room_number)
    end
end
