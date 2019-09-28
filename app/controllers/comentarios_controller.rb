class ComentariosController < ApplicationController
    before_action :authenticate_user!

    def create
        @imagen = Imagen.find(params[:imagen_id])
        @comentario = Comentario.new(comentario_params)
        #debugger
        @comentario.imagen_id = @imagen.id
        @comentario.user_id = current_user.id
        @comentario.save
        redirect_to evento_imagen_path(@imagen.evento.id, @imagen.id)
    end

    def destroy
        @comentario= Comentario.find(params[:id])
        @comentario.destroy
        redirect_to evento_imagen_path(@comentario.imagen.evento.id, @comentario.imagen.id)
    end 

    private
    def comentario_params
        params.require(:comentario).permit(:text)
    end
end
