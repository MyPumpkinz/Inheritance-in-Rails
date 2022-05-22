class Contact < ApplicationRecord
  scope :friends, -> { where(type: 'Friend') }
  scope :teachers, -> { where(type: 'Teacher') }
end
