# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  class_id   :integer
#  name       :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Note < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  validates :user_id, :class_id, :name, :content, presence: true
end
