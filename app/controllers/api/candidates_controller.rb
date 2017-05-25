class Api::CandidatesController < Api::ApiController
  def index
    @offices = Office.all
    if (params[:address])
      @offices = Office.where(district_id: get_district_from_address(params[:address]))
    end

    render :index
  end

  private
  def get_district_from_address(address)
    districts_file = File.read("#{Rails.root}/public/javascripts/districts.json")
    @districts_hash = JSON.parse(districts_file)
    location = Geocoder.search(address)[0]
    district_for_point([location.longitude, location.latitude])
  end

  def contains_point?(point, polygon)
    c = false
    i = -1
    j = polygon.size - 1
    while (i += 1) < polygon.size
      if ((polygon[i][1] <= point[1] && point[1] < polygon[j][1]) ||
          (polygon[j][1] <= point[1] && point[1] < polygon[i][1]))
        if (point[0] < (polygon[j][0] - polygon[i][0]) * (point[1] - polygon[i][1]) /
            (polygon[j][1] - polygon[i][1]) + polygon[i][0])
          c = !c
        end
      end
      j = i
    end
    return c
  end

  def district_for_point(point)
    @districts_hash['features'].each do |feature|
      district = feature['geometry']['coordinates'][0]
      if (feature['geometry']['type'].eql?('MultiPolygon'))
        district.each do |sub_district|
          if (contains_point?(point, sub_district))
            return feature['properties']['DISTRICT']
          end
        end
      else
        if (contains_point?(point, district))
          return feature['properties']['DISTRICT']
        end
      end
    end
  end
end