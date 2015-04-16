require 'rails_helper'

RSpec.describe Upload, :type => :model do

	describe Upload do
  it { should belong_to(:user) }
	end

	it 'lets you create uploads' do
    @upload = Upload.create(text: "asdf")
    expect(Upload.all).to include(@upload)
  end



end
