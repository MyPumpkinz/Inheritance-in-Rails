json.extract! contact, :id, :user_id, :type, :name, :email, :phone, :faculty, :student_id_number, :national_lecturer_identification_number, :last_position, :created_at, :updated_at
json.url contact_url(contact, format: :json)
