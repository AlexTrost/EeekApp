require 'rails_helper'

RSpec.describe DashboardController, :type => :controller do


	describe 'dashboard#index' do 
		login_user
		it 'returns a succesful status when user is logged in' do
			get :index
			expect(response.status).to eq(200)
		end
	end

	describe 'dashboard#index (no sign in)' do
		it 'returns a redirect status when user is not logged in' do
			get :index
			expect(response.status).to eq(302)
		end
	end

# describe 'upload#index' do
 #    it 'returns a succesful status' do 
 #      get :index
 #      expect(response.status).to eq(200)
 #    end
 #    it 'renders the correct html page' do
 #      get :index
 #      expect(response).to render_template("index")
 #    end
 #  end
end
