class Brewage < ApplicationRecord
  belongs_to :brand

  mount_uploader :image, ImageUploader
end
