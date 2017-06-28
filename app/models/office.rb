class Office < ApplicationRecord
  has_many :candidates

  def to_param
    slug
  end

  def slug
    name.parameterize
  end

  def self.find_by_slug(slug)
    Office.all.find{|office| office.slug == slug}
  end

  def self.find(input)
    if input.to_i != 0
      super
    else
      self.find_by_slug(input)
    end
  end
end
