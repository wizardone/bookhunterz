class User < ActiveRecord::Base
  validates :email, :presence => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :nick, :presence => true
  has_secure_password

end
