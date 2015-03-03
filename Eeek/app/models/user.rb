class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :contacts
  has_many :uploads

  after_validation :complimentary_goodstuff

  def complimentary_goodstuff
    p "8" * 80
    Upload.create(user_id: self.id, name:"on the house", text: "You've got a great while.")
  end


end
