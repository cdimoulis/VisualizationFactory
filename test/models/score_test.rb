# == Schema Information
#
# Table name: scores
#
#  id              :integer          not null, primary key
#  sched_course_id :integer          not null
#  outcome_id      :integer          not null
#  score           :decimal(, )      not null
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class ScoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
