class Recipe < ApplicationRecord

  # Model associations
  has_many :ingredients
  # Validations
  validates :recipe_name, presence: true
  validates :rating, presence: true
  validates :difficulty_level, presence: true
  validates :prep_time, presence: true
  validates :cook_time, presence: true
  validates :total_time, presence: true
  validates :image_url, presence: true
  validates :video_url, presence: true

end
