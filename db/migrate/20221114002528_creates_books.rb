class CreatesBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :image_url
      t.string :title
      t.string :author
      t.text :genre, array: true
      t.boolean :is_checked_out
    end
  end
end
