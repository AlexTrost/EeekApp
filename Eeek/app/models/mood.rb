class Mood < ActiveRecord::Base
	
	validates :scale, presence: :true
	belongs_to :user


end