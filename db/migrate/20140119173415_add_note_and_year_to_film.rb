class AddNoteAndYearToFilm < ActiveRecord::Migration
  def change
    add_column :films, :rate, :integer
    add_column :films, :year, :integer
    add_column :films, :type, :string
    add_column :films, :recommended_by, :string
  end
end
