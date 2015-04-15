require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  describe 'user#index' do 
    it 'renders the index view' do 
      get :index
      expect(response).to render_template("index")
    end
    it 'returns a successful status code' do 
      expect(response.status).to be(200)
    end
  end

  describe 'user#index (signed in)' do 
    login_user
    it 'redirects if user is already signed in' do 
      get :index
      expect(response.status).to be(302)
    end
  end

  # describe 'user#login' do 
  #   it 'redirects upon successful login' do 
  #   User.create(name: "Alex", email: "Alex@alex.alex", password: "Alexissocool")
  #     post :login, :user => {email: "Alex@alex.alex", password: "Alexissocool"}
  #       expect(response.status).to eq(302)
  #   end
  # end

  # describe 'user#create' do
  #   it 'redirects upon successful new user creation' do 
  #     post :create, :user => attributes_for(:user)
  #       expect(response.status).to eq(302)
  #   end
  #   it 'creates new user with valid parameters' do
  #     expect {
  #       post :create, :user => attributes_for(:user)
  #       expect(response)
  #     }.to change { User.count }.by(1)
  #   end
  #   it "does not create with missing name field" do
  #     expect {
  #       post :create, :user => { :email => "sup@sup.sup", :password => "h1h1h1h1"}
  #       expect(response)
  #     }.to_not change { User.count }
  #   end
  #   it "does not create with missing email field" do
  #     expect {
  #       post :create, :user => { :name => "hohoho", :password => "h1h1h1h1"}
  #       expect(response)
  #     }.to_not change { User.count }
  #   end
  #   it "does not create with invalid email field" do
  #     expect {
  #       post :create, :user => { :name => "hohoho", :email => "invalid", :password => "h1h1h1h1"}
  #       expect(response)
  #     }.to_not change { User.count }
  #   end
  #   it "does not create with missing password field" do
  #     expect {
  #       post :create, :user => { :name => "Hi", :email => "h1h1h1h1@email.com"}
  #       expect(response)
  #     }.to_not change { User.count }
  #   end
  # end

end
