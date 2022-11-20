class Genre < ActiveRecord::Base
  has_many :books, through: :books_genres
end