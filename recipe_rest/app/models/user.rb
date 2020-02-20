class User < ApplicationRecord
  # encrypt password
  has_secure_password

  # Model associations
  has_many :recipes, foreign_key: :created_by
  # Validations
  validates :user, presence: true, uniqueness: true
  # validates :password_digest, presence: true
  validates :image_url, presence: true
end
