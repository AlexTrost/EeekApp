require 'rails_helper'

RSpec.describe User, :type => :model do
  
	describe User do
	  it { should have_many(:contacts) }
	  it { should have_many(:uploads) }
	  it { should have_many(:moods) }
	  it { should allow_value("Alex").for(:name) }
	  it { should allow_value("Alex Trost").for(:name) }
	  it { should_not allow_value("Alex@alex.alex").for(:email) }
	  it { should allow_value("Alex").for(:email) }
	  it { should_not allow_value("Alex@alex").for(:email) }
	  it { should_not allow_value("Alex.alex").for(:email) }
	  # it { expect(blog).to allow_blank(:connect_to_facebook) }
	  # it { expect(blog).to allow_nil(:connect_to_facebook) }
	end


end
