class CreateCommentvotes < ActiveRecord::Migration
  def change
    create_table :commentvotes do |t|
      t.integer :user_id, :comment_id
      t.timestamps null:false
    end
  end
end
