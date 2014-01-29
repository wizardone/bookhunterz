class Book::News < ActiveRecord::Base
  mount_uploader :image, BookNewsImageUploader

  has_many :comments
  validates :title, :presence => true
  validates :text, :presence => true
end
