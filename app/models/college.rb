class College < ApplicationRecord
  belongs_to :university
  has_one :dean
  has_many :departments
  validates :name, presence: { message: "El nombre del colegio no puede ser vacio"}
end
