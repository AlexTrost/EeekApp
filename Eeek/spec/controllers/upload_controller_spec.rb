






require 'rails_helper'
# require 'carrierwave/test/matchers'
# require 'support/fog_helper'

# describe ImageFileUploader do
#   include CarrierWave::Test::Matchers

#   before do
#     ImageFileUploader.enable_processing = true
#     @user = Factory(:user, :email => "photo_taker@example.edu")
#     @uploader = ImageFileUploader.new(@user, Factory(:image))
#     @uploader.store!(File.open("#{Rails.root}/tmp/uploads/#{Rails.env}/images/"))
#   end

#   after do
#     @uploader.remove!
#     ImageFileUploader.enable_processing = false
#   end

#   context 'the tiny version' do
#     it "should scale down a landscape image to be exactly 50 by 50 pixels" do
#       @uploader.tiny.should have_dimensions(50, 50)
#     end
#   end  
# end

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

  before(:each) do
    request.env["HTTP_REFERER"] = "where_i_came_from"
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
        post :create, :upload => {text: "huo", attatchment: 
          nil}
      }.to change { Upload.count }.by(1)
    end
    it 'does not create new upload when no upload parameters passed' do
      expect {
        post :create, :upload => {text: nil, attatchment: 
          nil}
      }.to_not change { Upload.count }
    end
    

  end

  before(:each) do 
    @upload = Upload.create!(text: "hehehe", user_id: 2)
  end

  describe "upload#destroy" do
    login_user 
    it 'assigns @uploads to the upload from the parameter' do 
        delete :destroy, :id => @upload
      expect(assigns(:upload)).to eq @upload
    end
    it 'delete article ' do
      expect {
        delete :destroy,:id => @upload.id      
      }.to change{Upload.count}.by(-1)
    end
  end

end
