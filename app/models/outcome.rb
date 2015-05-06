# == Schema Information
#
# Table name: outcomes
#
#  id            :integer          not null, primary key
#  curriculum_id :integer
#  text          :string(255)      not null
#  description   :text
#  created_at    :datetime
#  updated_at    :datetime
#

class Outcome < ActiveRecord::Base

  has_and_belongs_to_many :educational_objectives
  has_many :scores
end
