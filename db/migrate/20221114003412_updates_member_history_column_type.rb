class UpdatesMemberHistoryColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column :members, :history, :text
  end
end
