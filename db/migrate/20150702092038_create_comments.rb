class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id, :user_id
      t.string :user_comment
      t.timestamps null:false
    end
  end
end
