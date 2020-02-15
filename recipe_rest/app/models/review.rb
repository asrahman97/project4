class Review < ApplicationRecord

  belongs_to :recipe

  validates_presence_of :review_message
  validates_presence_of :score

end
