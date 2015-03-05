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

  describe "when not logged in" do 
  	it "upload#index returns a redirect status" do 
  		get :index
  		expect(response.status).to eq(302)
  	end
  	it "upload#new returns a redirect status" do 
  		get :new
  		expect(response.status).to eq(302)
  	end
  	it "upload#create returns a redirect status" do 
  		get :create
  		expect(response.status).to eq(302)
  	end
  	it "upload#destroy returns a redirect status" do 
  		get :destroy
  		expect(response.status).to eq(302)
  	end
  end

  describe "upload#new" do
		login_user 
  	it "returns a successful status" do 
  		xhr :get, :new
			expect(response.status).to eq(200)
  	end
  end

end
