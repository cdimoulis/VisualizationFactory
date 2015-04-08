# == Schema Information
#
# Table name: instructors
#
#  id            :integer          not null, primary key
#  curriculum_id :integer
#  first_name    :string(255)
#  last_name     :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Instructor < ActiveRecord::Base

  has_many :scheduled_courses
end
