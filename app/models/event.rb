class Event < ApplicationRecord
  belongs_to :user
  scope :past, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date >= ?', Date.today) }
  has_many :visitors, class_name: 'User', foreign_key:'user_id'
end
