require 'rails_helper'


describe Product do 

	before do 
		@product = FactoryGirl.create(:product)
	end

	it "has a valid factory" do 
		@product.should be_valid
	end

	it "is invalid without a name" do 
		FactoryGirl.build(:product, name: nil).should_not be_valid
	end

	it "is invalid if name taken" do 
		product_with_same_name = FactoryGirl.build(:product, :name=> @product.name.upcase)
		product_with_same_name.should_not be_valid
	end

	it "is invalid if name is an empty string" do 
		FactoryGirl.build(:product, name: ' ').should_not be_valid
	end

	it "is invalid without a description" do
		FactoryGirl.build(:product, description: nil).should_not be_valid
	end

	it "is invalid without a price" do 
		FactoryGirl.build(:product, price: nil).should_not be_valid
	end

	it "is invalid with a negative price" do 
		FactoryGirl.build(:product, price: -24.32).should_not be_valid
	end
end