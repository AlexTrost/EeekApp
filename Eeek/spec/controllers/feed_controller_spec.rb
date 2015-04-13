require 'rails_helper'

RSpec.describe FeedController, :type => :controller do


	describe 'feed#index' do 
		login_user
		it 'returns a succesful status when user is logged in' do
			get :index
			expect(response.status).to eq(200)
		end
		it 'renders the correct html page' do 
			get :index
			expect(response).to render_template("index")
		end
	end

	describe 'feed#index (no sign in)' do
		it 'returns a redirect status when user is not logged in' do
			get :index
			expect(response.status).to eq(302)
		end
	end

end