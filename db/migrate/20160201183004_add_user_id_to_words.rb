class AddUserIdToWords < ActiveRecord::Migration
  def change
    add_column :words, :user_id, :integer
  	add_index :words, [:user_id]
  end
end
