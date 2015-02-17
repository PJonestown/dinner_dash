class Product < ActiveRecord::Base
	validates :name, :presence => { :message => " - Name cannot be blank!"},
									 :uniqueness => {:case_sensitive => false}

	validates :description, :presence => { :message => " - Description cannot be blank!"}

	validates :price, :presence => { :message => " - Price cannot be blank!" },
						:numericality => { :greater_than_or_equal_to => 0  }

	has_many :categorizations
	has_many :categories, through: :categorizations

end
