class ShirtsController < ApplicationController
  def index
    @shirts = Shirt.all
  end

  def show
    @shirt = Shirt.find(params[:id])
    
  end

  private
  
  def params_shirt
    params.require(:shirt).permit(:team, :size, :gender, :price, :photo)
  end
end
