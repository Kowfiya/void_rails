class AddImagenToEvento < ActiveRecord::Migration[5.1]
  def change
    add_reference :eventos, :imagen, foreign_key: true
  end
end
