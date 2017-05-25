class Api::CandidatesController < Api::ApiController
  def index
    @offices = Office.all
    @candidates = Candidate.all
    render :index
  end
end