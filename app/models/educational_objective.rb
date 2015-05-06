# == Schema Information
#
# Table name: educational_objectives
#
#  id            :integer          not null, primary key
#  curriculum_id :integer
#  text          :string(255)
#  description   :text
#  created_at    :datetime
#  updated_at    :datetime
#

class EducationalObjective < ActiveRecord::Base

  has_and_belongs_to_many :outcomes

end
