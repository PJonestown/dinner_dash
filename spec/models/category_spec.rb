require 'rails_helper'

describe Category do
  before do 
  	@category = FactoryGirl.create(:category)
  end

  it "should be valid" do 
  	@category.valid?
  end

  it "should be invalid if name blank" do 
  	factory = FactoryGirl.build(:category, name:nil)
  	expect(factory).not_to be_valid
  end
end
