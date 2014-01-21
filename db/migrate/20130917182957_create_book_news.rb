class CreateBookNews < ActiveRecord::Migration
  def change
    create_table :book_news do |t|
      t.string :title
      t.text :text
      t.timestamps
    end
  end
end
