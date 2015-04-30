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

class Note < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  validates :user_id, :course_id, :name, :content, presence: true
  validate :validate_user_id 
  validate :validate_course_id

  private
  def validate_user_id
    errors.add(:user_id, "is invalid") unless User.exists?(self.user_id)
  end

  def validate_course_id
    errors.add(:course_id, "is invalid") unless Course.exists?(self.course_id)
  end
end
