class CreateCommentUsers < ActiveRecord::Migration
  def change
    create_table :comment_users do |t|
      t.string :email
      t.string :ip_address
      t.boolean :damage
    end
  end
end
