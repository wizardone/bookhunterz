class Book::Review < ActiveRecord::Base
  mount_uploader :image, BookNewsImageUploader

  belongs_to :author
  has_many :comments
  validates :book_name, :presence => true
  validates :review, :presence => true
end
