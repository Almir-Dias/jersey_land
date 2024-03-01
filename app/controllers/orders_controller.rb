class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.includes(:shirt)
  end

  # def show
  #   @order = Order.find(params[:id])
  #   @shirt = @order.shirt 
  # end

  def show
    @order = Order.find_by(id: params[:id])
  end

  def edit
    @shirt = Shirt.find(params[:id])
  end
  
  def create
    order = Order.new(shirt_id: params[:shirt_id], user_id: current_user.id)
    order.save
    redirect_to orders_path
  end

end
