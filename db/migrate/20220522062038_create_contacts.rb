class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.string :type
      t.string :name
      t.string :email
      t.string :phone
      t.string :faculty
      t.string :student_id_number
      t.string :national_lecturer_identification_number
      t.string :last_position

      t.timestamps
    end
  end
end
