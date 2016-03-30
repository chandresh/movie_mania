class RemoveColumnsFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :text, :string
  end
end
