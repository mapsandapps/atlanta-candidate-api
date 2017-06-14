class Candidate < ApplicationRecord
  belongs_to :office

  def full_name
    "#{first_name} #{last_name}"
  end
end
