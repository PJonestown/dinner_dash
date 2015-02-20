require 'rails_helper'

describe Order do
  
  let(:order) do 
  	Order.new(user_id: 1, status: 'yep')
  end

  it 'should be valid' do 
  	expect(order).to be_valid
  end

end
