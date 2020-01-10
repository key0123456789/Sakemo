class AddNotnullOnBrewages < ActiveRecord::Migration[5.2]
  def change
    change_column :brewages, :name, :string, null: false
  end
end
