class AddImageToReviews < ActiveRecord::Migration
  def change
    add_column :book_reviews, :image, :string
  end
end
