class University < ApplicationRecord
  has_many :colleges
  validates :postal_code, length: { is: 6 }
end
