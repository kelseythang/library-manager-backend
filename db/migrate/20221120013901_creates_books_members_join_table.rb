class CreatesBooksMembersJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :books_members do |t|
      t.integer :book_id
      t.integer :member_id
    end
  end
end
