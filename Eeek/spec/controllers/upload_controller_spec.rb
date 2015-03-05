require 'rails_helper'

RSpec.describe UploadsController, :type => :controller do

	describe 'upload#index' do
		login_user
    it 'returns a succesful status' do 
      get :index
      expect(response.status).to eq(200)
    end
    it 'renders the correct html page' do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "upload#index (not logged in)" do 
  	it "returns a redirect status" do 
  		get :index
  		expect(response.status).to eq(302)
  	end
  end

end
