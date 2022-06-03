class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :content_body, length: {in: 50..250}
  validates :rating, numericality: {less_than: 6}
end