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

class Score < ActiveRecord::Base
end
