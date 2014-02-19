class Comment < ActiveRecord::Base
  belongs_to :resource, polymorphic: true

  validates :email, presence: :true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :comment, presence: :true
end
