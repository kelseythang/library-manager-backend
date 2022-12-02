class Member < ActiveRecord::Base
  # current checkouts
  has_many :checkouts
  has_many :books, through: :checkouts
  # account checkout history
  has_many :records
  has_many :books, through: :records

  # library card number generator
  def self.generate_new_id 
    new_id = rand.to_s[2..7].to_i
    unless self.find_by(library_card_number: new_id) == nil
      new_id = rand.to_s[2..7].to_i
    else
      new_id
    end
  end

end