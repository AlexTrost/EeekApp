require 'rails_helper'

RSpec.describe Contact, :type => :model do

	it { should belong_to(:user) }

	it { should allow_value("Alex").for(:contact_name) }
	it { should_not allow_value("").for(:contact_name) }

	it { should allow_value("1234567890").for(:phone_number) }
	it { should_not allow_value("asdfghjklo").for(:phone_number) }
	it { should_not allow_value("").for(:phone_number) }
	it { should_not allow_value("12345678").for(:phone_number) }
	it { should_not allow_value("12345678901").for(:phone_number) }

end
