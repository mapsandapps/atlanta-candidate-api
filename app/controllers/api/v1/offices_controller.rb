class Api::V1::OfficesController < Api::ApiController

  def show
    @office = Office.find(params[:id])
    render :show
  end
end
