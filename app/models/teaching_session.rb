# == Schema Information
#
# Table name: sessions
#
#  id         :bigint(8)        not null, primary key
#  start_time :time
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tutor_id   :bigint(8)
#

class TeachingSession < ApplicationRecord
  belongs_to :tutor, class_name: :user

  has_many :questions
  has_many :interests
end