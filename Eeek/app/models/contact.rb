class Contact < ActiveRecord::Base
	validates :contact_name, presence: true
  validates :phone_number, presence: true
  validates :phone_number, format: { with: /\A\d{10}\z/i}

	belongs_to :user
end
