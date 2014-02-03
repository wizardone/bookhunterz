class Comment < ActiveRecord::Base
  belongs_to :resource, polymorphic: true

  validates :email, :presence => :true
  validates :comment, :presence => :true
end
