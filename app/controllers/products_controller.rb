class ProductsController < ApplicationController

  def index
  end

  def show
    @products = Product.order(:id)
    respond_to do |format|
      format.html
      # format.csv { render text: @products.to_csv} # render at page
      format.csv { send_data @products.to_csv, filename: 'products.csv'}
      # format.xls { send_data @products.to_csv(col_sep: "\t") }
    end
  end

  def import
    Product.import(params[:file])
    redirect_to root_url, notice: "Products imported."
  end
end
