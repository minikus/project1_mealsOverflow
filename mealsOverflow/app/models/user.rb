# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  firstname       :text
#  email           :text
#  mobile          :integer
#  password_digest :integer
#  image           :text
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_secure_password
  validates :email, :presence => true, :uniqueness => true

end
