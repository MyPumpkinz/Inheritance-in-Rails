class Contact < ApplicationRecord
  scope :friends, -> { where(type: 'Friend') }
  scope :teachers, -> { where(type: 'Teacher') }

  validates :name, presence: true
  validates_uniqueness_of :name, :message => '%{value} has already been taken'
  validates :email, presence: { message: "must be given please" }
  validates :phone, presence: { message: "must be given please" }
end
