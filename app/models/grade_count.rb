# == Schema Information
#
# Table name: grade_counts
#
#  id                  :integer          not null, primary key
#  scheduled_course_id :integer
#  degree_type         :string(255)
#  a                   :integer
#  b                   :integer
#  c                   :integer
#  d                   :integer
#  f                   :integer
#  created_at          :datetime
#  updated_at          :datetime
#

class GradeCount < ActiveRecord::Base

  belongs_to :scheduled_course
end
