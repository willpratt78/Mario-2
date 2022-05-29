class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :content_body, presence: true
  validates :content_body, length: {in: 50..250}
  validates :rating, presence: true
  validates :content_body, numericality: {less_than: 6}
end