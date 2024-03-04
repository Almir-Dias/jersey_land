class ShirtsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @shirt = Shirt.new
  end

  def create
    @shirt = Shirt.new(shirt_params)
    @shirt.user_id = current_user.id
    if @shirt.save
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
    if @shirt.update(shirt_params)
      redirect_to shirt_path(@shirt)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @shirt = Shirt.find(params[:id])
    @shirt.destroy
    redirect_to shirts_path
  end

  def index
    @shirts = Shirt.where.not(user: current_user)
  end

  def show
    @shirt = Shirt.find(params[:id])
   
  end

  def my_shirts
    @shirts = Shirt.where(user: current_user)
  end
  
  private

  def shirt_params
    params.require(:shirt).permit(:team, :gender, :size, :price, :photo)
  end
end
