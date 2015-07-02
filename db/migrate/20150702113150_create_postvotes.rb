class CreatePostvotes < ActiveRecord::Migration
  def change
    create_table :postvotes do |t|
      t.integer :user_id, :post_id
      t.timestamps null:false
    end
  end
end
