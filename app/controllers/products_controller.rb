class ProductsController < ApplicationController
	include ProductsHelper

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		@product.save

		flash.notice = "Product '#{@product.name}' Created!"

		
		redirect_to product_path(@product)
	end

	def show
		@product = Product.find(params[:id])
	end
end
