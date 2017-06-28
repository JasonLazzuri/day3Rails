class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :user
      t.string :stars
      t.integer :movie_id
      t.string :analysis

      t.timestamps
    end
  end
end
