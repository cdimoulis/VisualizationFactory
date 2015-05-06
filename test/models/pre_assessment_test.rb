# == Schema Information
#
# Table name: pre_assessments
#
#  id            :integer          not null, primary key
#  curriculum_id :integer
#  text          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class PreAssessmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
