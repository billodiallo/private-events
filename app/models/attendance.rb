# rubocop:disable Layout/EndOfLine
class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
# rubocop:enable Layout/EndOfLine
.