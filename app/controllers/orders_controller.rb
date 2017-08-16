class OrdersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    order = Order.new(order_params)
    order.user = current_user
    order.save

    redirect_to users_path
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :length, :navercafe, :dcinside, :twitter, :keyword)
  end

end
