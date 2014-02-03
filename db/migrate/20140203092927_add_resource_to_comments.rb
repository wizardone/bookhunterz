class AddResourceToComments < ActiveRecord::Migration
  def change
    add_column :comments, :resource_id, :integer
    add_column :comments, :resource_type, :string
  end
end
