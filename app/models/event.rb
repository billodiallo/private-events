class Event < ApplicationRecord
  belongs_to :user
  has_many :attendances
  scope :past, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date >= ?', Date.today) }
end
