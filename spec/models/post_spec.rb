require 'rails_helper'

RSpec.describe Post, type: :model do

  context 'Associations' do 
    it { should belong_to(:user) } 
    it { should have_many(:post_screens)}
    it { should have_many(:post_dates) }
    it { should have_one(:payment)}
    it { should have_one_attached(:content)}
  end

  context "Validations" do
    
    it 'ensure titule presence' do
      user = User.new(username: 'im here', email:'sample_p5@gmail.com', phone:'964703333', country:'PT',role:'user', password:'xxxxxx', password_confirmation:'xxxxxx')
      user.save
      post = Post.new(user_id: user.id, status: :pending, content_type: "photo", timeDuration: 4.0, unitDuration: :Months).save
      expect(post).to  eq(false)
    end

    it 'ensure user presente' do
      post = Post.new(title:"test ad", status: :pending, content_type: "photo", timeDuration: 4.0, unitDuration: :Months).save
      expect(post).to eq(false)
    end

    it 'ensure screen present' do
      user = User.new(username: 'im here', email:'sample_p12@gmail.com', phone:'964703333', country:'PT',role:'user', password:'xxxxxx', password_confirmation:'xxxxxx')
      user.save
      post = Post.new(user_id: user.id, title:"test ad", status: :pending, timeDuration: 4.0, unitDuration: :Months)
      expect(post.save).to  eq(false)
    end

    context "Save Post Successfully" do
      let(:screen) { Screen.new(name:"S1",country:"PT",location:"Lisbon", dimensions:"30x90", stream_price:50, latitude:20, longitude:30, description:"S1") } 
      it 'ensure screen' do
        expect(screen.save).to eq(true) 
      end
      it 'Save Post' do
        screen.save
        user = User.new(username: 'im here', email:'sample_p12@gmail.com', phone:'964703333', country:'PT',role:'user', password:'xxxxxx', password_confirmation:'xxxxxx')
        user.save
        post = Post.new(user_id: user.id, title:"test ad", status: :pending, timeDuration: 4.0, unitDuration: :Months, post_screens_attributes: [screen_id: screen.id])
        expect(post.save).to  eq(true)
      end
    end
    
    
  end
  
end
