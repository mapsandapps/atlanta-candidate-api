class Api::V1::DistrictsController < Api::ApiController
  helper AddressHelper

  def index
    @district_id = params[:address] ? Office.find_district_from_address(params[:address]) : nil
    render :index
  end
end