class Univ < ApplicationRecord
  has_many :users

  validates :name, presence: true
  validates_uniqueness_of :name, :message => '%{value} has already been taken'
end
