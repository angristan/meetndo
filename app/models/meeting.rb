class Meeting < ApplicationRecord
  belongs_to :category
  belongs_to :owner, class_name: 'User'

  has_many :passive_attends, class_name: 'Attend', foreign_key: "attended_meeting_id", dependent: :destroy
  has_many :attendees, through: :passive_attends, source: :attendee

  has_one_attached :cover_picture
end
