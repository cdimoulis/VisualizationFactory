# == Schema Information
#
# Table name: curriculums
#
#  id         :integer          not null, primary key
#  text       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Curriculum < ActiveRecord::Base
end
