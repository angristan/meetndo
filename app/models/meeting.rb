class Meeting < ApplicationRecord
  belongs_to :category
  belongs_to :owner, foreign_key: 'user_id', class_name: 'User'

  has_many :passive_attends,
           class_name: 'Attend',
           foreign_key: 'attended_meeting_id',
           dependent: :destroy
  has_many :attendees, through: :passive_attends, source: :attendee
  has_many :passive_favorites,
           class_name: 'Favorite',
           foreign_key: 'favorite_meeting_id',
           dependent: :destroy
  has_many :lovers, through: :passive_favorites, source: :lover

  has_one_attached :cover_picture

  validate :correct_cover_picture_type
  validate :event_date_is_valid_datetime

  validates :name, presence: true, length: { maximum: 128 }
  validates :description, presence: true
  validates :location, presence: true
  validates :price,
            presence: true,
            format: { with: /\A\d+(?:\.\d{0,2})?\z/ },
            numericality: { greater_than_or_equal_to: 0, less_than: 1_000_000 }
  validates :max_attendees,
            presence: true,
            numericality: { only_integer: true, :greater_than_or_equal_to => 0 }
  validates :user_id, presence: true

  private

  def event_date_is_valid_datetime
    if (begin
          DateTime.parse(event_date.to_s)
        rescue
          ArgumentError
        end) == ArgumentError
      errors.add(:event_date, 'must be a valid datetime')
    end
  end

  def correct_cover_picture_type
    if cover_picture.attached? &&
      !cover_picture.content_type.in?(%w(image/png image/jpeg image/jpg))
      errors.add(:cover_picture, 'must be a png or a jpg')
    end
  end
end
