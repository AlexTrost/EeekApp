require 'rails_helper'

RSpec.describe LoginController, :type => :controller do 

	describe 'login#index (logged in)' do 
		login_user
		it 'redirects if user is logged in' do 
			get :index
			expect(response.status).to eq 302
		end
	end

	describe 'login#index (not logged in)' do 
		it 'returns a successful status code' do 
			get :index
			expect(response.status).to eq 200
		end
		it 'renders the correct index page' do 
			get :index
			expect(response).to render_template('index')
		end
	end

end