class Student < ApplicationRecord
  belongs_to :department
  validate :not_hufflepuff
  has_and_belongs_to_many :sections
  def not_hufflepuff
    if (house == "Hufflepuff")
       errors.add(:house, "We dont accept Hufflepuff")
    end
  end
end
