class Api::OfficesController < Api::ApiController
  helper AddressHelper

  def index
    @offices = Office.find_by_params(params)
    render :index
  end

  def show
    @office = Office.find(params[:id])
    render :show
  end
end