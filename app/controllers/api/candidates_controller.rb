class Api::CandidatesController < Api::ApiController
  helper AddressHelper

  def index

  end

  def show
    @candidate = Candidate.find(params[:id])
    render :show
  end
end
