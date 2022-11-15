class CreatesMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.integer :library_card_number
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.string :address
      t.string :history, array: true
      t.integer :fines
      t.integer :book_id
    end
  end
end
