# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  title        :text
#  description  :text
#  location     :text
#  portion      :integer
#  image        :text
#  created_at   :datetime
#  updated_at   :datetime
#  user_id      :integer
#  vegetarian   :boolean          default("false")
#  availability :boolean          default("true")
#

class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :location, :presence => true
  validates :description, :presence => true


  belongs_to :user

end
