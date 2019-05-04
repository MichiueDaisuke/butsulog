class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :prefectures
      t.text :address
      t.text :buildingname
      t.text :reputation

      t.timestamps
    end
  end
end
