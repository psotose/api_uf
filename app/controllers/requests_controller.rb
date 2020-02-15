class RequestsController < ApplicationController

    def index
        @requests = Request.all
        render json: @requests
    end    

    def show
        @request = Request.find_by(nombre: params[:id])
        if @request
            render json: @request
        else    
            render json: {message: 'No existe el usuario'}   
        end     
    end  
    
    def create
        @request = Request.new(request_params)

        if @request.save
            render json: @request, status: :created, location: @request
        else   
            render json: @request.errors, status: :unprocessable_entity
        end     
    end   
    
    private

    def request_params
        params.require(:request).permit(:nombre)
    end    
end
