class Api::V1::DistrictsController < Api::ApiController
  helper AddressHelper

  def index
    search_result = nil
    if params[:address]
      search_result = Office.find_district_from_address(params[:address])
      @search_result = params[:address] ? Office.find_district_from_address(params[:address]) : nil
    end

    render :index if search_result
  end
end