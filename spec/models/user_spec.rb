require 'rails_helper'

RSpec.describe User, type: :model do
  
  context 'associations' do
    it { should have_many(:posts)}
    it { should have_many(:payments)}
  end

  context 'validation tests' do
    it 'ensure username presence' do 
      user = User.new(email:'sample1@gmail.com', phone:'964703333', role:'user', country:'PT' ).save
      expect(user).to eq(false)  
    end
    
    it 'ensure country presenve' do
      user = User.new(username: 'im here', email:'sample2@gmail.com', phone:'964703333', role:'user' ).save
      expect(user).to eq(false)
    end

    it 'ensure role presence' do
      user = User.new(username: 'im here', email:'sample3@gmail.com', phone:'964703333', country:'PT' ).save
      expect(user).to eq(false)
    end

    it 'ensure equality of password and password confirmation' do
      user = User.new(username: 'im here', email:'sample4@gmail.com', phone:'964703333', country:'PT',role:'user', password:'xxxxxx', password_confirmation:'yyyyyy').save
      expect(user).to eq(false)
    end

    it 'should save successfully' do
      user = User.new(username: 'im here', email:'sample5@gmail.com', phone:'964703333', country:'PT',role:'user', password:'xxxxxx', password_confirmation:'xxxxxx').save
      expect(user).to eq(true)
    end
  end

  context "scope tests" do
    let (:params) { {username: 'im here', phone:'964703333', country:'PT', password:'xxxxxx', password_confirmation:'xxxxxx'} }
    before(:each) do
      User.new(params.merge(email: 'user1@gmail.com')).save
      User.new(params.merge(email: 'user2@gmail.com')).save
      User.new(params.merge(role: :user, email:'user3@gmail.com')).save
      User.new(params.merge(role: :admin, email:'admin1@gmail.com')).save
      User.new(params.merge(role: :admin, email:'admin2@gmail.com')).save
    end

    it 'should return users with admin role' do
      expect(User.admin.count).to eq(2)
    end

    it 'should return users with user role' do
      expect(User.user.count).to  eq(3)
    end
  end
  
end
