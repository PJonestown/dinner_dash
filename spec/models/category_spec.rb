require 'spec_helper'

describe Category do
  before do 
  	@category = FactoryGirl.create(:category)
  end

  it "should be valid" do 
  	@category.valid?
  end

  it "should be invalid if name blank" do 
  	FactoryGirl.build(:category, name:nil).should_not be_valid
  end
end
