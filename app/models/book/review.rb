class Book::Review < ActiveRecord::Base
  mount_uploader :image, BookNewsImageUploader

  belongs_to :author
  validates :book_name, :presence => true
  validates :review, :presence => true
end
