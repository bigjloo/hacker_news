class UpdatePostvotes < ActiveRecord::Migration
  def change
    add_column :postvotes, :count, :integer
  end
end
