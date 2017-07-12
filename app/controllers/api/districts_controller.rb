class Api::DistrictsController < Api::ApiController

  def index
    @district_id = params[:address] ? Office.find_district_from_address(params[:address]) : nil
    render :index
  end
end