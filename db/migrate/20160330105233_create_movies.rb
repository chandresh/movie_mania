class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :text
      t.text :plot
      t.decimal :rating
      t.references :genre, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
