class AddImageToBookNews < ActiveRecord::Migration
  def change
    add_column :book_news, :image, :string
  end
end
