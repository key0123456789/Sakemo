class CreateClips < ActiveRecord::Migration[5.2]
  def change
    create_table :clips do |t|
      t.references :user, null: false,  foreign_key: true
      t.references :brand, null:false,  foreign_key: true
      t.timestamps
    end
  end
end
