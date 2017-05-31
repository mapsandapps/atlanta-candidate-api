class Api::DistrictsController < Api::ApiController
  helper AddressHelper



  def show
    @candidates = Office.where(district_id: params[:id]).first.candidates
    render :show
  end
end