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

require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
