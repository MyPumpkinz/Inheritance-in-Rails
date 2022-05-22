class AddUnivIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :univ_id, :integer
  end
end
