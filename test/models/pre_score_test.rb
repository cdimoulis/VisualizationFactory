# == Schema Information
#
# Table name: pre_scores
#
#  id                  :integer          not null, primary key
#  scheduled_course_id :integer
#  pre_assessment_id   :integer
#  score               :decimal(, )
#  created_at          :datetime
#  updated_at          :datetime
#

require 'test_helper'

class PreScoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
