class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def show
    @products = Order.find(params[:id]).products
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

  private

  def order_params
    params.require(:order).permit(:user_id, :length, :navercafe, :dcinside, :twitter, :keyword)
  end

end
