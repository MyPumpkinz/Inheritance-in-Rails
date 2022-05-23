class User < ApplicationRecord
  belongs_to :univ
  has_many :friends, class_name: 'Friend'
  has_many :teachers, class_name: 'Teacher'

  validates :first_name, presence: { message: "must be given please" }
  validates :last_name, presence: { message: "must be given please" }
  validates :email, presence: { message: "must be given please" }
  validates :address, presence: { message: "must be given please" }
end
