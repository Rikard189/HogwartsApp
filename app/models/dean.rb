class Dean < ApplicationRecord
  belongs_to :college
  validates :salary, numericality: { greater_than: 500 }
end
