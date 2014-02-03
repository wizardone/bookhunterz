class Book::Review < ActiveRecord::Base
  mount_uploader :image, BookNewsImageUploader

  belongs_to :author
  has_many :comments, :as => :resource

  validates_associated :comments
  validates :book_name, :presence => true
  validates :review, :presence => true

  def scores_available
    [1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10]
  end
end
