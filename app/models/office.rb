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
  
  def self.find_by_params(params)
    offices = Office.all
    if (params[:citywide] && params[:district_id])
      offices = Office.where(district_id: params[:district_id]).or(Office.where(district_id: nil))
    else
      if (params[:citywide])
        offices = Office.where(district_id: nil)
      end

      if (params[:district_id])
        offices = Office.where(district_id: params[:district_id])
      end
    end
    return offices
  end

  def self.find_district_from_address(address)
    AddressHelper.get_district_from_address(address)
  end
end
