class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :content_body, length: {in: 50..250}, presence: true
  validates :rating, numericality: {greater_than: 0, less_than: 6}, presence: true
end