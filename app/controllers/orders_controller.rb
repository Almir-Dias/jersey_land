class OrdersController < ApplicationController
  

  def index
    @orders = current_user.orders.includes(:shirt)
  end
end
