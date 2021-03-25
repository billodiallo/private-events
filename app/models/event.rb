class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :visitors, dependent: :destroy
  has_many :attendees, through: :visitors, class_name: 'User', foreign_key: :user_id

  scope :past, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date >= ?', Date.today) }

  validates :user_id, :title, :description, :date, :location, presence: true, length: { maximum: 50 }
end
