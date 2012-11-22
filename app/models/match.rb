# == Schema Information
#
# Table name: matches
#
#  id          :integer          not null, primary key
#  sender_id   :integer
#  receiver_id :integer
#  is_match    :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Match < ActiveRecord::Base
  belongs_to :sender, :class_name => 'User', :foreign_key => 'sender_id'
  belongs_to :receiver, :class_name => 'User', :foreign_key => 'receiver_id'
end
