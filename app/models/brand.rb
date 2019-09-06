class Brand < ApplicationRecord
  def self.search(search)
    if search
      Brand.where('name LIKE ?', "%#{search}%")
    else
      puts = "一致するものがありませんでした"
    end
  end
end
