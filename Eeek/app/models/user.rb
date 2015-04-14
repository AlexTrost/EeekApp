class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
devise :omniauthable, :omniauth_providers => [:google_oauth2]
         
  has_many :contacts
  has_many :uploads
  has_many :moods

  after_create :complimentary_goodstuff

  # def self.from_omniauth(auth)
  #   where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
  #     user.provider = auth.provider
  #     user.uid = auth.uid
  #     user.name = auth.info.name
  #     user.oauth_token = auth.credentials.token
  #     user.oauth_expires_at = Time.at(auth.credentials.expires_at)
  #     user.save!
  #   end
  # end

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:email => data["email"]).first

    unless user
        user = User.create(
          name: data["name"],
          email: data["email"],
          password: Devise.friendly_token[0,20]
        )
    end
    
    user
end


  def complimentary_goodstuff
    Upload.create(user_id: self.id, text: "You've got a great smile.", complimentary: "true")
    Upload.create(user_id: self.id, text: "Animals love you.", complimentary: "true")
    Upload.create(user_id: self.id, text: "Your posture is endearing.", complimentary: "true")
    Upload.create(user_id: self.id, text: "You are safe.", complimentary: "true")
    Upload.create(user_id: self.id, text: "Take a deep breath for every red thing you see in the room.", complimentary: "true")
    Upload.create(user_id: self.id, text: "Breath in for 4 seconds, breath out for 4 seconds. Then breath in for 5 seconds, breath out for 5 seconds. Keep repeating. Add a second each time until you can't anymore.", complimentary: "true")
    Upload.create(user_id: self.id, text: "You aren't alone. We at Eeek are here with you.", complimentary: "true")
    Upload.create(user_id: self.id, text: "You aren't crazy.", complimentary: "true")
    Upload.create(user_id: self.id, text: "This too shall pass.", complimentary: "true")
    Upload.create(user_id: self.id, text: "You have fantastic taste in socks.", complimentary: "true")
    Upload.create(user_id: self.id, text: "Take slow sips of a cold glass of water.", complimentary: "true")
    Upload.create(user_id: self.id, text: "Try to think of 3 things that are going well in your life right now.", complimentary: "true")
  end


end
