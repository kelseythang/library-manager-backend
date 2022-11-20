class Book < ActiveRecord::Base
  belongs_to :author
  has_one :member, through: :checkout
  has_many :genres, through: :books_genres
  has_many :members, through: :books_members
end