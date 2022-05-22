class AddIndexToContact < ActiveRecord::Migration[7.0]
  def change
    add_index :contacts, [:type, :user_id]
  end
end
