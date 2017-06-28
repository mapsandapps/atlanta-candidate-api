class Api::OfficesController < Api::ApiController

  def show
    @office = Office.find(params[:id])
    render :show
  end
end
