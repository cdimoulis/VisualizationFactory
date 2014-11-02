# == Schema Information
#
# Table name: scheduled_courses
#
#  id           :integer          not null, primary key
#  course_id    :integer          not null
#  semester     :string(255)      not null
#  year         :integer          not null
#  teacher      :string(255)
#  num_students :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class ScheduledCourse < ActiveRecord::Base
end
