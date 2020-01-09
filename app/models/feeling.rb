class Feeling < ApplicationRecord
  belongs_to :user
  belongs_to :brand

  validates :comment, length: { maximum: 140 }
end
