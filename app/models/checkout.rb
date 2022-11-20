class Checkout < ActiveRecord::Base
  belongs_to :book
  has_one :member
end