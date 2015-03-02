class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :contacts
  has_many :uploads

  after_create :complimentary_goodstuff

  def complimentary_goodstuff
  	Upload.create(user_id: self.id, text: "You've got a great smile.")
  end


end
