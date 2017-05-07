class ProductsController < ApplicationController

	def index
		@products = Product.order('id DESC').limit(10)
	end

	def new
		@product = Product.new
	end
	
	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to product_path(@product), notice: "Successfully created Product"
		else
			render action: "new"
		end
	end

	def show
		@product = Product.find(params[:id])
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update_attributes(product_params)
			redirect_to product_path(@product), notice: "Successfully updated Product"
		else
			render action: "edit"
		end
	end

	def destroy
		@product = Product.find(params[:id])
		if @product.destroy
			redirect_to products_path, notice: "Successfully deleted product"
		else
			redirect_to :back
		end
	end

	private
	def product_params
        params[:product].permit(:name , :price, :category)
    end
end
