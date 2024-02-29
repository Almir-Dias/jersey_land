class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)

  end

  def create
    order = Order.new(shirt_id: params[:shirt_id], user_id: current_user.id)
    order.save
    redirect_to orders_path
  end
end
