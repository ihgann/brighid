# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  course_id  :integer
#  name       :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
