class Project < ApplicationRecord
  has_many :reviews, dependent: :destroy
end