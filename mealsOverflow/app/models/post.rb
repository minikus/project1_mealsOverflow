# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :text
#  description :text
#  location    :text
#  vegetarian  :text
#  portion     :integer
#  image       :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Post < ActiveRecord::Base
end