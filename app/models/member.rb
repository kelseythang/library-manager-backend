class Member < ActiveRecord::Base
  belongs_to :checkout
  has_many :records
  has_many :books, through: :records
end