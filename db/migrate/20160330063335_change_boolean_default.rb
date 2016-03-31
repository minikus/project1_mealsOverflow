class ChangeBooleanDefault < ActiveRecord::Migration
  def change
    change_column :posts, :vegetarian, :boolean, :default => false
    change_column :posts, :availability, :boolean,  :default => true
    end
end
