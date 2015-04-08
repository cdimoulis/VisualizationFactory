# == Schema Information
#
# Table name: scheduled_courses
#
#  id            :integer          not null, primary key
#  course_id     :integer          not null
#  semester      :string(255)      not null
#  year          :integer          not null
#  instructor_id :integer
#  initial_bs    :integer          default(0)
#  final_bs      :integer          default(0)
#  initial_ba    :integer          default(0)
#  final_ba      :integer          default(0)
#  created_at    :datetime
#  updated_at    :datetime
#

class ScheduledCourse < ActiveRecord::Base
  has_many :scores
  belongs_to :course
  belongs_to :instructor
end
