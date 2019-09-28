class CreateEventousers < ActiveRecord::Migration[5.1]
  def change
    create_table :eventousers do |t|
      t.references :user, foreign_key: true
      t.references :evento, foreign_key: true
      t.boolean :subio

      t.timestamps
    end
  end
end
