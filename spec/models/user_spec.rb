require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  it 'validates email and password' do
    user = User.new( email: '' ,password:'')
    expect(user.valid?).to be(false)
  end
  it 'validates  email and password' do
    user1 = User.new( email: 'andrei@gmail.com' ,password:'123456')
    expect(user1.valid?).to be(true)
  end
  it 'return false if user password is less the 6' do
    user2 = User.new(email: 'billo@gmail.com', password: '12345')
    expect(user2.valid?).to be(false)
  end
  describe 'ActiveRecord associations' do
    it 'has many created_events' do
      expect{should has_many(created_events)}
    end
    it 'has many visitors' do
      expect{should has_many(visitors).with_foreign_key}
    end
    it 'has many attended_events' do
      expect{should has_many(attended_events).through(visitors)}
    end
  end
end

