class DropsGenresJoinTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :books_genres
    add_column :books, :genre_id, :integer
  end
end
