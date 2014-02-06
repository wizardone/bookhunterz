class AddAuthorToReviews < ActiveRecord::Migration
  def change
    add_column :book_reviews, :user_id, :integer
  end
end
