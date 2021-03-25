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
    it 'belongs to attended event' do
      expect { should belongs_to(:attendee).class_name('User').foreign_key('user_id') }
    end
    it 'belongs_to attendee' do
      expect { should belongs_to(:attended_event).class_name('Event').foreign_key('event_id') }
    end
  end
end
