module ProductsHelper

	def product_params
		params.require(:product).permit(:name, :description, :price, :category_list)
	end

end
