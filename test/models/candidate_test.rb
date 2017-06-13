require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  class DroppedOutTest < CandidateTest

    test 'has an attribute for is_dropped_out' do
      c = Candidate.new
      assert_respond_to c, :is_dropped_out
    end

    test 'default value of is_dropped_out is false' do
      c = Candidate.new
      assert_equal c.is_dropped_out, false
    end

  end

end
