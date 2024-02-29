class ShirtsController < ApplicationController

  def new
    @shirt = Shirt.new
  end

  def create
    shirt = Shirt.new(shirt_params)
    shirt.user_id = current_user.id
    if shirt.save!
      redirect_to shirts_path
    else
      render :new, status: :unprocessable_entity
    end
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

  private

  def shirt_params
    params.require(:shirt).permit(:team, :gender, :size, :price)
  end
end
