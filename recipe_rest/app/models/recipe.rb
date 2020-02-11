class Recipe < ApplicationRecord

  belongs_to :user
  # Model associations
  has_many :ingredients
  # Validations
  # validates :recipe_name, presence: true
  # validates :rating
  # validates :difficulty_level, presence: true
  # validates :prep_time, presence: true
  # validates :cook_time, presence: true
  # validates :total_time, presence: true
  # validates :image_url, presence: true
  # validates :video_url, presence: true

end
