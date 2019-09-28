class EventosController < ApplicationController
  
  def index
    @eventos = Evento.last(3)
  end

  def show
    @evento = Evento.find(params[:id])
  end

  def new
    @evento = Evento.new
  end

  def create
    @evento = Evento.new(evento_params)
    @evento.finish = false
    @evento.save
    redirect_to evento_path(@evento)
  end

  private
  def evento_params
      params.require(:evento).permit(:name,:descripction,:image)
  end
end