class CreateHeaderImages < ActiveRecord::Migration
  def change
    create_table :header_images do |t|
      t.boolean :active
      t.string :image
      t.timestamps
    end
  end
end
