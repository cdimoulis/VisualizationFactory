# == Schema Information
#
# Table name: pre_assessments
#
#  id         :integer          not null, primary key
#  text       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class PreAssessment < ActiveRecord::Base
  has_many :pre_scores
end
