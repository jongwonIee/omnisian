class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def show
    @products = Order.find(params[:id]).products
    respond_to do |format|
      format.html
      # format.csv { render text: @products.to_csv} # render at page
      format.csv { send_data @products.to_csv, filename: 'products.csv'}
      format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end
  end

  def new
    @order = Order.new
  end

  def create
    order = Order.new(order_params)
    order.user = current_user
    order.save

    redirect_to orders_path
  end

  def import
    Product.import(params[:file])
    redirect_to root_url, notice: "Products imported."
  end


  private

  def order_params
    params.require(:order).permit(:user_id, :length, :navercafe, :dcinside, :twitter, :keyword)
  end

end
