class Meeting < ApplicationRecord
  belongs_to :category, required: true
  belongs_to :owner, foreign_key: "user_id", class_name: 'User', required: true

  has_many :passive_attends, class_name: 'Attend', foreign_key: "attended_meeting_id", dependent: :destroy
  has_many :attendees, through: :passive_attends, source: :attendee

  has_one_attached :cover_picture
end
