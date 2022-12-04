class CreatesMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.integer :library_card_number
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.decimal :fines
      t.timestamps
    end
  end
end
