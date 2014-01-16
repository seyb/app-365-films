class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.integer :director_id

      t.timestamps
    end
  end
end
