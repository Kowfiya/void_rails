class ImagensController < ApplicationController
    before_action :authenticate_user!, only: [:create, :new]

    def new
        @imagen = Imagen.new
        @evento = Evento.find(params[:evento_id])
    end

    def create
        @evento = Evento.find(params[:evento_id])
        @imagen = Imagen.new(imagen_params)
        @imagen.save
        @eventouser = Eventouser.new
        @eventouser.subio = true,
        @eventouser.user_id = current_user.id,
        @eventouser.evento_id = @evento.id
        #debugger
        @eventouser.save
        redirect_to evento_path(@evento)
    end

    def show
        #@evento = Evento.find(params[:evento_id])
        @imagen = Imagen.find(params[:id])        
    end

    def destroy
        @imagen = Imagen.find(params[:id])
        @imagen.destroy
        @relacion = @imagen.evento.eventousers.find_by_user_id_and_evento_id(@imagen.user.id,@imagen.evento.id)
        @relacion.destroy
        redirect_to evento_path(@imagen.evento.id)
    end

    private
    def imagen_params
        params.require(:imagen).permit(:photo,:evento_id,:user_id)
    end
end
