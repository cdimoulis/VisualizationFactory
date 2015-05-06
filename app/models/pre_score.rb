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

class PreScore < ActiveRecord::Base
  belongs_to :scheduled_course
  belongs_to :pre_assessment
end
