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
#

class Course < ActiveRecord::Base
  belongs_to :user
  has_many :notes
  validates :user_id, :name, presence: true
end
