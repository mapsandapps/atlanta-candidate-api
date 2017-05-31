class Api::CandidatesController < Api::ApiController
  helper AddressHelper

  def index
    @offices = Office.all
    if (params[:citywide] && params[:address])
      @district_id = AddressHelper.get_district_from_address(params[:address])
      @offices = Office.where(district_id: @district_id).or(Office.where(district_id: nil))
    else
      if (params[:citywide])
        @offices = Office.where(district_id: nil)
      end

      if (params[:address])
        district = AddressHelper.get_district_from_address(params[:address])
        @offices = []
        @district_id = district
        if district
          @offices = Office.where(district_id: district)
        end
      end
    end

    render :index
  end
end