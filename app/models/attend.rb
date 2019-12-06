class Attend < ApplicationRecord
  belongs_to :attendee, class_name: 'User'
  belongs_to :attended_meeting, class_name: 'Meeting'
end
