require 'rails_helper'

RSpec.describe MoodController, :type => :controller do 

	before(:each) do
    request.env["HTTP_REFERER"] = "where_i_came_from"
  end

	describe 'mood#create' do 
		login_user
		it "creates a new mood with all and valid parameters" do 
			expect {
			post :create, :scale => 4, :mood => { :notes => "this is a test note"}
			expect(response)
			}.to change { Mood.count }.by(1)
		end
		it "creates a new mood with no note parameter passed" do
			expect {
				post :create, :scale => 4, :mood => {:notes => nil}
				expect(response)
				}.to change { Mood.count }.by(1)
		end
	end

end
