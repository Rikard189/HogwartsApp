class Section < ApplicationRecord
  belongs_to :course
  belongs_to :professor
  validate :not_repollo

  def not_repollo
    if description.include?("repollo")
      errors.add(:description, "No puedes poner repollo")
    end
  end
end
