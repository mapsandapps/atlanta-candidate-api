class Api::CandidatesController < Api::ApiController
  helper AddressHelper

  def show
    @candidate = Candidate.find(params[:id])
    render :show
  end
end
