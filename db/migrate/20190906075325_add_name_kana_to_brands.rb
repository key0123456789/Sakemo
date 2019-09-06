class AddNameKanaToBrands < ActiveRecord::Migration[5.2]
  def change
    add_column :brands, :name_kana, :string
  end
end
