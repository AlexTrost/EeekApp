FactoryGirl.define do
  factory :user do
    name { "Alex" }
    email { "Alex@alex.alex" }
    password { "Alexissocool" }
  end

  factory :text_upload do 
  	name { "Text" }
  	text { "Text upload" }
  end
  
end