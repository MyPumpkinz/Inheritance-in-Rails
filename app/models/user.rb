class User < ApplicationRecord
  belongs_to :univ
  has_many :friends, class_name: 'Friend'
  has_many :teachers, class_name: 'Teacher'
end
