class UnitsController < ApplicationController
    def index
        @units = Unit.all
        render json: @units
    end  
    def show
        @unit = Unit.find_by(fecha: Date.parse(params[:fecha]))
        #user = request.headers['X-CLIENTE']
        Request.create(nombre: params[:client])

        if @unit.present?
            render json: @unit
        else
            render json: {message: 'Dato no encontrado'}
        end        
    end      
end
