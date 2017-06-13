require 'test_helper'

class CandidatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get api_candidates_url
    assert_response :success
  end

  # test "should get new" do
  #   get new_api_candidate_url
  #   assert_response :success
  # end

  # test "should create candidate" do
  #   assert_difference('Candidate.count') do
  #     post api_candidates_url, params: { candidate: { bio: @candidate.bio, email: @candidate.email, facebook: @candidate.facebook, first_name: @candidate.first_name, instagram: @candidate.instagram, last_name: @candidate.last_name, middle_name: @candidate.middle_name, photo_url: @candidate.photo_url, website: @candidate.website } }
  #   end
  #
  #   assert_redirected_to api_candidate_url(Candidate.last)
  # end

  test "should show candidate" do
    get api_candidate_url(@candidate)
    assert_response :success
  end

  # test "should get edit" do
  #   get edit_api_candidate_url(@candidate)
  #   assert_response :success
  # end

  # test "should update candidate" do
  #   patch api_candidate_url(@candidate), params: { candidate: { bio: @candidate.bio, email: @candidate.email, facebook: @candidate.facebook, first_name: @candidate.first_name, instagram: @candidate.instagram, last_name: @candidate.last_name, middle_name: @candidate.middle_name, photo_url: @candidate.photo_url, website: @candidate.website } }
  #   assert_redirected_to api_candidate_url(@candidate)
  # end
  #
  # test "should destroy candidate" do
  #   assert_difference('Candidate.count', -1) do
  #     delete api_candidate_url(@candidate)
  #   end
  #
  #   assert_redirected_to api_candidates_url
  # end

end
