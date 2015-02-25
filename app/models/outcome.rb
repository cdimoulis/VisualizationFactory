# == Schema Information
#
# Table name: outcomes
#
#  id          :integer          not null, primary key
#  text        :string(255)      not null
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Outcome < ActiveRecord::Base

  has_and_belongs_to_many :educational_objectives
  
end
