class UpdatesBooksAuthor < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :author, :string
    add_column :books, :author_id, :integer 
  end
end
