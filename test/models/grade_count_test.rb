# == Schema Information
#
# Table name: grade_counts
#
#  id                  :integer          not null, primary key
#  scheduled_course_id :integer
#  a                   :integer
#  b                   :integer
#  c                   :integer
#  d                   :integer
#  f                   :integer
#  created_at          :datetime
#  updated_at          :datetime
#

require 'test_helper'

class GradeCountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
