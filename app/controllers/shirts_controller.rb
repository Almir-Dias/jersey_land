class ShirtsController < ApplicationController
  def edit
    @shirt = Shirt.find(params[:id])
  end

  def update
  end

  def index
    @shirts = Shirt.all
  end

  def show
    @shirt = Shirt.find(params[:id])
  end
end
