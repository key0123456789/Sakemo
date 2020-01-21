class Feeling < ApplicationRecord
  belongs_to :user
  belongs_to :brand

  validates :comment, length: { maximum: 140 }

  with_options presence: true do
    validates :flavor
    validates :aroma
    validates :body
    validates :sharp
    validates :favorite
  end
end
