class Category < ActiveRecord::Base
	validates :name, :presence => { :message => "Category name cannot be blank!"}
	has_many :categorizes
	has_many :products, through: :categorizes

	def to_s
		name
	end
end
