class Category < ActiveRecord::Base
	validates :name, :presence => { :message => "Category name cannot be blank!"}
	has_many :categorizations
	has_many :products, through: :categorizations
end
