class Admin::ProductsController < ApplicationController
  def index
    
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end
    
  
  def create
    @product = Product.new(product_params)
     @product.save
      redirect_to admin_products_path
    
  end
  
  private
  def product_params
    params.require(:product).permit(:product_name,:product_introduction,:product_price,:product_image)
  end
end
