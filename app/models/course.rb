# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  number      :integer          not null
#  text        :string(255)      not null
#  description :text
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Course < ActiveRecord::Base
end
