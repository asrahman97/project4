class Rating < ApplicationRecord
  # Model associations
  belongs_to :recipe
  # Validations
  validates :rating, presence: true
end
