require 'rails_helper'

RSpec.describe Mood, :type => :model do
  
	describe Mood do
	  it { should belong_to(:user) }

	  it { should allow_value(1).for(:scale) }
	  it { should_not allow_value("").for(:scale) }

	end
end