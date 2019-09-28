class AddUserToImagen < ActiveRecord::Migration[5.1]
  def change
    add_reference :imagens, :user, foreign_key: true
  end
end
