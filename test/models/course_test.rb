# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string(255)
#  instructor :string(255)
#  created_at :datetime
#  updated_at :datetime
#  semester   :string(255)
#  school     :string(255)
#

require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
