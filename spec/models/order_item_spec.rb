require 'spec_helper'

describe OrderItem do
 let(:order_item) do 
 	OrderItem.new(product_id: 1, order_id: 1, quantity: 1)
 end

 it 'should be valid' do 
 	expect(order_item).to be_valid
 end
end
