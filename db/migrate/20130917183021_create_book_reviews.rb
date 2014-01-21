class CreateBookReviews < ActiveRecord::Migration
  def change
    create_table :book_reviews do |t|
      t.string :book_name
      t.text :review
      t.timestamps
    end
  end
end
