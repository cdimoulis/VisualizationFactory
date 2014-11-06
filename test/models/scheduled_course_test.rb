# == Schema Information
#
# Table name: scheduled_courses
#
#  id           :integer          not null, primary key
#  course_id    :integer          not null
#  semester     :string(255)      not null
#  year         :integer          not null
#  teacher      :string(255)
#  num_students :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class ScheduledCourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end