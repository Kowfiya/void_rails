class CreateEventos < ActiveRecord::Migration[5.1]
  def change
    create_table :eventos do |t|
      t.string :name
      t.string :descripction
      t.string :image
      t.boolean :finish

      t.timestamps
    end
  end
end
