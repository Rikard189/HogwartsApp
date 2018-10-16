class Department < ApplicationRecord
  belongs_to :college
  belongs_to :chair_professor, class_name: "Professor", foreign_key: "professor"
  has_many :professors
  has_many :courses
  has_many :students
  validates :description, length: { maximum: 2000 }
end
