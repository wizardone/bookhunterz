class User < ActiveRecord::Base

  validates :email, :presence => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :password, :presence => true, :length => { :minimum => 6, :maximum => 10}, :confirmation => true
  validates :password_confirmation, :presence => true

  class << self
    def authenticate(email, password)
      where(email: email, password: password).first || nil
    end 
  end
end
