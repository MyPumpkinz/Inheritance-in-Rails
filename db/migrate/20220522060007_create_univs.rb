class CreateUnivs < ActiveRecord::Migration[7.0]
  def change
    create_table :univs do |t|
      t.string :name
      t.string :address
      t.string :website
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
