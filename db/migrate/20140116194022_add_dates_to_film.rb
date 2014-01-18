class AddDatesToFilm < ActiveRecord::Migration
  def change
    add_column :films, :planned_at, :datetime
    add_column :films, :seen_at, :datetime
  end
end
