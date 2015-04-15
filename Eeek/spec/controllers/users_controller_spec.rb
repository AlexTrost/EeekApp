require 'rails_helper'

RSpec.describe UsersController, :type => :controller do


  describe 'user#login' do 
    before(:each) do 
      User.create(name: "Alex", email: "Alex@alex.alex", password: "Alexissocool")
    end
    it 'redirects upon successful login' do 
      post :login, :user => {email: "Alex@alex.alex", password: "Alexissocool"}
      expect(response.status).to eq(302)
    end
  end

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
