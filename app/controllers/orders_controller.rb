class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.includes(:shirt)
  end

  def create
    order = Order.new(shirt_id: params[:shirt_id], user_id: current_user.id)
    order.save
    redirect_to orders_path
  end
end
