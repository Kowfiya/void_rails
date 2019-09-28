class CreateComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios do |t|
      t.string :text
      t.references :imagen, foreign_key: true

      t.timestamps
    end
  end
end
