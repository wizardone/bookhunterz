class AddEmailAndIpToComments < ActiveRecord::Migration
  def change
    add_column :comments, :email, :string
    add_column :comments, :ip_address, :string
  end
end
