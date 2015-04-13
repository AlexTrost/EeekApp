require 'rails_helper'

RSpec.describe UploadsController, :type => :controller do

  describe "when not logged in" do 
  	it "upload#new returns a redirect status" do 
  		get :new
  		expect(response.status).to eq(302)
  	end
  	it "upload#create returns a redirect status" do 
  		get :create
  		expect(response.status).to eq(302)
  	end
  	# it "upload#destroy returns a redirect status" do 
  	# 	get :destroy
  	# 	expect(response.status).to eq(302)
  	# end
  end
	
  describe "upload#new" do
		login_user 
  	it "returns a successful status" do 
  		xhr :get, :new
			expect(response.status).to eq(200)
  	end
  end

  describe "upload#create" do 
		login_user 
  	it 'creates new upload with valid parameters' do
      expect {
        post :create, :upload => {text: "huo"}
      }.to change { Upload.count }.by(1)
    end
  end

  describe "upload#destroy" do
		login_user 
    it 'deletes uploads' do 
      @upload = Upload.create(text: "bleeehh")
    	delete :destroy, id: @upload.id 
    	expect(@upload).to be(nil)
  	end
  end

end
