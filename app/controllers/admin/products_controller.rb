class Admin::ProductsController < ApplicationController
  def index
    
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end
    
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path
    end
  end
  
  private
  def product_params
    params.require(:product).permit(:product_name,:product_introduction,:product_price)
  end
end
