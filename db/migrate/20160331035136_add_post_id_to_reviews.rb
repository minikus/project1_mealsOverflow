class AddPostIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :user_id, :integer
    add_column :reviews, :posts_id, :integer
  end
end

def change
  add_column :posts, :user_id, :integer
end
