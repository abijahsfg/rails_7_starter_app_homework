class Book < ApplicationRecord
  has_one_attached :cover_picture
  has_many :book_reviews
end
