class Member < ActiveRecord::Base
  # current checkouts
  has_many :checkouts
  has_many :books, through: :checkouts
  # account checkout history
  has_many :records
  has_many :books, through: :records
end