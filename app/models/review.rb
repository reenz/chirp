class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true
  # numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5},
  #           message: "%{rating} should be between 1 and 5"
end
