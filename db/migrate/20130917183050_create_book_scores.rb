class CreateBookScores < ActiveRecord::Migration
  def change
    create_table :book_scores do |t|
      t.string :score
      t.timestamps
    end
  end
end
