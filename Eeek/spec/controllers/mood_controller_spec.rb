require 'rails_helper'

RSpec.describe MoodController, :type => :controller do 

	before(:each) do
    request.env["HTTP_REFERER"] = "where_i_came_from"
  end

	describe 'mood#create' do 
		login_user
		it "creates a new mood with all and valid parameters" do 
			expect {
			post :create, :scale => 4, :mood => { :notes => "this is a test note" }
			}.to change { Mood.count }.by(1)
		end
		it "creates a new mood with no note parameter passed" do
			expect {
				post :create, :scale => 4, :mood => {:notes => nil}
				}.to change { Mood.count }.by(1)
		end
		it "does not create a new mood with no scale but yes notes" do 
			expect {
				post :create, :scale => nil, :mood => { :notes => "this is going to fail."}
			}.to_not change { Mood.count }
		end
		it "does not create a new mood with no scale and no notes" do 
			expect {
				post :create, :scale => nil, :mood => { :notes => nil}
			}.to_not change { Mood.count }
		end
	end

end
