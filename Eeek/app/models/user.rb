class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :contacts
  has_many :uploads

  after_create :complimentary_goodstuff

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
  end


end
