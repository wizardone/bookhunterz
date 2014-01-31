class AddScoreToReviews < ActiveRecord::Migration
  def change
    add_column :book_reviews, :score, :decimal, :precision => 2, :scale => 1
  end
end
