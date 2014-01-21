class CreateBookAuthors < ActiveRecord::Migration
  def change
    create_table :book_authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :aka
      t.timestamps
    end
  end
end
