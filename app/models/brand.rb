class Brand < ApplicationRecord
  has_many :brewages
  has_many :clips
  has_many :users, through: :clips

  def self.search(search)
    if search
      Brand.where('name LIKE ?', "%#{search}%")
    else
      puts = "一致するものがありませんでした"
    end
  end
end
