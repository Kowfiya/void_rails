class RemoveImagenToEvento < ActiveRecord::Migration[5.1]
  def change
    remove_reference :eventos, :imagen, foreign_key: true
  end
end
