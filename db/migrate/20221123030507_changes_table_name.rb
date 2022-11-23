class ChangesTableName < ActiveRecord::Migration[6.1]
  def change
    rename_table('books_members', 'records')
  end
end
