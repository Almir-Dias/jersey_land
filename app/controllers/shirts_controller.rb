class ShirtsController < ApplicationController

  






















 
 
 
  def index
    @shirts = Shirt.all
  end

  def show
    @shirt = Shirt.find(params[:id])
  end
end
