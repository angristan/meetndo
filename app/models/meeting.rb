class Meeting < ApplicationRecord
  belongs_to :category
  belongs_to :owner, class_name: 'User'

  has_many :attends, class_name: 'Attend', foreign_key: 'attended_meeting_id', dependent: :destroy
  has_many :attendees, through: :attends

  has_one_attached :cover_picture
end
