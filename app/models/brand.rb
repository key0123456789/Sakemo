class Brand < ApplicationRecord
  def self.search(search)
    if search
      Brand.where('name LIKE ?', "%#{search}%")
    end
  end
end
