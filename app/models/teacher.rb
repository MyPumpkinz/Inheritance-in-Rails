class Teacher < Contact
  belongs_to :user
  
  validates :national_lecturer_identification_number, presence: { message: "must be given please" }
  validates :last_position, presence: { message: "must be given please" }
end