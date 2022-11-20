class UpdatesMembersTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :members, :address, :string
    remove_column :members, :history, :text
    remove_column :members, :book_id, :integer
  end
end
