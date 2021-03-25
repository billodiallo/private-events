require 'rails_helper'
require 'spec_helper'

RSpec.describe Visitor, type: :model do
  it 'validations' do
    expect { should validate_presence_of(attendee_id) }
  end
end
describe 'ActiveRecord associations' do
  it 'has many created_events' do
    expect { should has_many(created_events) }
  end
  context 'Associations' do
    it { should belong_to(:attendee).class_name('User') }
    it { should belong_to(:attended_event).class_name('Event') }
  end
end
