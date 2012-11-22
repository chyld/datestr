# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  filename   :string(255)
#  is_primary :boolean
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ActiveRecord::Base
  belongs_to :user
  mount_uploader :filename, PhotoUploader
  default_scope order(:id)
end
