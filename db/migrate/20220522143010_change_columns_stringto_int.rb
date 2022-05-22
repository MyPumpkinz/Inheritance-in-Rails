class ChangeColumnsStringtoInt < ActiveRecord::Migration[7.0]
  def change
    change_column :contacts, :phone, :integer
    change_column :contacts, :student_id_number, :integer
    change_column :contacts, :national_lecturer_identification_number, :integer
  end
end
