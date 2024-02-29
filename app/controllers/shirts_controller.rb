class ShirtsController < ApplicationController
  def edit
    @shirt = Shirt.find(params[:id])
  end

  def update
  end
end
