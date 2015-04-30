# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string(255)
#  instructor :string(255)
#  semester   :string(255)
#  school     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Course < ActiveRecord::Base
  belongs_to :user
  has_many :notes
  validates :user_id, :name, presence: true
  validate :validate_user_id 
  
  private
  
  def validate_user_id
    errors.add(:user_id, "is invalid") unless User.exists?(self.user_id)
  end

end
