# == Schema Information
#
# Table name: categories
#
#  id            :integer          not null, primary key
#  curriculum_id :integer
#  text          :string(255)      not null
#  description   :text
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
