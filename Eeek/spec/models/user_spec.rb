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
	end


end
