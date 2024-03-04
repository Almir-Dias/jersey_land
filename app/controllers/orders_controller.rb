class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.includes(:shirt)
  end

  def show
    @order = Order.find_by(id: params[:id])
  end

  def create
    @order = Order.new(shirt_id: params[:shirt_id], user_id: current_user.id)
    if @order.save
      redirect_to order_path(@order)
    else
      render :index, status: :unprocessable_entity
    end
  end
end
  # def show
  #   @order = Order.find(params[:id])
  #   @shirt = @order.shirt 
  # end

  # def edit
  #   @shirt = Shirt.find(params[:id])
  # end