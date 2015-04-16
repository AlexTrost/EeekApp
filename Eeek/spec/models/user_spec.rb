require 'rails_helper'

RSpec.describe User, :type => :model do
  
	describe User do
	  it { should have_many(:contacts) }
	  it { should have_many(:uploads) }
	  it { should have_many(:moods) }

	  it { should allow_value("Alex").for(:name) }
	  it { should allow_value("Alex Trost").for(:name) }

	  it { should allow_value("Alex@alex.alex").for(:email) }
	  it { should_not allow_value("Alex").for(:email) }
	  it { should_not allow_value("Alex@alex").for(:email) }
	  it { should_not allow_value("Alex.alex").for(:email) }
	  it { should_not allow_value("").for(:email) }

	  it { should_not allow_value("").for(:password) }
	  it { should_not allow_value("yo").for(:password)}
	  it { should allow_value("yoyoyoyoyo").for(:password)}

	  it 'lets you create a user' do
	    @user = User.create!(name: "Alex", email: "Alex@alex.alex", password: "hihihihihi")
	    expect(User.all).to include(@user)
  	end

  	it 'complimentary goodstuff fired on new users' do
	    @user = User.create!(name: "Alex", email: "Alex@alex.alex", password: "hihihihihi")
	    @user.reload
	    expect(@user.uploads.where(complimentary: "true").count).to be(12)
	  end

	end


end
