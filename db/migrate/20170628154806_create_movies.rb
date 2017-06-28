class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :rating
      t.string :synopsis

      t.timestamps
    end
  end
end
