class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :meetings
  has_many :active_attends, class_name: 'Attend', foreign_key: 'attendee_id', dependent: :destroy

  has_and_belongs_to_many :attended_meetings, class_name: 'Meeting'
end
