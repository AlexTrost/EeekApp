class Mood < ActiveRecord::Base
	
	validates :scale, presence: :true
	validates :contact_name, presence: true
	belongs_to :user


end