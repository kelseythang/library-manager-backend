class CreatesRecordsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.integer :book_id
      t.integer :member_id
      t.timestamps
    end
  end
end
