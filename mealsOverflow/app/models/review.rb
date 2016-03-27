# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  rating     :integer
#  comments   :text
#  created_at :datetime
#  updated_at :datetime
#

class Review < ActiveRecord::Base
end
