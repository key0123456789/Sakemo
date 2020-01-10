class Brewage < ApplicationRecord
  belongs_to :brand
  belongs_to :user

  validates :name, presence: true, length: {maximum: 40}

  mount_uploader :image, ImageUploader
end
