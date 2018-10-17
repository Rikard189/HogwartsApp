class Professor < ApplicationRecord
  has_many :sections
  has_one :chaired, class_name: "Department"
  belongs_to :department
  validates :salary, numericality: { less_than: 1 }
  validate :is_chavorruco_and_buena_onda

  def is_chavorruco_and_buena_onda
    if is_chavorruco && !buena_onda
      errors.add(:is_chavorruco, "Tienes que ser buena onda para ser chavorruco")
    end
  end
end
