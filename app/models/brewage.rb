class Brewage < ApplicationRecord
  belongs_to :brand
  belongs_to :user

  mount_uploader :image, ImageUploader
end
