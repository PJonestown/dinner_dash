require 'faker'

FactoryGirl.define do 
	factory :product do |f|
		f.name { Faker::Commerce.product_name}
		f.description { Faker::Company.bs }
		f.price { Faker::Commerce.price}
	end
end
