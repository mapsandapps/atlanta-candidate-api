class Candidate < ApplicationRecord
  has_many :issues
  has_many :mediums
  belongs_to :office

  def full_name
    "#{first_name} #{last_name}"
  end
end