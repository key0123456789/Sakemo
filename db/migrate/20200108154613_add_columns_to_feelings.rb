class AddColumnsToFeelings < ActiveRecord::Migration[5.2]
  def change
    add_column :feelings, :flavor, :string
    add_column :feelings, :aroma, :string
    add_column :feelings, :body, :string
    add_column :feelings, :sharp, :string
    add_column :feelings, :favorite, :string
  end
end
