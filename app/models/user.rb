# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  tagline         :string(255)
#  age             :integer
#  gender          :string(255)
#  city            :string(255)
#  state           :string(255)
#  ethnicity       :string(255)
#  description     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :self_initiated, :class_name => 'Match', :foreign_key => 'sender_id'
  has_many :other_initiated, :class_name => 'Match', :foreign_key => 'receiver_id'
  has_many :photos
  has_many :questions
end
