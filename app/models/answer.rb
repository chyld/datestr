# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  answer_text :string(255)
#  is_correct  :boolean
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Answer < ActiveRecord::Base
  belongs_to :question
end
