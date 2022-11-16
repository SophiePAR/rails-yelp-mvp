class Review < ApplicationRecord
  belongs_to :restaurant

  RATINGS = (0..5).to_a

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: RATINGS }, numericality: { only_integer: true }
end
