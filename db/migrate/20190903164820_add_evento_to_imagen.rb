class AddEventoToImagen < ActiveRecord::Migration[5.1]
  def change
    add_reference :imagens, :evento, foreign_key: true
  end
end
