class Department < ApplicationRecord
  belongs_to :college
  has_many :professors
  has_many :courses
  has_many :students
  validates :description, length: { maximum: 2000 }
end
