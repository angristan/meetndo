class Attend < ApplicationRecord
  belongs_to :attendee, class_name: 'User'
  belongs_to :attended_meeting, class_name: 'Meeting'

  validates :attendee_id, presence: true
  validates :attended_meeting_id, presence: true
end
