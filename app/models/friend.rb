class Friend < Contact
  belongs_to :user
  
  validates :student_id_number, presence: { message: "must be given please" }
end