require 'rails_helper'

RSpec.describe HomeController, :type => :controller do

	describe "home#index" do 
		login_user
		it "returns successful status if user is logged in" do 
			get :index
			expect(response.status).to eq(200)
		end
	end

	describe 'home#index (not logged in)' do 
		it "returns a redirect if user isn't logged in" do 
			get :index
			expect(response.status).to eq(302)
		end
	end

end
