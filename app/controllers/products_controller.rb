class ProductsController < ApplicationController

  def index
    @products = Product.order(:id)
  end

  def show
    @products = Product.order(:id)
  end

  def import
    Product.import(params[:file])
    redirect_to root_url, notice: "Products imported."
  end
end
