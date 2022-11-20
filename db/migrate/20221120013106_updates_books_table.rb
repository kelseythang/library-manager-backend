class UpdatesBooksTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :genre, :text
    add_column :books, :isbn, :integer
  end
end
