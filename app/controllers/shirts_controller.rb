class ShirtsController < ApplicationController






























  def show
    @shirt = Shirt.find(params[:id])
  end
end
