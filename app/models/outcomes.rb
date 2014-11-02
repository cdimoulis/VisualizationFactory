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

class Outcomes < ActiveRecord::Base
end
