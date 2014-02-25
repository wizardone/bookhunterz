class Book::News < ActiveRecord::Base
  mount_uploader :image, BookNewsImageUploader

  has_many :comments, :as => :resource

  validates_associated :comments
  validates :title, :presence => true
  validates :text, :presence => true

  def to_param
    title
  end
end
