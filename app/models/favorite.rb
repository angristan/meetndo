class Favorite < ApplicationRecord
  belongs_to :lover, class_name: 'User'
  belongs_to :favorite_meeting, class_name: 'Meeting'

  validates :lover_id, presence: true
  validates :favorite_meeting_id, presence: true
end
