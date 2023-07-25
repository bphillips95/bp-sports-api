class WritersController < ApplicationController

    def index 
        writers = Writer.all 
        render json: writers
    end
    def show 
        writer = Writer.find(params[:id])
        render json: writer
    end 
    def create 
        writer = Writer.create(writer_params)
        render json: writer
    end

    private
    def writer_params
        params.require(:writer).permit(:first_name, :last_name)
      end
end
