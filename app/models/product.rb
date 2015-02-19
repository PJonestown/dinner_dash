class Product < ActiveRecord::Base
	validates :name, :presence => { :message => " - Name cannot be blank!"},
									 :uniqueness => {:case_sensitive => false}

	validates :description, :presence => { :message => " - Description cannot be blank!"}

	validates :price, :presence => { :message => " - Price cannot be blank!" },
						:numericality => { :greater_than_or_equal_to => 0  }

	has_many :categorizes
	has_many :categories, through: :categorizes
	has_many :order_items

	def category_list
  	categories.join(", ")
	end

	def category_list=(categories_string)
		category_names = categories_string.split(', ').collect {|s| s.strip.downcase}.uniq
		new_or_found_categories = category_names.collect {|name| Category.find_or_create_by(name: name) }
		self.categories = new_or_found_categories

	end

end
