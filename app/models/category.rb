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

class Category < ActiveRecord::Base
end
