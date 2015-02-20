require 'spec_helper'

describe Categorize do
  let (:categorize) do 
  	Categorize.new(category_id: 1, product_id: 1)
  end

  it 'should be valid' do 
  	expect(categorize).to be_valid
  end
end
