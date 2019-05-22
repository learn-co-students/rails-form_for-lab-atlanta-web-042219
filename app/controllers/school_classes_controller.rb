class SchoolClassesController < ApplicationController

    def index
        @classes = SchoolClass.all
    end

    def edit
        @class = SchoolClass.find(params[:id])
    end

    def create
        @class = SchoolClass.new(school_class_params)
        if @class.save
            redirect_to school_class_path(@class)
        else
            render :new
        end

    end

    def new
        @class = SchoolClass.new
    end

    def update
        @class = SchoolClass.find(params[:id])
        @class.update(school_class_params)
        if @class.save
            redirect_to school_class_path(@class)
        else
            render :edit
        end
    end

    def show
        @class = SchoolClass.find(params[:id])        
    end

 private
 
    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end


end