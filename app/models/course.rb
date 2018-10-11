class Course < ApplicationRecord
  belongs_to :department
  has_many :sections
  validates :difficulty, numericality: { greater_than: 5, less_than: 11 }
end
