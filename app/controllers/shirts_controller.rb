class ShirtsController < ApplicationController

  def new
    @shirt = Shirts.new
  end

  def create
    shirt = Shirt.new(shirt_params)
    shirt.save
    redirect_to shirts_path
  end

  def edit
    @shirt = Shirt.find(params[:id])
  end

  def update
    @shirt = Shirt.find(params[:id])
    @shirt.update(shirt_params)
    redirect_to shirt_path(@shirt)
  end

  def destroy
    @shirt = Shirt.find(params[:id])
    @shirt.destroy
    redirect_to shirts_path
  end


  def index
    @shirts = Shirt.all
  end

  def show
    @shirt = Shirt.find(params[:id])
  end
end
