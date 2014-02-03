class RenameComments < ActiveRecord::Migration
  def change
    rename_table :book_comments, :comments
  end
end
