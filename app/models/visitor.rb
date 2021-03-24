class Visitor < ApplicationRecord
  # belongs_to :user
  # belongs_to :event
  belongs_to :attendee, class_name: 'User'
  belongs_to :attended_event, class_name: 'Event'
end
