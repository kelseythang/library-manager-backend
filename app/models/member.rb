class Member < ActiveRecord::Base
  belongs_to :checkout
  has_many :books, through: :books_members
end