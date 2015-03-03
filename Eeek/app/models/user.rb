class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :contacts
  has_many :uploads

  after_create :complimentary_goodstuff

  def complimentary_goodstuff
    Upload.create(user_id: self.id, name:"on the house", text: "You've got a great smile.", complimentary: "true")
    Upload.create(user_id: self.id, name:"on the house", text: "Animals love you.", complimentary: "true")
    Upload.create(user_id: self.id, name:"on the house", text: "Your posture is endearing.", complimentary: "true")
    Upload.create(user_id: self.id, name:"on the house", text: "You are safe.", complimentary: "true")
    Upload.create(user_id: self.id, name:"on the house", text: "Take a deep breat for every red thing you see in the room.", complimentary: "true")
    Upload.create(user_id: self.id, name:"on the house", text: "Breath in for 4 seconds, breath out for 4 seconds. Then breath in for 5 seconds, breat out for 5 seconds. Keep repeating and add a seconds each time until you can't anymore. Then repeat.", complimentary: "true")
    Upload.create(user_id: self.id, name:"on the house", text: "You aren't alone. We at Eeek are here with you.", complimentary: "true")
    Upload.create(user_id: self.id, name:"on the house", text: "You aren't crazy.", complimentary: "true")
    Upload.create(user_id: self.id, name:"on the house", text: "This too shall pass.", complimentary: "true")
    Upload.create(user_id: self.id, name:"on the house", text: "You have fantastic taste in socks.", complimentary: "true")
    Upload.create(user_id: self.id, name:"on the house", text: "Take slow sips of a cold glass of water.", complimentary: "true")
  end


end
