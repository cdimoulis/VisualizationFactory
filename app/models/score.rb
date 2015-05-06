# == Schema Information
#
# Table name: scores
#
#  id                  :integer          not null, primary key
#  scheduled_course_id :integer          not null
#  outcome_id          :integer          not null
#  degree_type         :string(255)
#  score               :decimal(, )      not null
#  created_at          :datetime
#  updated_at          :datetime
#

class Score < ActiveRecord::Base
  belongs_to :scheduled_course
  belongs_to :outcome
end
