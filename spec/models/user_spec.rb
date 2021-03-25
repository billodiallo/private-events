require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  it 'validates email and password' do
    user = User.new( email: '' ,password:'')
    expect(user.valid?).to be(false)
  end
  it 'validates  email and password' do
    user = User.new( email: 'andrei@gmail.com' ,password:'123456')
    expect(user.valid?).to be(true)
  end
end