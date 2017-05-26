class Api::CandidatesController < Api::ApiController
  helper AddressHelper

  def index
    @offices = Office.all
    if (params[:address])
      @offices = Office.where(district_id: AddressHelper.get_district_from_address(params[:address]))
    end

    render :index
  end
end