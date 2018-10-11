class College < ApplicationRecord
  belongs_to :university
  has_one :dean
  has_many :departments
end
