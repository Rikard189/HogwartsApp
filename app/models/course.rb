class Course < ApplicationRecord
  belongs_to :department
  validates :difficulty, numericality: { greater_than: 5, less_than: 11 }
end
