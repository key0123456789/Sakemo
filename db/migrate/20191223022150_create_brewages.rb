class CreateBrewages < ActiveRecord::Migration[5.2]
  def change
    create_table :brewages do |t|
      t.string :name, null: false
      t.string :image
      t.references :brand, foreign_key: true
      t.timestamps
    end
  end
end
