class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :description
      t.text :location
      t.boolean :vegetarian
      t.integer :portion
      t.boolean :availability
      t.text :image
      t.timestamps
    end
  end
end
