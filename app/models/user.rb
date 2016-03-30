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
  validates :password, :presence => true, length: {minimum: 6}, allow_nil: true
  validates :email, :presence => true, :uniqueness => true
  has_many :posts
  has_many :reviews

end
