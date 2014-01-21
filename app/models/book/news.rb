class Book::News < ActiveRecord::Base
  mount_uploader :image, BookNewsImageUploader

  validates :title, :presence => true
  validates :text, :presence => true
end
