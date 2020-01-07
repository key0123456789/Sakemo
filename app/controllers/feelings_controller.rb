class FeelingsController < ApplicationController

  def new
    redirect_to login_url unless user_signed_in?
    @brand = Brand.find(params[:brand_id])
    @feeling = Feeling.new
  end

  def create
    @brand = Brand.find(params[:brand_id])
    @feeling = Feeling.create(feeling_params)
    redirect_to brand_path(@brand)
  end
  
  def destroy
    @brand = Brand.find(params[:brand_id])
    feeling = Feeling.find_by(brand_id: @brand.id, user_id: current_user.id)
    feeling.destroy
    redirect_to brand_path(@brand)
  end

  def edit
    @brand = Brand.find(params[:brand_id])
    @feeling = Feeling.find_by(brand_id: @brand.id, user_id: current_user.id)
  end

  def update
    feeling = Feeling.find(params[:id])
    feeling.update(feeling_params) if feeling.user_id == current_user.id
    @brand = Brand.find(params[:brand_id])
    redirect_to brand_path(@brand)
  end

  # def show
  #   @brand = Brand.find(params[:id])
  #   @feelings = @brand.feelings.includes(:user)
  # end

  def feeling_params
    params.require(:feeling).permit(:id, :comment).merge(brand_id: params[:brand_id], user_id: current_user.id)
  end
end
