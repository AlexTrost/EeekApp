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
		it 'assigns @user to current_user' do 
      get :index
      expect(assigns(:user)).to eq User.find(1)
    end
    it 'assigns @uploads to Uploads.all' do 
    	get :index
    	expect(assigns(:uploads)).to eq Upload.where(user_id: 1) 
    end
	end

	describe 'feed#index (no sign in)' do
		it 'returns a redirect status when user is not logged in' do
			get :index
			expect(response.status).to eq(302)
		end
	end

end
