class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :meetings
  has_many :active_attends, class_name: 'Attend', foreign_key: 'attendee_id', dependent: :destroy
  has_many :attending, through: :active_attends, source: :attended_meeting
  has_many :active_favorites, class_name: 'Favorite', foreign_key: 'lover_id', dependent: :destroy
  has_many :favorite_meetings, through: :active_favorites, source: :favorite_meeting

  def attend(meeting)
    active_attends.create(attended_meeting_id: meeting.id)
  end

  def unattend(meeting)
    active_attends.find_by(attended_meeting_id: meeting.id).destroy
  end

  def attending?(meeting)
    attending.include?(meeting)
  end

  def upcoming_meetings
    meetings.where('date > ?', Time.now)
  end

  def past_meetings
    meetings.where('date < ?', Time.now)
  end

  def add_to_favorites(meeting)
    active_favorites.create(favorite_meeting_id: meeting.id)
  end

  def remove_from_favorites(meeting)
    active_favorites.find_by(favorite_meeting_id: meeting.id).destroy
  end

  def has_favorite?(meeting)
    favorite_meetings.include?(meeting)
  end
end
