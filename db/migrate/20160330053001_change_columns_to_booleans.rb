class ChangeColumnsToBooleans < ActiveRecord::Migration
  def change
    remove_column :posts, :vegetarian
    add_column :posts, :vegetarian,  :boolean
    add_column :posts, :availability, :boolean
  end
end
