class SchoolClassesController < ApplicationController

    def show
        @sc = SchoolClass.find(params[:id])
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @sc = SchoolClass.create(post_params(:title, :room_number))
        redirect_to school_class_path(@sc)
    end

    def edit
        @sc = SchoolClass.find(params[:id])
    end

    def update
        @sc = SchoolClass.find(params[:id])
        @sc.update(post_params(:title, :room_number))
        redirect_to school_class_path(@sc)
    end

    private

	def post_params(*args)
		params.require(:school_class).permit(*args)
	end

end