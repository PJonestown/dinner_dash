require 'rails_helper'


describe Product do 

	before do 
		@product = FactoryGirl.create(:product)
	end

	it "has a valid factory" do 
		expect(@product).to be_valid
	end

	it "is invalid without a name" do 
		factory = FactoryGirl.build(:product, name: nil)
		expect(factory).not_to be_valid
	end

	it "is invalid if name taken" do 
		product_with_same_name = FactoryGirl.build(:product, :name=> @product.name.upcase)
		expect(product_with_same_name).not_to be_valid
	end

	it "is invalid if name is an empty string" do 
		factory =FactoryGirl.build(:product, name: ' ')
		expect(factory).not_to be_valid
	end

	it "is invalid without a description" do
		factory = FactoryGirl.build(:product, description: nil)
		expect(factory).not_to be_valid
	end

	it "is invalid without a price" do 
		factory = FactoryGirl.build(:product, price: nil)
		expect(factory).not_to be_valid
	end

	it "is invalid with a negative price" do 
		factory = FactoryGirl.build(:product, price: -24.32)
		expect(factory).not_to be_valid
	end
end