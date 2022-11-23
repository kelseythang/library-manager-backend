class Book < ActiveRecord::Base
  # direct associations
  belongs_to :author
  belongs_to :genre
  # current checkout
  has_one :checkout
  has_one :member, through: :checkouts
  # checkout history
  has_many :records
  has_many :members, through: :records
end