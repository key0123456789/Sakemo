class AddUserRefToBrewages < ActiveRecord::Migration[5.2]
  def change
    add_reference :brewages, :user, foreign_key: true
  end
end
