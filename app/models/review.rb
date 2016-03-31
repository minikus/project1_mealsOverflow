# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  rating     :integer
#  comments   :text
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#  posts_id   :integer
#

class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :reviewer, :foreign_key => :reviewer_id, :class_name => :User
end
