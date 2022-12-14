class Book < ActiveRecord::Base
  # -------------- direct associations --------------- #
  belongs_to :author
  belongs_to :genre
  # ---------------- current checkouts --------------- #
  has_one :checkout, dependent: :destroy
  has_one :member, through: :checkouts
  # ---------------- checkout history ---------------- #
  has_many :records, dependent: :destroy
  has_many :members, through: :records
end