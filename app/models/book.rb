class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :genre
  has_one :member, through: :checkout
  has_many :members, through: :books_members
end