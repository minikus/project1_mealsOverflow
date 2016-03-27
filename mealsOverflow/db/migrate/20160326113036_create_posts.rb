class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :description
      t.text :location
      t.text :vegetarian
      t.integer :portion
      t.text :image
      t.timestamps
    end
  end
end
