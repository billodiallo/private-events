require 'rails_helper'
require 'spec_helper'

RSpec.describe Event, type: :model do
  it 'hasn t a title,description,location,date' do
    event1 = Event.new(title: '', description: '', location: '', date: '', user_id: '', creator_id: '')
    expect(event1.valid?).to be(false)
  end
  describe 'ActiveRecord associations' do
    it 'belongs to crator' do
      expect { should belongs_to(creator) }
    end
    it 'has many visitors' do
      expect { should has_many(visitors).dependent }
    end
    it ' has many attendees' do
      expect { should has_many(attendees).through }
    end
  end
end
