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
    it 'assigns @uploads to Uploads.all' do 
    	get :index
    	expect(assigns(:uploads)).to eq Upload.where(user_id: 1) #unsure how to reference id of user logged in. might need to change this later if another user is added to test.
    end
    it 'assigns @user_uploads to all uploads uploaded by user' do 
    	get :index
    	expect(assigns(:user_uploads)).to eq Upload.where(complimentary: nil)
  	end
  	it 'assigns @complimentary_uploads '

 


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
  	# it "creates a new text upload with valid params" do 
  	# 	get :new, {name: "test", text: "this is a test"}
  	# 	expect(Upload.count).to change_by(1)
  	# end
  end

end
